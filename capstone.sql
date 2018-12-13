-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 02:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `behavior`
--

CREATE TABLE `behavior` (
  `id` int(15) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) DEFAULT 'draft',
  `employee_name` varchar(200) DEFAULT NULL,
  `incident_date` datetime DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL COMMENT 'Location of the incident',
  `other_employees` varchar(200) DEFAULT NULL COMMENT 'Additional employees involved in the incident',
  `description` varchar(2000) DEFAULT NULL COMMENT 'Describe the incident in detail',
  `occurence` varchar(2000) DEFAULT NULL COMMENT 'instance number of this type of incident',
  `type` varchar(2000) DEFAULT NULL COMMENT 'Type of behavior displayed by the employee',
  `preventative_action` varchar(2000) DEFAULT NULL COMMENT 'What further action has been taken to prevent this behavior'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(11) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `action_by` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `action_on` datetime NOT NULL,
  `ip` varchar(50) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `edited_on` datetime DEFAULT NULL,
  `comment` text,
  `comment_deleted_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `action_by`, `action_on`, `ip`, `user_agent`, `collection`, `item`, `edited_on`, `comment`, `comment_deleted_on`) VALUES
(1, 'authenticate', 1, '2018-11-30 03:26:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_users', '1', NULL, NULL, NULL),
(2, 'create', 1, '2018-11-30 03:26:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '132', NULL, NULL, NULL),
(3, 'update', 1, '2018-11-30 03:26:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_collections', 'behavior', NULL, NULL, NULL),
(4, 'create', 1, '2018-11-30 03:27:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '133', NULL, NULL, NULL),
(5, 'create', 1, '2018-11-30 03:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '134', NULL, NULL, NULL),
(6, 'create', 1, '2018-11-30 03:28:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '135', NULL, NULL, NULL),
(7, 'update', 1, '2018-11-30 03:28:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_collections', 'injury', NULL, NULL, NULL),
(8, 'create', 1, '2018-11-30 03:29:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '136', NULL, NULL, NULL),
(9, 'update', 1, '2018-11-30 03:29:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_collections', 'injury', NULL, NULL, NULL),
(10, 'create', 1, '2018-11-30 03:36:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '137', NULL, NULL, NULL),
(11, 'create', 1, '2018-11-30 03:36:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '138', NULL, NULL, NULL),
(12, 'authenticate', 1, '2018-12-04 01:29:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_users', '1', NULL, NULL, NULL),
(13, 'create', 1, '2018-12-04 01:30:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '3', NULL, NULL, NULL),
(14, 'update', 1, '2018-12-04 01:31:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '3', NULL, NULL, NULL),
(15, 'create', 1, '2018-12-04 01:31:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '19', NULL, NULL, NULL),
(16, 'create', 1, '2018-12-04 01:31:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '20', NULL, NULL, NULL),
(17, 'create', 1, '2018-12-04 01:31:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '21', NULL, NULL, NULL),
(18, 'create', 1, '2018-12-04 01:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '22', NULL, NULL, NULL),
(19, 'create', 1, '2018-12-04 01:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '23', NULL, NULL, NULL),
(20, 'create', 1, '2018-12-04 01:31:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '24', NULL, NULL, NULL),
(21, 'create', 1, '2018-12-04 01:31:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '4', NULL, NULL, NULL),
(22, 'update', 1, '2018-12-04 01:32:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '4', NULL, NULL, NULL),
(23, 'create', 1, '2018-12-04 01:32:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '43', NULL, NULL, NULL),
(24, 'create', 1, '2018-12-04 01:32:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '44', NULL, NULL, NULL),
(25, 'create', 1, '2018-12-04 01:32:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '45', NULL, NULL, NULL),
(26, 'create', 1, '2018-12-04 01:32:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '46', NULL, NULL, NULL),
(27, 'create', 1, '2018-12-04 01:32:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '47', NULL, NULL, NULL),
(28, 'create', 1, '2018-12-04 01:32:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '48', NULL, NULL, NULL),
(29, 'update', 1, '2018-12-04 01:32:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '19', NULL, NULL, NULL),
(30, 'update', 1, '2018-12-04 01:32:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '20', NULL, NULL, NULL),
(31, 'update', 1, '2018-12-04 01:32:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '21', NULL, NULL, NULL),
(32, 'update', 1, '2018-12-04 01:32:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '22', NULL, NULL, NULL),
(33, 'update', 1, '2018-12-04 01:32:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '23', NULL, NULL, NULL),
(34, 'update', 1, '2018-12-04 01:32:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '24', NULL, NULL, NULL),
(35, 'create', 1, '2018-12-04 01:33:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '5', NULL, NULL, NULL),
(36, 'create', 1, '2018-12-04 01:33:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '67', NULL, NULL, NULL),
(37, 'create', 1, '2018-12-04 01:33:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '68', NULL, NULL, NULL),
(38, 'create', 1, '2018-12-04 01:33:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '69', NULL, NULL, NULL),
(39, 'create', 1, '2018-12-04 01:33:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '70', NULL, NULL, NULL),
(40, 'create', 1, '2018-12-04 01:33:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '71', NULL, NULL, NULL),
(41, 'create', 1, '2018-12-04 01:33:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '72', NULL, NULL, NULL),
(42, 'update', 1, '2018-12-04 01:34:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '5', NULL, NULL, NULL),
(43, 'create', 1, '2018-12-04 01:34:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '6', NULL, NULL, NULL),
(44, 'update', 1, '2018-12-04 01:35:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_roles', '6', NULL, NULL, NULL),
(45, 'create', 1, '2018-12-04 01:35:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '91', NULL, NULL, NULL),
(46, 'create', 1, '2018-12-04 01:35:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '92', NULL, NULL, NULL),
(47, 'create', 1, '2018-12-04 01:35:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '93', NULL, NULL, NULL),
(48, 'create', 1, '2018-12-04 01:35:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '94', NULL, NULL, NULL),
(49, 'create', 1, '2018-12-04 01:35:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '95', NULL, NULL, NULL),
(50, 'create', 1, '2018-12-04 01:35:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_permissions', '96', NULL, NULL, NULL),
(51, 'create', 1, '2018-12-04 01:38:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '139', NULL, NULL, NULL),
(52, 'create', 1, '2018-12-04 01:39:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '140', NULL, NULL, NULL),
(53, 'update', 1, '2018-12-04 01:39:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '139', NULL, NULL, NULL),
(54, 'create', 1, '2018-12-04 01:41:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '141', NULL, NULL, NULL),
(55, 'create', 1, '2018-12-04 01:41:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '142', NULL, NULL, NULL),
(56, 'create', 1, '2018-12-04 01:42:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '143', NULL, NULL, NULL),
(57, 'create', 1, '2018-12-04 01:42:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '144', NULL, NULL, NULL),
(58, 'create', 1, '2018-12-04 01:45:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '145', NULL, NULL, NULL),
(59, 'create', 1, '2018-12-04 01:46:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '146', NULL, NULL, NULL),
(60, 'create', 1, '2018-12-04 01:48:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '147', NULL, NULL, NULL),
(61, 'create', 1, '2018-12-04 01:49:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '148', NULL, NULL, NULL),
(62, 'create', 1, '2018-12-04 01:51:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '149', NULL, NULL, NULL),
(63, 'create', 1, '2018-12-04 01:52:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '150', NULL, NULL, NULL),
(64, 'create', 1, '2018-12-04 01:52:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '151', NULL, NULL, NULL),
(65, 'create', 1, '2018-12-04 01:53:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '152', NULL, NULL, NULL),
(66, 'create', 1, '2018-12-04 01:53:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '153', NULL, NULL, NULL),
(67, 'create', 1, '2018-12-04 01:54:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '154', NULL, NULL, NULL),
(68, 'create', 1, '2018-12-04 01:55:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '155', NULL, NULL, NULL),
(69, 'create', 1, '2018-12-04 01:55:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '156', NULL, NULL, NULL),
(70, 'create', 1, '2018-12-04 01:56:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '157', NULL, NULL, NULL),
(71, 'create', 1, '2018-12-04 01:56:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '158', NULL, NULL, NULL),
(72, 'create', 1, '2018-12-04 01:57:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '159', NULL, NULL, NULL),
(73, 'update', 1, '2018-12-04 01:57:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_collections', 'employees', NULL, NULL, NULL),
(74, 'create', 1, '2018-12-04 01:58:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '160', NULL, NULL, NULL),
(75, 'create', 1, '2018-12-04 01:58:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '161', NULL, NULL, NULL),
(76, 'update', 1, '2018-12-04 01:58:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_collections', 'supervisor', NULL, NULL, NULL),
(77, 'create', 1, '2018-12-04 01:58:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '162', NULL, NULL, NULL),
(78, 'create', 1, '2018-12-04 01:59:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '163', NULL, NULL, NULL),
(79, 'update', 1, '2018-12-04 01:59:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_collections', 'location', NULL, NULL, NULL),
(80, 'create', 1, '2018-12-04 01:59:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_fields', '164', NULL, NULL, NULL),
(81, 'authenticate', 1, '2018-12-07 03:16:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'directus_users', '1', NULL, NULL, NULL),
(82, 'authenticate', 1, '2018-12-13 01:24:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'directus_users', '1', NULL, NULL, NULL),
(83, 'create', 1, '2018-12-13 01:25:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'employees', '1', NULL, NULL, NULL),
(84, 'create', 1, '2018-12-13 01:25:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'employees', '2', NULL, NULL, NULL),
(85, 'create', 1, '2018-12-13 01:25:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'employees', '3', NULL, NULL, NULL),
(86, 'create', 1, '2018-12-13 01:25:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'employees', '4', NULL, NULL, NULL),
(87, 'create', 1, '2018-12-13 01:26:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '1', NULL, NULL, NULL),
(88, 'update', 1, '2018-12-13 01:26:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '1', NULL, NULL, NULL),
(89, 'create', 1, '2018-12-13 01:26:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '2', NULL, NULL, NULL),
(90, 'create', 1, '2018-12-13 01:26:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '3', NULL, NULL, NULL),
(91, 'create', 1, '2018-12-13 01:26:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '4', NULL, NULL, NULL),
(92, 'create', 1, '2018-12-13 01:27:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '5', NULL, NULL, NULL),
(93, 'create', 1, '2018-12-13 01:27:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '6', NULL, NULL, NULL),
(94, 'create', 1, '2018-12-13 01:27:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '7', NULL, NULL, NULL),
(95, 'create', 1, '2018-12-13 01:27:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '8', NULL, NULL, NULL),
(96, 'create', 1, '2018-12-13 01:27:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'location', '9', NULL, NULL, NULL),
(97, 'create', 1, '2018-12-13 01:27:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'supervisor', '1', NULL, NULL, NULL),
(98, 'create', 1, '2018-12-13 01:28:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'supervisor', '2', NULL, NULL, NULL),
(99, 'create', 1, '2018-12-13 01:28:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'supervisor', '3', NULL, NULL, NULL),
(100, 'create', 1, '2018-12-13 01:28:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'supervisor', '4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_activity_seen`
--

CREATE TABLE `directus_activity_seen` (
  `id` int(11) UNSIGNED NOT NULL,
  `activity` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `seen_on` datetime DEFAULT NULL,
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `managed` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `single` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `icon` varchar(30) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `managed`, `hidden`, `single`, `icon`, `note`, `translation`) VALUES
('behavior', 1, 0, 0, NULL, NULL, NULL),
('employees', 1, 0, 0, NULL, NULL, NULL),
('injury', 1, 0, 0, NULL, NULL, NULL),
('location', 1, 0, 0, NULL, NULL, NULL),
('supervisor', 1, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_collection_presets`
--

CREATE TABLE `directus_collection_presets` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `role` int(11) UNSIGNED DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `search_query` varchar(100) DEFAULT NULL,
  `filters` text,
  `view_type` varchar(100) NOT NULL DEFAULT 'tabular',
  `view_query` text,
  `view_options` text,
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_collection_presets`
--

INSERT INTO `directus_collection_presets` (`id`, `title`, `user`, `role`, `collection`, `search_query`, `filters`, `view_type`, `view_query`, `view_options`, `translation`) VALUES
(1, NULL, NULL, NULL, 'directus_activity', NULL, NULL, 'tabular', '{\"tabular\":{\"sort\":\"-action_on\",\"fields\":\"action,action_by,action_on,collection,item\"}}', '{\"tabular\":{\"widths\":{\"action\":170,\"action_by\":170,\"action_on\":180,\"collection\":200,\"item\":200}}}', NULL),
(2, NULL, NULL, NULL, 'directus_files', NULL, NULL, 'cards', NULL, '{\"cards\":{\"title\":\"title\",\"subtitle\":\"type\",\"content\":\"description\",\"src\":\"data\"}}', NULL),
(3, NULL, NULL, NULL, 'directus_users', NULL, NULL, 'cards', NULL, '{\"cards\":{\"title\":\"first_name\",\"subtitle\":\"last_name\",\"content\":\"title\",\"src\":\"avatar\",\"icon\":\"person\"}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(11) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` text,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `validation` varchar(255) DEFAULT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `readonly` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hidden_detail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hidden_browse` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED NOT NULL DEFAULT '4',
  `group` int(11) UNSIGNED DEFAULT NULL,
  `note` varchar(1024) DEFAULT NULL,
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `type`, `interface`, `options`, `locked`, `validation`, `required`, `readonly`, `hidden_detail`, `hidden_browse`, `sort`, `width`, `group`, `note`, `translation`) VALUES
(1, 'directus_activity', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 1, 1, 0, NULL, 4, NULL, NULL, NULL),
(2, 'directus_activity', 'action', 'string', 'activity-icon', NULL, 1, NULL, 0, 1, 0, 0, 1, 4, NULL, NULL, NULL),
(3, 'directus_activity', 'collection', 'string', 'collections', NULL, 1, NULL, 0, 1, 0, 0, 2, 2, NULL, NULL, NULL),
(4, 'directus_activity', 'item', 'string', 'text-input', NULL, 1, NULL, 0, 1, 0, 0, 3, 2, NULL, NULL, NULL),
(5, 'directus_activity', 'action_by', 'integer', 'user', NULL, 1, NULL, 0, 1, 0, 0, 4, 2, NULL, NULL, NULL),
(6, 'directus_activity', 'action_on', 'datetime', 'datetime', '{\"showRelative\":true}', 1, NULL, 0, 1, 0, 0, 5, 2, NULL, NULL, NULL),
(7, 'directus_activity', 'edited_on', 'datetime', 'datetime', '{\"showRelative\":true}', 1, NULL, 0, 1, 0, 0, 6, 2, NULL, NULL, NULL),
(8, 'directus_activity', 'comment_deleted_on', 'datetime', 'datetime', '{\"showRelative\":true}', 1, NULL, 0, 1, 0, 0, 7, 2, NULL, NULL, NULL),
(9, 'directus_activity', 'ip', 'string', 'text-input', NULL, 1, NULL, 0, 1, 0, 0, 8, 2, NULL, NULL, NULL),
(10, 'directus_activity', 'user_agent', 'string', 'text-input', NULL, 1, NULL, 0, 1, 0, 0, 9, 2, NULL, NULL, NULL),
(11, 'directus_activity', 'comment', 'string', 'textarea', NULL, 1, NULL, 0, 1, 0, 0, 10, 4, NULL, NULL, NULL),
(12, 'directus_collection_presets', 'id', 'integer', 'primary-key', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(13, 'directus_collection_presets', 'title', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(14, 'directus_collection_presets', 'user', 'integer', 'user', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(15, 'directus_collection_presets', 'role', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(16, 'directus_collection_presets', 'collection', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(17, 'directus_collection_presets', 'search_query', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(18, 'directus_collection_presets', 'filters', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(19, 'directus_collection_presets', 'view_options', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(20, 'directus_collection_presets', 'view_type', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(21, 'directus_collection_presets', 'view_query', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(22, 'directus_collections', 'fields', 'o2m', 'one-to-many', NULL, 1, NULL, 0, 0, 1, 1, 1, 4, NULL, NULL, NULL),
(23, 'directus_collections', 'collection', 'string', 'primary-key', NULL, 1, NULL, 1, 1, 0, 0, 2, 2, NULL, NULL, NULL),
(24, 'directus_collections', 'note', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, 3, 2, NULL, NULL, NULL),
(25, 'directus_collections', 'managed', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, 4, 1, NULL, NULL, NULL),
(26, 'directus_collections', 'hidden', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, 5, 1, NULL, NULL, NULL),
(27, 'directus_collections', 'single', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, 6, 1, NULL, NULL, NULL),
(28, 'directus_collections', 'translation', 'json', 'code', NULL, 1, NULL, 0, 0, 1, 0, 7, 4, NULL, NULL, NULL),
(29, 'directus_collections', 'icon', 'string', 'icon', NULL, 1, NULL, 0, 0, 0, 0, 8, 4, NULL, NULL, NULL),
(30, 'directus_fields', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 0, 1, 0, NULL, 4, NULL, NULL, NULL),
(31, 'directus_fields', 'collection', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(32, 'directus_fields', 'field', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(33, 'directus_fields', 'type', 'string', 'primary-key', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(34, 'directus_fields', 'interface', 'string', 'primary-key', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(35, 'directus_fields', 'options', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(36, 'directus_fields', 'locked', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(37, 'directus_fields', 'translation', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(38, 'directus_fields', 'readonly', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(39, 'directus_fields', 'validation', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(40, 'directus_fields', 'required', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(41, 'directus_fields', 'sort', 'sort', 'sort', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(42, 'directus_fields', 'note', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(43, 'directus_fields', 'hidden_detail', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(44, 'directus_fields', 'hidden_browse', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(45, 'directus_fields', 'width', 'integer', 'numeric', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(46, 'directus_fields', 'group', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(47, 'directus_files', 'data', 'alias', 'file', NULL, 1, NULL, 0, 0, 1, 0, 0, 4, NULL, NULL, NULL),
(48, 'directus_files', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 0, 1, 0, 1, 4, NULL, NULL, NULL),
(49, 'directus_files', 'preview', 'alias', 'file-preview', NULL, 1, NULL, 0, 0, 0, 0, 2, 4, NULL, NULL, NULL),
(50, 'directus_files', 'title', 'string', 'text-input', '{\"placeholder\":\"Enter a descriptive title...\",\"iconRight\":\"title\"}', 1, NULL, 0, 0, 0, 0, 3, 2, NULL, NULL, NULL),
(51, 'directus_files', 'filename', 'string', 'text-input', '{\"placeholder\":\"Enter a unique file name...\",\"iconRight\":\"insert_drive_file\"}', 1, NULL, 0, 1, 0, 0, 4, 2, NULL, NULL, NULL),
(52, 'directus_files', 'tags', 'array', 'tags', NULL, 0, NULL, 0, 0, 0, 0, 5, 2, NULL, NULL, NULL),
(53, 'directus_files', 'location', 'string', 'text-input', '{\"placeholder\":\"Enter a location...\",\"iconRight\":\"place\"}', 0, NULL, 0, 0, 0, 0, 6, 2, NULL, NULL, NULL),
(54, 'directus_files', 'description', 'string', 'wysiwyg', '{\"placeholder\":\"Enter a caption or description...\"}', 0, NULL, 0, 0, 0, 0, 7, 4, NULL, NULL, NULL),
(55, 'directus_files', 'width', 'integer', 'numeric', '{\"iconRight\":\"straighten\"}', 1, NULL, 0, 1, 0, 0, 8, 1, NULL, NULL, NULL),
(56, 'directus_files', 'height', 'integer', 'numeric', '{\"iconRight\":\"straighten\"}', 1, NULL, 0, 1, 0, 0, 9, 1, NULL, NULL, NULL),
(57, 'directus_files', 'duration', 'integer', 'numeric', '{\"iconRight\":\"timer\"}', 1, NULL, 0, 1, 0, 0, 10, 1, NULL, NULL, NULL),
(58, 'directus_files', 'filesize', 'integer', 'file-size', '{\"iconRight\":\"storage\"}', 1, NULL, 0, 1, 0, 0, 11, 1, NULL, NULL, NULL),
(59, 'directus_files', 'uploaded_on', 'datetime', 'datetime', '{\"iconRight\":\"today\"}', 1, NULL, 0, 1, 0, 0, 12, 2, NULL, NULL, NULL),
(60, 'directus_files', 'uploaded_by', 'integer', 'user', NULL, 1, NULL, 0, 1, 0, 0, 13, 2, NULL, NULL, NULL),
(61, 'directus_files', 'metadata', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, 14, 4, NULL, NULL, NULL),
(62, 'directus_files', 'type', 'string', 'text-input', NULL, 1, NULL, 0, 1, 1, 0, NULL, 4, NULL, NULL, NULL),
(63, 'directus_files', 'charset', 'string', 'text-input', NULL, 1, NULL, 0, 1, 1, 1, NULL, 4, NULL, NULL, NULL),
(64, 'directus_files', 'embed', 'string', 'text-input', NULL, 1, NULL, 0, 1, 1, 0, NULL, 4, NULL, NULL, NULL),
(65, 'directus_files', 'folder', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 1, 0, NULL, 4, NULL, NULL, NULL),
(66, 'directus_files', 'storage', 'string', 'text-input', NULL, 1, NULL, 0, 0, 1, 1, NULL, 4, NULL, NULL, NULL),
(67, 'directus_folders', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 0, 1, 0, NULL, 4, NULL, NULL, NULL),
(68, 'directus_folders', 'name', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(69, 'directus_folders', 'parent_folder', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(70, 'directus_permissions', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 0, 1, 0, NULL, 4, NULL, NULL, NULL),
(71, 'directus_permissions', 'collection', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(72, 'directus_permissions', 'role', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(73, 'directus_permissions', 'status', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(74, 'directus_permissions', 'create', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(75, 'directus_permissions', 'read', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(76, 'directus_permissions', 'update', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(77, 'directus_permissions', 'delete', 'string', 'primary-key', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(78, 'directus_permissions', 'comment', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(79, 'directus_permissions', 'explain', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(80, 'directus_permissions', 'status_blacklist', 'array', 'tags', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(81, 'directus_permissions', 'read_field_blacklist', 'array', 'tags', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(82, 'directus_permissions', 'write_field_blacklist', 'array', 'tags', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(83, 'directus_relations', 'id', 'integer', 'primary-key', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(84, 'directus_relations', 'collection_many', 'string', 'collections', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(85, 'directus_relations', 'field_many', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(86, 'directus_relations', 'collection_one', 'string', 'collections', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(87, 'directus_relations', 'field_one', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(88, 'directus_relations', 'junction_field', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(89, 'directus_revisions', 'id', 'integer', 'primary-key', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(90, 'directus_revisions', 'activity', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(91, 'directus_revisions', 'collection', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(92, 'directus_revisions', 'item', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(93, 'directus_revisions', 'data', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(94, 'directus_revisions', 'delta', 'json', 'code', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(95, 'directus_revisions', 'parent_item', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(96, 'directus_revisions', 'parent_collection', 'string', 'collections', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(97, 'directus_revisions', 'parent_changed', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(98, 'directus_roles', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 0, 1, 0, NULL, 4, NULL, NULL, NULL),
(99, 'directus_roles', 'external_id', 'string', 'text-input', NULL, 1, NULL, 0, 1, 1, 1, NULL, 4, NULL, NULL, NULL),
(100, 'directus_roles', 'name', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, 1, 2, NULL, NULL, NULL),
(101, 'directus_roles', 'description', 'string', 'text-input', NULL, 1, NULL, 0, 0, 0, 0, 2, 2, NULL, NULL, NULL),
(102, 'directus_roles', 'ip_whitelist', 'string', 'textarea', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(103, 'directus_roles', 'nav_blacklist', 'string', 'textarea', NULL, 1, NULL, 0, 0, 1, 1, NULL, 4, NULL, NULL, NULL),
(104, 'directus_settings', 'auto_sign_out', 'integer', 'numeric', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(105, 'directus_settings', 'logo', 'file', 'file', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(106, 'directus_settings', 'color', 'string', 'color-palette', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(107, 'directus_users', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 0, 1, 0, 1, 4, NULL, NULL, NULL),
(108, 'directus_users', 'status', 'status', 'status', '{\"status_mapping\":{\"draft\":{\"name\":\"Draft\",\"text_color\":\"white\",\"background_color\":\"light-gray\",\"listing_subdued\":false,\"listing_badge\":true,\"soft_delete\":false},\"invited\":{\"name\":\"Invited\",\"text_color\":\"white\",\"background_color\":\"light-gray\",\"listing_subdued\":false,\"listing_badge\":true,\"soft_delete\":false},\"active\":{\"name\":\"Active\",\"text_color\":\"white\",\"background_color\":\"success\",\"listing_subdued\":false,\"listing_badge\":false,\"soft_delete\":false},\"suspended\":{\"name\":\"Suspended\",\"text_color\":\"white\",\"background_color\":\"light-gray\",\"listing_subdued\":false,\"listing_badge\":true,\"soft_delete\":false},\"deleted\":{\"name\":\"Deleted\",\"text_color\":\"white\",\"background_color\":\"danger\",\"listing_subdued\":false,\"listing_badge\":true,\"soft_delete\":true}}}', 1, NULL, 0, 0, 0, 0, 2, 4, NULL, NULL, NULL),
(109, 'directus_users', 'first_name', 'string', 'text-input', '{\"placeholder\":\"Enter your give name...\"}', 1, NULL, 1, 0, 0, 0, 3, 2, NULL, NULL, NULL),
(110, 'directus_users', 'last_name', 'string', 'text-input', '{\"placeholder\":\"Enter your surname...\"}', 1, NULL, 1, 0, 0, 0, 4, 2, NULL, NULL, NULL),
(111, 'directus_users', 'email', 'string', 'text-input', '{\"placeholder\":\"Enter your email address...\"}', 1, NULL, 1, 0, 0, 0, 5, 2, NULL, NULL, NULL),
(112, 'directus_users', 'email_notifications', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 0, 0, 6, 2, NULL, NULL, NULL),
(113, 'directus_users', 'password', 'string', 'password', NULL, 1, NULL, 1, 0, 0, 0, 7, 2, NULL, NULL, NULL),
(114, 'directus_users', 'roles', 'o2m', 'user-roles', NULL, 1, NULL, 0, 0, 0, 0, 8, 2, NULL, NULL, NULL),
(115, 'directus_users', 'company', 'string', 'text-input', '{\"placeholder\":\"Enter your company or organization name...\"}', 0, NULL, 0, 0, 0, 0, 9, 2, NULL, NULL, NULL),
(116, 'directus_users', 'title', 'string', 'text-input', '{\"placeholder\":\"Enter your title or role...\"}', 0, NULL, 0, 0, 0, 0, 10, 2, NULL, NULL, NULL),
(117, 'directus_users', 'timezone', 'string', 'dropdown', '{\"choices\":{\"Pacific\\/Midway\":\"(UTC-11:00) Midway Island\",\"Pacific\\/Samoa\":\"(UTC-11:00) Samoa\",\"Pacific\\/Honolulu\":\"(UTC-10:00) Hawaii\",\"US\\/Alaska\":\"(UTC-09:00) Alaska\",\"America\\/Los_Angeles\":\"(UTC-08:00) Pacific Time (US & Canada)\",\"America\\/Tijuana\":\"(UTC-08:00) Tijuana\",\"US\\/Arizona\":\"(UTC-07:00) Arizona\",\"America\\/Chihuahua\":\"(UTC-07:00) Chihuahua\",\"America\\/Mexico\\/La_Paz\":\"(UTC-07:00) La Paz\",\"America\\/Mazatlan\":\"(UTC-07:00) Mazatlan\",\"US\\/Mountain\":\"(UTC-07:00) Mountain Time (US & Canada)\",\"America\\/Managua\":\"(UTC-06:00) Central America\",\"US\\/Central\":\"(UTC-06:00) Central Time (US & Canada)\",\"America\\/Guadalajara\":\"(UTC-06:00) Guadalajara\",\"America\\/Mexico_City\":\"(UTC-06:00) Mexico City\",\"America\\/Monterrey\":\"(UTC-06:00) Monterrey\",\"Canada\\/Saskatchewan\":\"(UTC-06:00) Saskatchewan\",\"America\\/Bogota\":\"(UTC-05:00) Bogota\",\"US\\/Eastern\":\"(UTC-05:00) Eastern Time (US & Canada)\",\"US\\/East-Indiana\":\"(UTC-05:00) Indiana (East)\",\"America\\/Lima\":\"(UTC-05:00) Lima\",\"America\\/Quito\":\"(UTC-05:00) Quito\",\"Canada\\/Atlantic\":\"(UTC-04:00) Atlantic Time (Canada)\",\"America\\/New_York\":\"(UTC-04:00) New York\",\"America\\/Caracas\":\"(UTC-04:30) Caracas\",\"America\\/La_Paz\":\"(UTC-04:00) La Paz\",\"America\\/Santiago\":\"(UTC-04:00) Santiago\",\"America\\/Santo_Domingo\":\"(UTC-04:00) Santo Domingo\",\"Canada\\/Newfoundland\":\"(UTC-03:30) Newfoundland\",\"America\\/Sao_Paulo\":\"(UTC-03:00) Brasilia\",\"America\\/Argentina\\/Buenos_Aires\":\"(UTC-03:00) Buenos Aires\",\"America\\/Argentina\\/GeorgeTown\":\"(UTC-03:00) Georgetown\",\"America\\/Godthab\":\"(UTC-03:00) Greenland\",\"America\\/Noronha\":\"(UTC-02:00) Mid-Atlantic\",\"Atlantic\\/Azores\":\"(UTC-01:00) Azores\",\"Atlantic\\/Cape_Verde\":\"(UTC-01:00) Cape Verde Is.\",\"Africa\\/Casablanca\":\"(UTC+00:00) Casablanca\",\"Europe\\/Edinburgh\":\"(UTC+00:00) Edinburgh\",\"Etc\\/Greenwich\":\"(UTC+00:00) Greenwich Mean Time : Dublin\",\"Europe\\/Lisbon\":\"(UTC+00:00) Lisbon\",\"Europe\\/London\":\"(UTC+00:00) London\",\"Africa\\/Monrovia\":\"(UTC+00:00) Monrovia\",\"UTC\":\"(UTC+00:00) UTC\",\"Europe\\/Amsterdam\":\"(UTC+01:00) Amsterdam\",\"Europe\\/Belgrade\":\"(UTC+01:00) Belgrade\",\"Europe\\/Berlin\":\"(UTC+01:00) Berlin\",\"Europe\\/Bern\":\"(UTC+01:00) Bern\",\"Europe\\/Bratislava\":\"(UTC+01:00) Bratislava\",\"Europe\\/Brussels\":\"(UTC+01:00) Brussels\",\"Europe\\/Budapest\":\"(UTC+01:00) Budapest\",\"Europe\\/Copenhagen\":\"(UTC+01:00) Copenhagen\",\"Europe\\/Ljubljana\":\"(UTC+01:00) Ljubljana\",\"Europe\\/Madrid\":\"(UTC+01:00) Madrid\",\"Europe\\/Paris\":\"(UTC+01:00) Paris\",\"Europe\\/Prague\":\"(UTC+01:00) Prague\",\"Europe\\/Rome\":\"(UTC+01:00) Rome\",\"Europe\\/Sarajevo\":\"(UTC+01:00) Sarajevo\",\"Europe\\/Skopje\":\"(UTC+01:00) Skopje\",\"Europe\\/Stockholm\":\"(UTC+01:00) Stockholm\",\"Europe\\/Vienna\":\"(UTC+01:00) Vienna\",\"Europe\\/Warsaw\":\"(UTC+01:00) Warsaw\",\"Africa\\/Lagos\":\"(UTC+01:00) West Central Africa\",\"Europe\\/Zagreb\":\"(UTC+01:00) Zagreb\",\"Europe\\/Athens\":\"(UTC+02:00) Athens\",\"Europe\\/Bucharest\":\"(UTC+02:00) Bucharest\",\"Africa\\/Cairo\":\"(UTC+02:00) Cairo\",\"Africa\\/Harare\":\"(UTC+02:00) Harare\",\"Europe\\/Helsinki\":\"(UTC+02:00) Helsinki\",\"Europe\\/Istanbul\":\"(UTC+02:00) Istanbul\",\"Asia\\/Jerusalem\":\"(UTC+02:00) Jerusalem\",\"Europe\\/Kyiv\":\"(UTC+02:00) Kyiv\",\"Africa\\/Johannesburg\":\"(UTC+02:00) Pretoria\",\"Europe\\/Riga\":\"(UTC+02:00) Riga\",\"Europe\\/Sofia\":\"(UTC+02:00) Sofia\",\"Europe\\/Tallinn\":\"(UTC+02:00) Tallinn\",\"Europe\\/Vilnius\":\"(UTC+02:00) Vilnius\",\"Asia\\/Baghdad\":\"(UTC+03:00) Baghdad\",\"Asia\\/Kuwait\":\"(UTC+03:00) Kuwait\",\"Europe\\/Minsk\":\"(UTC+03:00) Minsk\",\"Africa\\/Nairobi\":\"(UTC+03:00) Nairobi\",\"Asia\\/Riyadh\":\"(UTC+03:00) Riyadh\",\"Europe\\/Volgograd\":\"(UTC+03:00) Volgograd\",\"Asia\\/Tehran\":\"(UTC+03:30) Tehran\",\"Asia\\/Abu_Dhabi\":\"(UTC+04:00) Abu Dhabi\",\"Asia\\/Baku\":\"(UTC+04:00) Baku\",\"Europe\\/Moscow\":\"(UTC+04:00) Moscow\",\"Asia\\/Muscat\":\"(UTC+04:00) Muscat\",\"Europe\\/St_Petersburg\":\"(UTC+04:00) St. Petersburg\",\"Asia\\/Tbilisi\":\"(UTC+04:00) Tbilisi\",\"Asia\\/Yerevan\":\"(UTC+04:00) Yerevan\",\"Asia\\/Kabul\":\"(UTC+04:30) Kabul\",\"Asia\\/Islamabad\":\"(UTC+05:00) Islamabad\",\"Asia\\/Karachi\":\"(UTC+05:00) Karachi\",\"Asia\\/Tashkent\":\"(UTC+05:00) Tashkent\",\"Asia\\/Calcutta\":\"(UTC+05:30) Chennai\",\"Asia\\/Kolkata\":\"(UTC+05:30) Kolkata\",\"Asia\\/Mumbai\":\"(UTC+05:30) Mumbai\",\"Asia\\/New_Delhi\":\"(UTC+05:30) New Delhi\",\"Asia\\/Sri_Jayawardenepura\":\"(UTC+05:30) Sri Jayawardenepura\",\"Asia\\/Katmandu\":\"(UTC+05:45) Kathmandu\",\"Asia\\/Almaty\":\"(UTC+06:00) Almaty\",\"Asia\\/Astana\":\"(UTC+06:00) Astana\",\"Asia\\/Dhaka\":\"(UTC+06:00) Dhaka\",\"Asia\\/Yekaterinburg\":\"(UTC+06:00) Ekaterinburg\",\"Asia\\/Rangoon\":\"(UTC+06:30) Rangoon\",\"Asia\\/Bangkok\":\"(UTC+07:00) Bangkok\",\"Asia\\/Hanoi\":\"(UTC+07:00) Hanoi\",\"Asia\\/Jakarta\":\"(UTC+07:00) Jakarta\",\"Asia\\/Novosibirsk\":\"(UTC+07:00) Novosibirsk\",\"Asia\\/Beijing\":\"(UTC+08:00) Beijing\",\"Asia\\/Chongqing\":\"(UTC+08:00) Chongqing\",\"Asia\\/Hong_Kong\":\"(UTC+08:00) Hong Kong\",\"Asia\\/Krasnoyarsk\":\"(UTC+08:00) Krasnoyarsk\",\"Asia\\/Kuala_Lumpur\":\"(UTC+08:00) Kuala Lumpur\",\"Australia\\/Perth\":\"(UTC+08:00) Perth\",\"Asia\\/Singapore\":\"(UTC+08:00) Singapore\",\"Asia\\/Taipei\":\"(UTC+08:00) Taipei\",\"Asia\\/Ulan_Bator\":\"(UTC+08:00) Ulaan Bataar\",\"Asia\\/Urumqi\":\"(UTC+08:00) Urumqi\",\"Asia\\/Irkutsk\":\"(UTC+09:00) Irkutsk\",\"Asia\\/Osaka\":\"(UTC+09:00) Osaka\",\"Asia\\/Sapporo\":\"(UTC+09:00) Sapporo\",\"Asia\\/Seoul\":\"(UTC+09:00) Seoul\",\"Asia\\/Tokyo\":\"(UTC+09:00) Tokyo\",\"Australia\\/Adelaide\":\"(UTC+09:30) Adelaide\",\"Australia\\/Darwin\":\"(UTC+09:30) Darwin\",\"Australia\\/Brisbane\":\"(UTC+10:00) Brisbane\",\"Australia\\/Canberra\":\"(UTC+10:00) Canberra\",\"Pacific\\/Guam\":\"(UTC+10:00) Guam\",\"Australia\\/Hobart\":\"(UTC+10:00) Hobart\",\"Australia\\/Melbourne\":\"(UTC+10:00) Melbourne\",\"Pacific\\/Port_Moresby\":\"(UTC+10:00) Port Moresby\",\"Australia\\/Sydney\":\"(UTC+10:00) Sydney\",\"Asia\\/Yakutsk\":\"(UTC+10:00) Yakutsk\",\"Asia\\/Vladivostok\":\"(UTC+11:00) Vladivostok\",\"Pacific\\/Auckland\":\"(UTC+12:00) Auckland\",\"Pacific\\/Fiji\":\"(UTC+12:00) Fiji\",\"Pacific\\/Kwajalein\":\"(UTC+12:00) International Date Line West\",\"Asia\\/Kamchatka\":\"(UTC+12:00) Kamchatka\",\"Asia\\/Magadan\":\"(UTC+12:00) Magadan\",\"Pacific\\/Marshall_Is\":\"(UTC+12:00) Marshall Is.\",\"Asia\\/New_Caledonia\":\"(UTC+12:00) New Caledonia\",\"Asia\\/Solomon_Is\":\"(UTC+12:00) Solomon Is.\",\"Pacific\\/Wellington\":\"(UTC+12:00) Wellington\",\"Pacific\\/Tongatapu\":\"(UTC+13:00) Nuku\'alofa\"},\"placeholder\":\"Choose a timezone...\"}', 1, NULL, 0, 0, 0, 0, 11, 2, NULL, NULL, NULL),
(118, 'directus_users', 'locale', 'string', 'language', '{\"limit\":true}', 1, NULL, 0, 0, 0, 0, 12, 2, NULL, NULL, NULL),
(119, 'directus_users', 'locale_options', 'json', 'code', NULL, 1, NULL, 0, 0, 1, 1, 13, 4, NULL, NULL, NULL),
(120, 'directus_users', 'token', 'string', 'text-input', NULL, 1, NULL, 0, 0, 1, 1, 14, 4, NULL, NULL, NULL),
(121, 'directus_users', 'last_login', 'datetime', 'datetime', NULL, 1, NULL, 0, 1, 0, 0, 15, 2, NULL, NULL, NULL),
(122, 'directus_users', 'last_access_on', 'datetime', 'datetime', NULL, 1, NULL, 0, 1, 1, 0, 16, 2, NULL, NULL, NULL),
(123, 'directus_users', 'last_page', 'string', 'text-input', NULL, 1, NULL, 0, 1, 1, 1, 17, 2, NULL, NULL, NULL),
(124, 'directus_users', 'avatar', 'file', 'file', NULL, 1, NULL, 0, 0, 0, 0, 18, 4, NULL, NULL, NULL),
(125, 'directus_users', 'invite_token', 'string', 'text-input', NULL, 1, NULL, 0, 0, 1, 1, NULL, 4, NULL, NULL, NULL),
(126, 'directus_users', 'invite_accepted', 'boolean', 'toggle', NULL, 1, NULL, 0, 0, 1, 1, NULL, 4, NULL, NULL, NULL),
(127, 'directus_users', 'last_ip', 'string', 'text-input', NULL, 1, NULL, 0, 1, 1, 0, NULL, 4, NULL, NULL, NULL),
(128, 'directus_users', 'external_id', 'string', 'text-input', NULL, 1, NULL, 0, 1, 1, 0, NULL, 4, NULL, NULL, NULL),
(129, 'directus_user_roles', 'id', 'integer', 'primary-key', NULL, 1, NULL, 1, 0, 1, 0, NULL, 4, NULL, NULL, NULL),
(130, 'directus_user_roles', 'user', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(131, 'directus_user_roles', 'role', 'm2o', 'many-to-one', NULL, 1, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(132, 'behavior', 'id', 'integer', 'primary-key', NULL, 0, NULL, 0, 0, 1, 1, 0, 4, NULL, NULL, NULL),
(133, 'behavior', 'author', 'user_created', 'user-created', '{\"template\":\"{{first_name}} {{last_name}}\",\"display\":\"both\"}', 0, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(134, 'behavior', 'status', 'status', 'status', '{\"simpleBadge\":true,\"status_mapping\":{\"approved\":{\"name\":\"Published\",\"text_color\":\"white\",\"background_color\":\"accent\",\"browse_subdued\":false,\"browse_badge\":true,\"soft_delete\":false,\"published\":true},\"management_review\":{\"name\":\"Draft\",\"text_color\":\"white\",\"background_color\":\"blue-grey-200\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":false,\"published\":false},\"director_review\":{\"name\":\"Deleted\",\"text_color\":\"white\",\"background_color\":\"red\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":true,\"published\":false}}}', 0, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(136, 'injury', 'id', 'integer', 'primary-key', NULL, 0, NULL, 0, 0, 1, 1, 0, 4, NULL, NULL, NULL),
(137, 'injury', 'status', 'status', 'status', '{\"simpleBadge\":true,\"status_mapping\":{\"reviewed\":{\"name\":\"Published\",\"text_color\":\"white\",\"background_color\":\"accent\",\"browse_subdued\":false,\"browse_badge\":true,\"soft_delete\":false,\"published\":true},\"management_review\":{\"name\":\"Draft\",\"text_color\":\"white\",\"background_color\":\"blue-grey-200\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":false,\"published\":false},\"director_review\":{\"name\":\"Deleted\",\"text_color\":\"white\",\"background_color\":\"red\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":true,\"published\":false}}}', 0, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(138, 'injury', 'author', 'user_created', 'user-created', '{\"template\":\"{{first_name}} {{last_name}}\",\"display\":\"both\"}', 0, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(139, 'behavior', 'employee_name', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(140, 'behavior', 'incident_date', 'datetime', 'datetime', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\",\"min\":\"7:30\",\"max\":\"4:00\"}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(141, 'behavior', 'location', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Location of the incident', NULL),
(142, 'behavior', 'other_employees', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 0, 0, 0, 0, NULL, 4, NULL, 'Additional employees involved in the incident', NULL),
(143, 'behavior', 'description', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Describe the incident in detail', NULL),
(147, 'behavior', 'occurence', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'instance number of this type of incident', NULL),
(148, 'behavior', 'type', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Type of behavior displayed by the employee', NULL),
(149, 'behavior', 'preventative_action', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'What further action has been taken to prevent this behavior', NULL),
(150, 'injury', 'employee', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(151, 'injury', 'additional_employees', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 0, 0, 0, 0, NULL, 4, NULL, 'Name any other employees involved in the incident', NULL),
(152, 'injury', 'description', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Describe the event', NULL),
(153, 'injury', 'injury_description', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Describe the injury in detail', NULL),
(154, 'injury', 'prevention', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Describe actions taken to prevent reoccurrence of the incident', NULL),
(155, 'injury', 'treatment', 'string', 'textarea', '{\"rows\":12}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Describe the treatment the employee received', NULL),
(156, 'injury', 'time', 'datetime', 'datetime', '[]', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'time of the incident', NULL),
(157, 'injury', 'date', 'date', 'calendar', '[]', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Date of the incident', NULL),
(158, 'injury', 'location', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Location of the incident', NULL),
(159, 'employees', 'id', 'integer', 'primary-key', NULL, 0, NULL, 0, 0, 1, 1, 0, 4, NULL, NULL, NULL),
(160, 'employees', 'employee_name', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, NULL, NULL),
(161, 'supervisor', 'id', 'integer', 'primary-key', NULL, 0, NULL, 0, 0, 1, 1, 0, 4, NULL, NULL, NULL),
(162, 'supervisor', 'supervisor', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 1, 0, 0, 0, NULL, 4, NULL, 'Supervisor Name', NULL),
(163, 'location', 'id', 'integer', 'primary-key', NULL, 0, NULL, 0, 0, 1, 1, 0, 4, NULL, NULL, NULL),
(164, 'location', 'location', 'string', 'text-input', '{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"}', 0, NULL, 0, 0, 0, 0, NULL, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` int(11) UNSIGNED NOT NULL,
  `storage` varchar(50) NOT NULL DEFAULT 'local',
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `uploaded_by` int(11) UNSIGNED NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `charset` varchar(50) DEFAULT NULL,
  `filesize` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `folder` int(11) UNSIGNED DEFAULT NULL,
  `description` text,
  `location` varchar(200) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `metadata` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `parent_folder` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20180220023138, 'CreateActivityTable', '2018-11-30 10:26:04', '2018-11-30 10:26:04', 0),
(20180220023144, 'CreateActivitySeenTable', '2018-11-30 10:26:04', '2018-11-30 10:26:04', 0),
(20180220023152, 'CreateCollectionsPresetsTable', '2018-11-30 10:26:05', '2018-11-30 10:26:05', 0),
(20180220023157, 'CreateCollectionsTable', '2018-11-30 10:26:05', '2018-11-30 10:26:05', 0),
(20180220023202, 'CreateFieldsTable', '2018-11-30 10:26:05', '2018-11-30 10:26:05', 0),
(20180220023208, 'CreateFilesTable', '2018-11-30 10:26:05', '2018-11-30 10:26:06', 0),
(20180220023213, 'CreateFoldersTable', '2018-11-30 10:26:06', '2018-11-30 10:26:06', 0),
(20180220023217, 'CreateRolesTable', '2018-11-30 10:26:06', '2018-11-30 10:26:06', 0),
(20180220023226, 'CreatePermissionsTable', '2018-11-30 10:26:06', '2018-11-30 10:26:06', 0),
(20180220023232, 'CreateRelationsTable', '2018-11-30 10:26:06', '2018-11-30 10:26:07', 0),
(20180220023238, 'CreateRevisionsTable', '2018-11-30 10:26:07', '2018-11-30 10:26:07', 0),
(20180220023243, 'CreateSettingsTable', '2018-11-30 10:26:07', '2018-11-30 10:26:07', 0),
(20180220023248, 'CreateUsersTable', '2018-11-30 10:26:07', '2018-11-30 10:26:07', 0),
(20180426173310, 'CreateUserRoles', '2018-11-30 10:26:07', '2018-11-30 10:26:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `role` int(11) UNSIGNED NOT NULL,
  `status` varchar(64) DEFAULT NULL,
  `create` varchar(16) DEFAULT 'none',
  `read` varchar(16) DEFAULT 'none',
  `update` varchar(16) DEFAULT 'none',
  `delete` varchar(16) DEFAULT 'none',
  `comment` varchar(8) DEFAULT 'none',
  `explain` varchar(8) DEFAULT 'none',
  `read_field_blacklist` varchar(1000) DEFAULT NULL,
  `write_field_blacklist` varchar(1000) DEFAULT NULL,
  `status_blacklist` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `collection`, `role`, `status`, `create`, `read`, `update`, `delete`, `comment`, `explain`, `read_field_blacklist`, `write_field_blacklist`, `status_blacklist`) VALUES
(1, 'directus_activity', 3, NULL, 'full', 'mine', 'none', 'none', 'update', 'none', NULL, NULL, NULL),
(2, 'directus_activity_seen', 3, NULL, 'full', 'mine', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(3, 'directus_collection_presets', 3, NULL, 'full', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(4, 'directus_collections', 3, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(5, 'directus_fields', 3, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(6, 'directus_files', 3, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(7, 'directus_folders', 3, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(8, 'directus_permissions', 3, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(9, 'directus_relations', 3, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(10, 'directus_revisions', 3, NULL, 'full', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(11, 'directus_roles', 3, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(12, 'directus_settings', 3, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(13, 'directus_user_roles', 3, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(14, 'directus_users', 3, 'active', 'none', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(15, 'directus_users', 3, 'deleted', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(16, 'directus_users', 3, 'draft', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(17, 'directus_users', 3, 'invited', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(18, 'directus_users', 3, 'suspended', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(19, 'behavior', 3, 'approved', 'full', 'mine', 'mine', 'none', 'none', 'none', NULL, NULL, NULL),
(20, 'behavior', 3, 'management_review', 'full', 'mine', 'mine', 'none', 'none', 'none', NULL, NULL, NULL),
(21, 'behavior', 3, 'director_review', 'full', 'mine', 'mine', 'none', 'none', 'none', NULL, NULL, NULL),
(22, 'injury', 3, 'reviewed', 'full', 'mine', 'mine', 'none', 'none', 'none', NULL, NULL, NULL),
(23, 'injury', 3, 'management_review', 'full', 'mine', 'mine', 'none', 'none', 'none', NULL, NULL, NULL),
(24, 'injury', 3, 'director_review', 'full', 'mine', 'mine', 'none', 'none', 'none', NULL, NULL, NULL),
(25, 'directus_activity', 4, NULL, 'full', 'mine', 'none', 'none', 'update', 'none', NULL, NULL, NULL),
(26, 'directus_activity_seen', 4, NULL, 'full', 'mine', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(27, 'directus_collection_presets', 4, NULL, 'full', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(28, 'directus_collections', 4, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(29, 'directus_fields', 4, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(30, 'directus_files', 4, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(31, 'directus_folders', 4, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(32, 'directus_permissions', 4, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(33, 'directus_relations', 4, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(34, 'directus_revisions', 4, NULL, 'full', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(35, 'directus_roles', 4, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(36, 'directus_settings', 4, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(37, 'directus_user_roles', 4, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(38, 'directus_users', 4, 'active', 'none', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(39, 'directus_users', 4, 'deleted', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(40, 'directus_users', 4, 'draft', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(41, 'directus_users', 4, 'invited', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(42, 'directus_users', 4, 'suspended', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(43, 'behavior', 4, 'approved', 'full', 'role', 'full', 'none', 'none', 'none', NULL, NULL, NULL),
(44, 'behavior', 4, 'management_review', 'full', 'role', 'full', 'none', 'none', 'none', NULL, NULL, NULL),
(45, 'behavior', 4, 'director_review', 'full', 'role', 'full', 'none', 'none', 'none', NULL, NULL, NULL),
(46, 'injury', 4, 'reviewed', 'full', 'role', 'full', 'none', 'none', 'none', NULL, NULL, NULL),
(47, 'injury', 4, 'management_review', 'full', 'role', 'full', 'none', 'none', 'none', NULL, NULL, NULL),
(48, 'injury', 4, 'director_review', 'full', 'role', 'full', 'none', 'none', 'none', NULL, NULL, NULL),
(49, 'directus_activity', 5, NULL, 'full', 'mine', 'none', 'none', 'update', 'none', NULL, NULL, NULL),
(50, 'directus_activity_seen', 5, NULL, 'full', 'mine', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(51, 'directus_collection_presets', 5, NULL, 'full', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(52, 'directus_collections', 5, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(53, 'directus_fields', 5, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(54, 'directus_files', 5, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(55, 'directus_folders', 5, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(56, 'directus_permissions', 5, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(57, 'directus_relations', 5, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(58, 'directus_revisions', 5, NULL, 'full', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(59, 'directus_roles', 5, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(60, 'directus_settings', 5, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(61, 'directus_user_roles', 5, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(62, 'directus_users', 5, 'active', 'none', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(63, 'directus_users', 5, 'deleted', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(64, 'directus_users', 5, 'draft', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(65, 'directus_users', 5, 'invited', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(66, 'directus_users', 5, 'suspended', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(67, 'behavior', 5, 'approved', 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(68, 'behavior', 5, 'management_review', 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(69, 'behavior', 5, 'director_review', 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(70, 'injury', 5, 'reviewed', 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(71, 'injury', 5, 'management_review', 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(72, 'injury', 5, 'director_review', 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(73, 'directus_activity', 6, NULL, 'full', 'mine', 'none', 'none', 'update', 'none', NULL, NULL, NULL),
(74, 'directus_activity_seen', 6, NULL, 'full', 'mine', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(75, 'directus_collection_presets', 6, NULL, 'full', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(76, 'directus_collections', 6, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(77, 'directus_fields', 6, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(78, 'directus_files', 6, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(79, 'directus_folders', 6, NULL, 'full', 'full', 'full', 'full', 'none', 'none', NULL, NULL, NULL),
(80, 'directus_permissions', 6, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(81, 'directus_relations', 6, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(82, 'directus_revisions', 6, NULL, 'full', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(83, 'directus_roles', 6, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(84, 'directus_settings', 6, NULL, 'none', 'full', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(85, 'directus_user_roles', 6, NULL, 'none', 'mine', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(86, 'directus_users', 6, 'active', 'none', 'full', 'mine', 'mine', 'none', 'none', NULL, NULL, NULL),
(87, 'directus_users', 6, 'deleted', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(88, 'directus_users', 6, 'draft', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(89, 'directus_users', 6, 'invited', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(90, 'directus_users', 6, 'suspended', 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL),
(91, 'behavior', 6, 'approved', 'full', 'full', 'role', 'role', 'none', 'none', NULL, NULL, NULL),
(92, 'behavior', 6, 'management_review', 'full', 'full', 'role', 'role', 'none', 'none', NULL, NULL, NULL),
(93, 'behavior', 6, 'director_review', 'full', 'full', 'role', 'role', 'none', 'none', NULL, NULL, NULL),
(94, 'injury', 6, 'reviewed', 'full', 'full', 'role', 'role', 'none', 'none', NULL, NULL, NULL),
(95, 'injury', 6, 'management_review', 'full', 'full', 'role', 'role', 'none', 'none', NULL, NULL, NULL),
(96, 'injury', 6, 'director_review', 'full', 'full', 'role', 'role', 'none', 'none', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(11) UNSIGNED NOT NULL,
  `collection_many` varchar(64) NOT NULL,
  `field_many` varchar(45) NOT NULL,
  `collection_one` varchar(64) DEFAULT NULL,
  `field_one` varchar(64) DEFAULT NULL,
  `junction_field` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `collection_many`, `field_many`, `collection_one`, `field_one`, `junction_field`) VALUES
(1, 'directus_activity', 'action_by', 'directus_users', NULL, NULL),
(2, 'directus_activity_seen', 'user', 'directus_users', NULL, NULL),
(3, 'directus_activity_seen', 'activity', 'directus_activity', NULL, NULL),
(4, 'directus_collections_presets', 'user', 'directus_users', NULL, NULL),
(5, 'directus_collections_presets', 'group', 'directus_groups', NULL, NULL),
(6, 'directus_files', 'uploaded_by', 'directus_users', NULL, NULL),
(7, 'directus_files', 'folder', 'directus_folders', NULL, NULL),
(8, 'directus_folders', 'parent_folder', 'directus_folders', NULL, NULL),
(9, 'directus_permissions', 'group', 'directus_groups', NULL, NULL),
(10, 'directus_revisions', 'activity', 'directus_activity', NULL, NULL),
(11, 'directus_user_roles', 'user', 'directus_users', 'roles', 'role'),
(12, 'directus_user_roles', 'role', 'directus_roles', 'users', 'user'),
(13, 'directus_users', 'avatar', 'directus_files', NULL, NULL),
(14, 'directus_fields', 'collection', 'directus_collections', 'fields', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(11) UNSIGNED NOT NULL,
  `activity` int(11) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `delta` longtext,
  `parent_collection` varchar(64) DEFAULT NULL,
  `parent_item` varchar(255) DEFAULT NULL,
  `parent_changed` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent_collection`, `parent_item`, `parent_changed`) VALUES
(1, 2, 'directus_fields', '132', '{\"id\":\"132\",\"collection\":\"behavior\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"options\":null,\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":true,\"hidden_browse\":true,\"sort\":\"0\",\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"required\":false,\"sort\":0,\"note\":null,\"hidden_detail\":true,\"hidden_browse\":true,\"options\":null}', NULL, NULL, NULL),
(2, 3, 'directus_collections', 'behavior', '{\"collection\":\"behavior\",\"managed\":true,\"hidden\":false,\"single\":false,\"icon\":null,\"note\":null,\"translation\":null}', '{\"managed\":true,\"hidden\":0}', NULL, NULL, NULL),
(3, 4, 'directus_fields', '133', '{\"id\":\"133\",\"collection\":\"behavior\",\"field\":\"author\",\"type\":\"user_created\",\"interface\":\"user-created\",\"options\":{\"template\":\"{{first_name}} {{last_name}}\",\"display\":\"both\"},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"author\",\"type\":\"user_created\",\"interface\":\"user-created\",\"required\":false,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"template\":\"{{first_name}} {{last_name}}\",\"display\":\"both\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(4, 5, 'directus_fields', '134', '{\"id\":\"134\",\"collection\":\"behavior\",\"field\":\"status\",\"type\":\"status\",\"interface\":\"status\",\"options\":{\"simpleBadge\":true,\"status_mapping\":{\"approved\":{\"name\":\"Published\",\"text_color\":\"white\",\"background_color\":\"accent\",\"browse_subdued\":false,\"browse_badge\":true,\"soft_delete\":false,\"published\":true},\"management_review\":{\"name\":\"Draft\",\"text_color\":\"white\",\"background_color\":\"blue-grey-200\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":false,\"published\":false},\"director_review\":{\"name\":\"Deleted\",\"text_color\":\"white\",\"background_color\":\"red\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":true,\"published\":false}}},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"status\",\"type\":\"status\",\"interface\":\"status\",\"required\":false,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"simpleBadge\":true,\"status_mapping\":{\"approved\":{\"name\":\"Published\",\"text_color\":\"white\",\"background_color\":\"accent\",\"browse_subdued\":false,\"browse_badge\":true,\"soft_delete\":false,\"published\":true},\"management_review\":{\"name\":\"Draft\",\"text_color\":\"white\",\"background_color\":\"blue-grey-200\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":false,\"published\":false},\"director_review\":{\"name\":\"Deleted\",\"text_color\":\"white\",\"background_color\":\"red\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":true,\"published\":false}}},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(5, 6, 'directus_fields', '135', '{\"id\":\"135\",\"collection\":\"injury\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"options\":null,\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":true,\"hidden_browse\":true,\"sort\":\"0\",\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"required\":false,\"sort\":0,\"note\":null,\"hidden_detail\":true,\"hidden_browse\":true,\"options\":null}', NULL, NULL, NULL),
(6, 7, 'directus_collections', 'injury', '{\"collection\":\"injury\",\"managed\":true,\"hidden\":false,\"single\":false,\"icon\":null,\"note\":null,\"translation\":null}', '{\"managed\":true,\"hidden\":0}', NULL, NULL, NULL),
(7, 8, 'directus_fields', '136', '{\"id\":\"136\",\"collection\":\"injury\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"options\":null,\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":true,\"hidden_browse\":true,\"sort\":\"0\",\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"required\":false,\"sort\":0,\"note\":null,\"hidden_detail\":true,\"hidden_browse\":true,\"options\":null}', NULL, NULL, NULL),
(8, 9, 'directus_collections', 'injury', '{\"collection\":\"injury\",\"managed\":true,\"hidden\":false,\"single\":false,\"icon\":null,\"note\":null,\"translation\":null}', '{\"managed\":true,\"hidden\":0}', NULL, NULL, NULL),
(9, 10, 'directus_fields', '137', '{\"id\":\"137\",\"collection\":\"injury\",\"field\":\"status\",\"type\":\"status\",\"interface\":\"status\",\"options\":{\"simpleBadge\":true,\"status_mapping\":{\"reviewed\":{\"name\":\"Published\",\"text_color\":\"white\",\"background_color\":\"accent\",\"browse_subdued\":false,\"browse_badge\":true,\"soft_delete\":false,\"published\":true},\"management_review\":{\"name\":\"Draft\",\"text_color\":\"white\",\"background_color\":\"blue-grey-200\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":false,\"published\":false},\"director_review\":{\"name\":\"Deleted\",\"text_color\":\"white\",\"background_color\":\"red\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":true,\"published\":false}}},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"status\",\"type\":\"status\",\"interface\":\"status\",\"required\":false,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"simpleBadge\":true,\"status_mapping\":{\"reviewed\":{\"name\":\"Published\",\"text_color\":\"white\",\"background_color\":\"accent\",\"browse_subdued\":false,\"browse_badge\":true,\"soft_delete\":false,\"published\":true},\"management_review\":{\"name\":\"Draft\",\"text_color\":\"white\",\"background_color\":\"blue-grey-200\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":false,\"published\":false},\"director_review\":{\"name\":\"Deleted\",\"text_color\":\"white\",\"background_color\":\"red\",\"browse_subdued\":true,\"browse_badge\":true,\"soft_delete\":true,\"published\":false}}},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(10, 11, 'directus_fields', '138', '{\"id\":\"138\",\"collection\":\"injury\",\"field\":\"author\",\"type\":\"user_created\",\"interface\":\"user-created\",\"options\":{\"template\":\"{{first_name}} {{last_name}}\",\"display\":\"both\"},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"author\",\"type\":\"user_created\",\"interface\":\"user-created\",\"required\":false,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"template\":\"{{first_name}} {{last_name}}\",\"display\":\"both\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(11, 13, 'directus_roles', '3', '{\"id\":\"3\",\"name\":\"Supervisor\",\"description\":null,\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"5496b5f9-ffeb-43d9-8f93-03dcb54868eb\"}', '{\"name\":\"Supervisor\"}', NULL, NULL, NULL),
(12, 14, 'directus_roles', '3', '{\"id\":\"3\",\"name\":\"Supervisor\",\"description\":\"Role for team supervisors. Only able to edit and read their own form s.\",\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"5496b5f9-ffeb-43d9-8f93-03dcb54868eb\"}', '{\"description\":\"Role for team supervisors. Only able to edit and read their own form s.\"}', NULL, NULL, NULL),
(13, 15, 'directus_permissions', '19', '{\"id\":\"19\",\"collection\":\"behavior\",\"role\":\"3\",\"status\":\"approved\",\"create\":\"none\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"approved\",\"role\":3,\"read\":\"mine\",\"update\":\"mine\"}', NULL, NULL, NULL),
(14, 16, 'directus_permissions', '20', '{\"id\":\"20\",\"collection\":\"behavior\",\"role\":\"3\",\"status\":\"management_review\",\"create\":\"none\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"management_review\",\"role\":3,\"read\":\"mine\",\"update\":\"mine\"}', NULL, NULL, NULL),
(15, 17, 'directus_permissions', '21', '{\"id\":\"21\",\"collection\":\"behavior\",\"role\":\"3\",\"status\":\"director_review\",\"create\":\"none\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"director_review\",\"role\":3,\"read\":\"mine\",\"update\":\"mine\"}', NULL, NULL, NULL),
(16, 18, 'directus_permissions', '22', '{\"id\":\"22\",\"collection\":\"injury\",\"role\":\"3\",\"status\":\"reviewed\",\"create\":\"none\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"reviewed\",\"role\":3,\"read\":\"mine\",\"update\":\"mine\"}', NULL, NULL, NULL),
(17, 19, 'directus_permissions', '23', '{\"id\":\"23\",\"collection\":\"injury\",\"role\":\"3\",\"status\":\"management_review\",\"create\":\"none\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"management_review\",\"role\":3,\"read\":\"mine\",\"update\":\"mine\"}', NULL, NULL, NULL),
(18, 20, 'directus_permissions', '24', '{\"id\":\"24\",\"collection\":\"injury\",\"role\":\"3\",\"status\":\"director_review\",\"create\":\"none\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"director_review\",\"role\":3,\"read\":\"mine\",\"update\":\"mine\"}', NULL, NULL, NULL),
(19, 21, 'directus_roles', '4', '{\"id\":\"4\",\"name\":\"Management\",\"description\":null,\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"2f8de5c4-5162-4663-9b65-6e6c7f05c6b9\"}', '{\"name\":\"Management\"}', NULL, NULL, NULL),
(20, 22, 'directus_roles', '4', '{\"id\":\"4\",\"name\":\"Management\",\"description\":\"Production management role\",\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"2f8de5c4-5162-4663-9b65-6e6c7f05c6b9\"}', '{\"description\":\"Production management role\"}', NULL, NULL, NULL),
(21, 23, 'directus_permissions', '43', '{\"id\":\"43\",\"collection\":\"behavior\",\"role\":\"4\",\"status\":\"approved\",\"create\":\"full\",\"read\":\"role\",\"update\":\"full\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"approved\",\"role\":4,\"read\":\"role\",\"update\":\"full\",\"create\":\"full\"}', NULL, NULL, NULL),
(22, 24, 'directus_permissions', '44', '{\"id\":\"44\",\"collection\":\"behavior\",\"role\":\"4\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"role\",\"update\":\"full\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"management_review\",\"role\":4,\"read\":\"role\",\"update\":\"full\",\"create\":\"full\"}', NULL, NULL, NULL),
(23, 25, 'directus_permissions', '45', '{\"id\":\"45\",\"collection\":\"behavior\",\"role\":\"4\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"role\",\"update\":\"full\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"director_review\",\"role\":4,\"read\":\"role\",\"update\":\"full\",\"create\":\"full\"}', NULL, NULL, NULL),
(24, 26, 'directus_permissions', '46', '{\"id\":\"46\",\"collection\":\"injury\",\"role\":\"4\",\"status\":\"reviewed\",\"create\":\"full\",\"read\":\"role\",\"update\":\"full\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"reviewed\",\"role\":4,\"read\":\"role\",\"update\":\"full\",\"create\":\"full\"}', NULL, NULL, NULL),
(25, 27, 'directus_permissions', '47', '{\"id\":\"47\",\"collection\":\"injury\",\"role\":\"4\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"role\",\"update\":\"full\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"management_review\",\"role\":4,\"read\":\"role\",\"update\":\"full\",\"create\":\"full\"}', NULL, NULL, NULL),
(26, 28, 'directus_permissions', '48', '{\"id\":\"48\",\"collection\":\"injury\",\"role\":\"4\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"role\",\"update\":\"full\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"director_review\",\"role\":4,\"read\":\"role\",\"update\":\"full\",\"create\":\"full\"}', NULL, NULL, NULL),
(27, 29, 'directus_permissions', '19', '{\"id\":\"19\",\"collection\":\"behavior\",\"role\":\"3\",\"status\":\"approved\",\"create\":\"full\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"create\":\"full\"}', NULL, NULL, NULL),
(28, 30, 'directus_permissions', '20', '{\"id\":\"20\",\"collection\":\"behavior\",\"role\":\"3\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"create\":\"full\"}', NULL, NULL, NULL),
(29, 31, 'directus_permissions', '21', '{\"id\":\"21\",\"collection\":\"behavior\",\"role\":\"3\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"create\":\"full\"}', NULL, NULL, NULL),
(30, 32, 'directus_permissions', '22', '{\"id\":\"22\",\"collection\":\"injury\",\"role\":\"3\",\"status\":\"reviewed\",\"create\":\"full\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"create\":\"full\"}', NULL, NULL, NULL),
(31, 33, 'directus_permissions', '23', '{\"id\":\"23\",\"collection\":\"injury\",\"role\":\"3\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"create\":\"full\"}', NULL, NULL, NULL),
(32, 34, 'directus_permissions', '24', '{\"id\":\"24\",\"collection\":\"injury\",\"role\":\"3\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"mine\",\"update\":\"mine\",\"delete\":\"none\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"create\":\"full\"}', NULL, NULL, NULL),
(33, 35, 'directus_roles', '5', '{\"id\":\"5\",\"name\":\"Employee Development Program role. Able to view, edit, and delete all.\",\"description\":null,\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"aea871fd-2943-4531-a6db-578115a32c29\"}', '{\"name\":\"Employee Development Program role. Able to view, edit, and delete all.\"}', NULL, NULL, NULL),
(34, 36, 'directus_permissions', '67', '{\"id\":\"67\",\"collection\":\"behavior\",\"role\":\"5\",\"status\":\"approved\",\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"approved\",\"role\":5,\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\"}', NULL, NULL, NULL),
(35, 37, 'directus_permissions', '68', '{\"id\":\"68\",\"collection\":\"behavior\",\"role\":\"5\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"management_review\",\"role\":5,\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\"}', NULL, NULL, NULL),
(36, 38, 'directus_permissions', '69', '{\"id\":\"69\",\"collection\":\"behavior\",\"role\":\"5\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"director_review\",\"role\":5,\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\"}', NULL, NULL, NULL),
(37, 39, 'directus_permissions', '70', '{\"id\":\"70\",\"collection\":\"injury\",\"role\":\"5\",\"status\":\"reviewed\",\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"reviewed\",\"role\":5,\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\"}', NULL, NULL, NULL),
(38, 40, 'directus_permissions', '71', '{\"id\":\"71\",\"collection\":\"injury\",\"role\":\"5\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"management_review\",\"role\":5,\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\"}', NULL, NULL, NULL),
(39, 41, 'directus_permissions', '72', '{\"id\":\"72\",\"collection\":\"injury\",\"role\":\"5\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"director_review\",\"role\":5,\"create\":\"full\",\"read\":\"full\",\"update\":\"full\",\"delete\":\"full\"}', NULL, NULL, NULL),
(40, 42, 'directus_roles', '5', '{\"id\":\"5\",\"name\":\"EDP\",\"description\":\"Employee Development Program role. Able to view, edit, and delete all.\",\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"aea871fd-2943-4531-a6db-578115a32c29\"}', '{\"description\":\"Employee Development Program role. Able to view, edit, and delete all.\",\"name\":\"EDP\"}', NULL, NULL, NULL),
(41, 43, 'directus_roles', '6', '{\"id\":\"6\",\"name\":\"Executive\",\"description\":null,\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"8d6d0a7d-436c-49f2-b0ed-b70b5e369e5b\"}', '{\"name\":\"Executive\"}', NULL, NULL, NULL),
(42, 44, 'directus_roles', '6', '{\"id\":\"6\",\"name\":\"Executive\",\"description\":\"Able to create and read forms. Unable to delete or edit.\",\"ip_whitelist\":null,\"nav_blacklist\":null,\"external_id\":\"8d6d0a7d-436c-49f2-b0ed-b70b5e369e5b\"}', '{\"description\":\"Able to create and read forms. Unable to delete or edit.\"}', NULL, NULL, NULL),
(43, 45, 'directus_permissions', '91', '{\"id\":\"91\",\"collection\":\"behavior\",\"role\":\"6\",\"status\":\"approved\",\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"approved\",\"role\":6,\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\"}', NULL, NULL, NULL),
(44, 46, 'directus_permissions', '92', '{\"id\":\"92\",\"collection\":\"behavior\",\"role\":\"6\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"management_review\",\"role\":6,\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\"}', NULL, NULL, NULL),
(45, 47, 'directus_permissions', '93', '{\"id\":\"93\",\"collection\":\"behavior\",\"role\":\"6\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"behavior\",\"status\":\"director_review\",\"role\":6,\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\"}', NULL, NULL, NULL),
(46, 48, 'directus_permissions', '94', '{\"id\":\"94\",\"collection\":\"injury\",\"role\":\"6\",\"status\":\"reviewed\",\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"reviewed\",\"role\":6,\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\"}', NULL, NULL, NULL),
(47, 49, 'directus_permissions', '95', '{\"id\":\"95\",\"collection\":\"injury\",\"role\":\"6\",\"status\":\"management_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"management_review\",\"role\":6,\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\"}', NULL, NULL, NULL),
(48, 50, 'directus_permissions', '96', '{\"id\":\"96\",\"collection\":\"injury\",\"role\":\"6\",\"status\":\"director_review\",\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\",\"comment\":\"none\",\"explain\":\"none\",\"read_field_blacklist\":[],\"write_field_blacklist\":[],\"status_blacklist\":[]}', '{\"collection\":\"injury\",\"status\":\"director_review\",\"role\":6,\"create\":\"full\",\"read\":\"full\",\"update\":\"role\",\"delete\":\"role\"}', NULL, NULL, NULL),
(49, 51, 'directus_fields', '139', '{\"id\":\"139\",\"collection\":\"behavior\",\"field\":\"employee_name\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"employee_name\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":false,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(50, 52, 'directus_fields', '140', '{\"id\":\"140\",\"collection\":\"behavior\",\"field\":\"incident_date\",\"type\":\"datetime\",\"interface\":\"datetime\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\",\"min\":\"7:30\",\"max\":\"4:00\"},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"incident_date\",\"type\":\"datetime\",\"interface\":\"datetime\",\"required\":true,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\",\"min\":\"7:30\",\"max\":\"4:00\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(51, 53, 'directus_fields', '139', '{\"id\":\"139\",\"collection\":\"behavior\",\"field\":\"employee_name\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"sort\":null,\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"required\":true,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"validation\":null}', NULL, NULL, NULL),
(52, 54, 'directus_fields', '141', '{\"id\":\"141\",\"collection\":\"behavior\",\"field\":\"location\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Location of the incident\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"location\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":true,\"sort\":null,\"note\":\"Location of the incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(53, 55, 'directus_fields', '142', '{\"id\":\"142\",\"collection\":\"behavior\",\"field\":\"other_employees\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Additional employees involved in the incident\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"other_employees\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":false,\"sort\":null,\"note\":\"Additional employees involved in the incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(54, 56, 'directus_fields', '143', '{\"id\":\"143\",\"collection\":\"behavior\",\"field\":\"description\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe the incident in detail\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"description\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe the incident in detail\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(55, 57, 'directus_fields', '144', '{\"id\":\"144\",\"collection\":\"behavior\",\"field\":\"injury_description\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe the injury in detail\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"injury_description\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe the injury in detail\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(56, 58, 'directus_fields', '145', '{\"id\":\"145\",\"collection\":\"behavior\",\"field\":\"injury_prevention\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe the steps taken to make sure the incident does not happen again\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"injury_prevention\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe the steps taken to make sure the incident does not happen again\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(57, 59, 'directus_fields', '146', '{\"id\":\"146\",\"collection\":\"behavior\",\"field\":\"treatment\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe the treatment that was given to the employee\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"treatment\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe the treatment that was given to the employee\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(58, 60, 'directus_fields', '147', '{\"id\":\"147\",\"collection\":\"behavior\",\"field\":\"occurence\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"instance number of this type of incident\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"occurence\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"instance number of this type of incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(59, 61, 'directus_fields', '148', '{\"id\":\"148\",\"collection\":\"behavior\",\"field\":\"type\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Type of behavior displayed by the employee\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"type\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Type of behavior displayed by the employee\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(60, 62, 'directus_fields', '149', '{\"id\":\"149\",\"collection\":\"behavior\",\"field\":\"preventative_action\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"What further action has been taken to prevent this behavior\",\"translation\":null}', '{\"collection\":\"behavior\",\"field\":\"preventative_action\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"What further action has been taken to prevent this behavior\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(61, 63, 'directus_fields', '150', '{\"id\":\"150\",\"collection\":\"injury\",\"field\":\"employee\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"employee\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":true,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(62, 64, 'directus_fields', '151', '{\"id\":\"151\",\"collection\":\"injury\",\"field\":\"additional_employees\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Name any other employees involved in the incident\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"additional_employees\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":false,\"sort\":null,\"note\":\"Name any other employees involved in the incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(63, 65, 'directus_fields', '152', '{\"id\":\"152\",\"collection\":\"injury\",\"field\":\"description\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe the event\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"description\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe the event\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(64, 66, 'directus_fields', '153', '{\"id\":\"153\",\"collection\":\"injury\",\"field\":\"injury_description\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe the injury in detail\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"injury_description\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe the injury in detail\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(65, 67, 'directus_fields', '154', '{\"id\":\"154\",\"collection\":\"injury\",\"field\":\"prevention\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe actions taken to prevent reoccurrence of the incident\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"prevention\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe actions taken to prevent reoccurrence of the incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(66, 68, 'directus_fields', '155', '{\"id\":\"155\",\"collection\":\"injury\",\"field\":\"treatment\",\"type\":\"string\",\"interface\":\"textarea\",\"options\":{\"rows\":12},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Describe the treatment the employee received\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"treatment\",\"type\":\"string\",\"interface\":\"textarea\",\"required\":true,\"sort\":null,\"note\":\"Describe the treatment the employee received\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"rows\":12},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(67, 69, 'directus_fields', '156', '{\"id\":\"156\",\"collection\":\"injury\",\"field\":\"time\",\"type\":\"datetime\",\"interface\":\"datetime\",\"options\":[],\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"time of the incident\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"time\",\"type\":\"datetime\",\"interface\":\"datetime\",\"required\":true,\"sort\":null,\"note\":\"time of the incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":[],\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(68, 70, 'directus_fields', '157', '{\"id\":\"157\",\"collection\":\"injury\",\"field\":\"date\",\"type\":\"date\",\"interface\":\"calendar\",\"options\":[],\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Date of the incident\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"date\",\"type\":\"date\",\"interface\":\"calendar\",\"required\":true,\"sort\":null,\"note\":\"Date of the incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":[],\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(69, 71, 'directus_fields', '158', '{\"id\":\"158\",\"collection\":\"injury\",\"field\":\"location\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Location of the incident\",\"translation\":null}', '{\"collection\":\"injury\",\"field\":\"location\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":true,\"sort\":null,\"note\":\"Location of the incident\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(70, 72, 'directus_fields', '159', '{\"id\":\"159\",\"collection\":\"employees\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"options\":null,\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":true,\"hidden_browse\":true,\"sort\":\"0\",\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"employees\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"required\":false,\"sort\":0,\"note\":null,\"hidden_detail\":true,\"hidden_browse\":true,\"options\":null}', NULL, NULL, NULL),
(71, 73, 'directus_collections', 'employees', '{\"collection\":\"employees\",\"managed\":true,\"hidden\":false,\"single\":false,\"icon\":null,\"note\":null,\"translation\":null}', '{\"managed\":true,\"hidden\":0}', NULL, NULL, NULL),
(72, 74, 'directus_fields', '160', '{\"id\":\"160\",\"collection\":\"employees\",\"field\":\"employee_name\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"employees\",\"field\":\"employee_name\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":true,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(73, 75, 'directus_fields', '161', '{\"id\":\"161\",\"collection\":\"supervisor\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"options\":null,\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":true,\"hidden_browse\":true,\"sort\":\"0\",\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"supervisor\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"required\":false,\"sort\":0,\"note\":null,\"hidden_detail\":true,\"hidden_browse\":true,\"options\":null}', NULL, NULL, NULL),
(74, 76, 'directus_collections', 'supervisor', '{\"collection\":\"supervisor\",\"managed\":true,\"hidden\":false,\"single\":false,\"icon\":null,\"note\":null,\"translation\":null}', '{\"managed\":true,\"hidden\":0}', NULL, NULL, NULL),
(75, 77, 'directus_fields', '162', '{\"id\":\"162\",\"collection\":\"supervisor\",\"field\":\"supervisor\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":true,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":\"Supervisor Name\",\"translation\":null}', '{\"collection\":\"supervisor\",\"field\":\"supervisor\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":true,\"sort\":null,\"note\":\"Supervisor Name\",\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(76, 78, 'directus_fields', '163', '{\"id\":\"163\",\"collection\":\"location\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"options\":null,\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":true,\"hidden_browse\":true,\"sort\":\"0\",\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"location\",\"field\":\"id\",\"type\":\"integer\",\"interface\":\"primary-key\",\"required\":false,\"sort\":0,\"note\":null,\"hidden_detail\":true,\"hidden_browse\":true,\"options\":null}', NULL, NULL, NULL),
(77, 79, 'directus_collections', 'location', '{\"collection\":\"location\",\"managed\":true,\"hidden\":false,\"single\":false,\"icon\":null,\"note\":null,\"translation\":null}', '{\"managed\":true,\"hidden\":0}', NULL, NULL, NULL),
(78, 80, 'directus_fields', '164', '{\"id\":\"164\",\"collection\":\"location\",\"field\":\"location\",\"type\":\"string\",\"interface\":\"text-input\",\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"locked\":false,\"validation\":null,\"required\":false,\"readonly\":false,\"hidden_detail\":false,\"hidden_browse\":false,\"sort\":null,\"width\":\"4\",\"group\":null,\"note\":null,\"translation\":null}', '{\"collection\":\"location\",\"field\":\"location\",\"type\":\"string\",\"interface\":\"text-input\",\"required\":false,\"sort\":null,\"note\":null,\"hidden_detail\":false,\"hidden_browse\":false,\"options\":{\"trim\":true,\"showCharacterCount\":true,\"formatValue\":false,\"width\":\"auto\"},\"readonly\":false,\"validation\":null}', NULL, NULL, NULL),
(79, 83, 'employees', '1', '{\"id\":\"1\",\"employee_name\":\"Jane Doe\"}', '{\"employee_name\":\"Jane Doe\"}', NULL, NULL, NULL),
(80, 84, 'employees', '2', '{\"id\":\"2\",\"employee_name\":\"Luke Skywalker\"}', '{\"employee_name\":\"Luke Skywalker\"}', NULL, NULL, NULL),
(81, 85, 'employees', '3', '{\"id\":\"3\",\"employee_name\":\"Leia Organa\"}', '{\"employee_name\":\"Leia Organa\"}', NULL, NULL, NULL),
(82, 86, 'employees', '4', '{\"id\":\"4\",\"employee_name\":\"Yoda\"}', '{\"employee_name\":\"Yoda\"}', NULL, NULL, NULL),
(83, 87, 'location', '1', '{\"id\":\"1\",\"location\":\"Area 1\"}', '{\"location\":\"Area 1\"}', NULL, NULL, NULL),
(84, 88, 'location', '1', '{\"id\":\"1\",\"location\":\"Area 2\"}', '{\"location\":\"Area 2\"}', NULL, NULL, NULL),
(85, 89, 'location', '2', '{\"id\":\"2\",\"location\":\"Area 1\"}', '{\"location\":\"Area 1\"}', NULL, NULL, NULL),
(86, 90, 'location', '3', '{\"id\":\"3\",\"location\":\"Area 3\"}', '{\"location\":\"Area 3\"}', NULL, NULL, NULL),
(87, 91, 'location', '4', '{\"id\":\"4\",\"location\":\"Area 4\"}', '{\"location\":\"Area 4\"}', NULL, NULL, NULL),
(88, 92, 'location', '5', '{\"id\":\"5\",\"location\":\"Bathroom\"}', '{\"location\":\"Bathroom\"}', NULL, NULL, NULL),
(89, 93, 'location', '6', '{\"id\":\"6\",\"location\":\"Cafeteria\"}', '{\"location\":\"Cafeteria\"}', NULL, NULL, NULL),
(90, 94, 'location', '7', '{\"id\":\"7\",\"location\":\"Lobby\"}', '{\"location\":\"Lobby\"}', NULL, NULL, NULL),
(91, 95, 'location', '8', '{\"id\":\"8\",\"location\":\"Front entrance\"}', '{\"location\":\"Front entrance\"}', NULL, NULL, NULL),
(92, 96, 'location', '9', '{\"id\":\"9\",\"location\":\"Lockers\"}', '{\"location\":\"Lockers\"}', NULL, NULL, NULL),
(93, 97, 'supervisor', '1', '{\"id\":\"1\",\"supervisor\":\"Bruce Wayne\"}', '{\"supervisor\":\"Bruce Wayne\"}', NULL, NULL, NULL),
(94, 98, 'supervisor', '2', '{\"id\":\"2\",\"supervisor\":\"Barbara Gordon\"}', '{\"supervisor\":\"Barbara Gordon\"}', NULL, NULL, NULL),
(95, 99, 'supervisor', '3', '{\"id\":\"3\",\"supervisor\":\"Selina Kyle\"}', '{\"supervisor\":\"Selina Kyle\"}', NULL, NULL, NULL),
(96, 100, 'supervisor', '4', '{\"id\":\"4\",\"supervisor\":\"Harvey Dent\"}', '{\"supervisor\":\"Harvey Dent\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `ip_whitelist` text,
  `nav_blacklist` text,
  `external_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `description`, `ip_whitelist`, `nav_blacklist`, `external_id`) VALUES
(1, 'Administrator', 'Admins have access to all managed data within the system by default', NULL, NULL, NULL),
(2, 'Public', 'This sets the data that is publicly available through the API without a token', NULL, NULL, NULL),
(3, 'Supervisor', 'Role for team supervisors. Only able to edit and read their own form s.', NULL, NULL, '5496b5f9-ffeb-43d9-8f93-03dcb54868eb'),
(4, 'Management', 'Production management role', NULL, NULL, '2f8de5c4-5162-4663-9b65-6e6c7f05c6b9'),
(5, 'EDP', 'Employee Development Program role. Able to view, edit, and delete all.', NULL, NULL, 'aea871fd-2943-4531-a6db-578115a32c29'),
(6, 'Executive', 'Able to create and read forms. Unable to delete or edit.', NULL, NULL, '8d6d0a7d-436c-49f2-b0ed-b70b5e369e5b');

-- --------------------------------------------------------

--
-- Table structure for table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `scope` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `scope`, `key`, `value`) VALUES
(1, 'global', 'auto_sign_out', '60'),
(2, 'global', 'project_name', 'Directus'),
(3, 'global', 'default_limit', '200'),
(4, 'global', 'logo', ''),
(5, 'global', 'color', 'light-blue-600'),
(6, 'files', 'youtube_api_key', '');

-- --------------------------------------------------------

--
-- Table structure for table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'draft',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `timezone` varchar(32) NOT NULL DEFAULT 'America/New_York',
  `locale` varchar(8) DEFAULT 'en-US',
  `locale_options` text,
  `avatar` int(11) UNSIGNED DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `email_notifications` int(1) NOT NULL DEFAULT '1',
  `last_access_on` datetime DEFAULT NULL,
  `last_page` varchar(45) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_users`
--

INSERT INTO `directus_users` (`id`, `status`, `first_name`, `last_name`, `email`, `password`, `token`, `timezone`, `locale`, `locale_options`, `avatar`, `company`, `title`, `email_notifications`, `last_access_on`, `last_page`, `external_id`) VALUES
(1, 'active', 'Admin', 'User', 'cole.hellman@slu.edu', '$2y$10$LdIUvoeVucf9pqeGWZxRAO8RdNXUOYNW0UPCsuEXhbbffGbWy4b1.', NULL, 'America/New_York', 'en-US', NULL, NULL, NULL, NULL, 1, '2018-12-13 06:53:05', '/collections/behavior/+', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_user_roles`
--

CREATE TABLE `directus_user_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `role` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_user_roles`
--

INSERT INTO `directus_user_roles` (`id`, `user`, `role`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(15) UNSIGNED NOT NULL,
  `employee_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_name`) VALUES
(1, 'Jane Doe'),
(2, 'Luke Skywalker'),
(3, 'Leia Organa'),
(4, 'Yoda');

-- --------------------------------------------------------

--
-- Table structure for table `injury`
--

CREATE TABLE `injury` (
  `id` int(15) UNSIGNED NOT NULL,
  `status` varchar(20) DEFAULT 'draft',
  `author` int(10) UNSIGNED DEFAULT NULL,
  `employee` varchar(200) DEFAULT NULL,
  `additional_employees` varchar(2000) DEFAULT NULL COMMENT 'Name any other employees involved in the incident',
  `description` varchar(2000) DEFAULT NULL COMMENT 'Describe the event',
  `injury_description` varchar(2000) DEFAULT NULL COMMENT 'Describe the injury in detail',
  `prevention` varchar(2000) DEFAULT NULL COMMENT 'Describe actions taken to prevent reoccurrence of the incident',
  `treatment` varchar(2000) DEFAULT NULL COMMENT 'Describe the treatment the employee received',
  `time` datetime DEFAULT NULL COMMENT 'time of the incident',
  `date` date DEFAULT NULL COMMENT 'Date of the incident',
  `location` varchar(200) DEFAULT NULL COMMENT 'Location of the incident'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(15) UNSIGNED NOT NULL,
  `location` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`) VALUES
(1, 'Area 2'),
(2, 'Area 1'),
(3, 'Area 3'),
(4, 'Area 4'),
(5, 'Bathroom'),
(6, 'Cafeteria'),
(7, 'Lobby'),
(8, 'Front entrance'),
(9, 'Lockers');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `id` int(15) UNSIGNED NOT NULL,
  `supervisor` varchar(200) DEFAULT NULL COMMENT 'Supervisor Name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id`, `supervisor`) VALUES
(1, 'Bruce Wayne'),
(2, 'Barbara Gordon'),
(3, 'Selina Kyle'),
(4, 'Harvey Dent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `behavior`
--
ALTER TABLE `behavior`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_activity_seen`
--
ALTER TABLE `directus_activity_seen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`);

--
-- Indexes for table `directus_collection_presets`
--
ALTER TABLE `directus_collection_presets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_user_collection_title` (`user`,`collection`,`title`);

--
-- Indexes for table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_collection_field` (`collection`,`field`);

--
-- Indexes for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_parent_folder` (`name`,`parent_folder`);

--
-- Indexes for table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_group_name` (`name`),
  ADD UNIQUE KEY `idx_roles_external_id` (`external_id`);

--
-- Indexes for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_scope_name` (`scope`,`key`);

--
-- Indexes for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_users_email` (`email`),
  ADD UNIQUE KEY `idx_users_token` (`token`),
  ADD UNIQUE KEY `idx_users_external_id` (`external_id`);

--
-- Indexes for table `directus_user_roles`
--
ALTER TABLE `directus_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_user_role` (`user`,`role`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `injury`
--
ALTER TABLE `injury`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `behavior`
--
ALTER TABLE `behavior`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `directus_activity_seen`
--
ALTER TABLE `directus_activity_seen`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directus_collection_presets`
--
ALTER TABLE `directus_collection_presets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `directus_files`
--
ALTER TABLE `directus_files`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directus_folders`
--
ALTER TABLE `directus_folders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `directus_roles`
--
ALTER TABLE `directus_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `directus_users`
--
ALTER TABLE `directus_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `directus_user_roles`
--
ALTER TABLE `directus_user_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `injury`
--
ALTER TABLE `injury`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
