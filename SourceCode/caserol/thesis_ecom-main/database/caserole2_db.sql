-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 07:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caserole2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` char(36) NOT NULL,
  `cookie_id` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `status` enum('active','archived') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(2, 'Åland Islands', 'AX', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(3, 'Albania', 'AL', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(4, 'Algeria', 'DZ', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(5, 'American Samoa', 'AS', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(6, 'Andorra', 'AD', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(7, 'Angola', 'AO', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(8, 'Anguilla', 'AI', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(9, 'Antarctica', 'AQ', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(10, 'Antigua and Barbuda', 'AG', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(11, 'Argentina', 'AR', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(12, 'Armenia', 'AM', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(13, 'Aruba', 'AW', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(14, 'Australia', 'AU', '2023-07-03 20:40:10', '2023-07-03 20:40:10'),
(15, 'Austria', 'AT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(16, 'Azerbaijan', 'AZ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(17, 'Bahamas', 'BS', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(18, 'Bahrain', 'BH', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(19, 'Bangladesh', 'BD', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(20, 'Barbados', 'BB', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(21, 'Belarus', 'BY', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(22, 'Belgium', 'BE', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(23, 'Belize', 'BZ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(24, 'Benin', 'BJ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(25, 'Bermuda', 'BM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(26, 'Bhutan', 'BT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(27, 'Bolivia, Plurinational State of', 'BO', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(29, 'Bosnia and Herzegovina', 'BA', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(30, 'Botswana', 'BW', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(31, 'Bouvet Island', 'BV', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(32, 'Brazil', 'BR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(33, 'British Indian Ocean Territory', 'IO', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(34, 'Brunei Darussalam', 'BN', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(35, 'Bulgaria', 'BG', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(36, 'Burkina Faso', 'BF', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(37, 'Burundi', 'BI', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(38, 'Cambodia', 'KH', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(39, 'Cameroon', 'CM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(40, 'Canada', 'CA', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(41, 'Cape Verde', 'CV', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(42, 'Cayman Islands', 'KY', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(43, 'Central African Republic', 'CF', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(44, 'Chad', 'TD', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(45, 'Chile', 'CL', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(46, 'China', 'CN', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(47, 'Christmas Island', 'CX', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(48, 'Cocos (Keeling) Islands', 'CC', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(49, 'Colombia', 'CO', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(50, 'Comoros', 'KM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(51, 'Congo', 'CG', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(52, 'Congo, the Democratic Republic of the', 'CD', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(53, 'Cook Islands', 'CK', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(54, 'Costa Rica', 'CR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(55, 'Côte d\'Ivoire', 'CI', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(56, 'Croatia', 'HR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(57, 'Cuba', 'CU', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(58, 'Curaçao', 'CW', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(59, 'Cyprus', 'CY', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(60, 'Czech Republic', 'CZ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(61, 'Denmark', 'DK', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(62, 'Djibouti', 'DJ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(63, 'Dominica', 'DM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(64, 'Dominican Republic', 'DO', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(65, 'Ecuador', 'EC', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(66, 'Egypt', 'EG', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(67, 'El Salvador', 'SV', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(68, 'Equatorial Guinea', 'GQ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(69, 'Eritrea', 'ER', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(70, 'Estonia', 'EE', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(71, 'Ethiopia', 'ET', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(72, 'Falkland Islands (Malvinas)', 'FK', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(73, 'Faroe Islands', 'FO', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(74, 'Fiji', 'FJ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(75, 'Finland', 'FI', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(76, 'France', 'FR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(77, 'French Guiana', 'GF', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(78, 'French Polynesia', 'PF', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(79, 'French Southern Territories', 'TF', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(80, 'Gabon', 'GA', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(81, 'Gambia', 'GM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(82, 'Georgia', 'GE', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(83, 'Germany', 'DE', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(84, 'Ghana', 'GH', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(85, 'Gibraltar', 'GI', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(86, 'Greece', 'GR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(87, 'Greenland', 'GL', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(88, 'Grenada', 'GD', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(89, 'Guadeloupe', 'GP', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(90, 'Guam', 'GU', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(91, 'Guatemala', 'GT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(92, 'Guernsey', 'GG', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(93, 'Guinea', 'GN', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(94, 'Guinea-Bissau', 'GW', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(95, 'Guyana', 'GY', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(96, 'Haiti', 'HT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(97, 'Heard Island and McDonald Islands', 'HM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(98, 'Holy See (Vatican City State)', 'VA', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(99, 'Honduras', 'HN', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(100, 'Hong Kong', 'HK', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(101, 'Hungary', 'HU', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(102, 'Iceland', 'IS', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(103, 'India', 'IN', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(104, 'Indonesia', 'ID', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(105, 'Iran, Islamic Republic of', 'IR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(106, 'Iraq', 'IQ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(107, 'Ireland', 'IE', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(108, 'Isle of Man', 'IM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(109, 'Italy', 'IT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(110, 'Jamaica', 'JM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(111, 'Japan', 'JP', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(112, 'Jersey', 'JE', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(113, 'Jordan', 'JO', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(114, 'Kazakhstan', 'KZ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(115, 'Kenya', 'KE', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(116, 'Kiribati', 'KI', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(117, 'Korea, Democratic People\'s Republic of', 'KP', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(118, 'Korea, Republic of', 'KR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(119, 'Kuwait', 'KW', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(120, 'Kyrgyzstan', 'KG', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(121, 'Lao People\'s Democratic Republic', 'LA', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(122, 'Latvia', 'LV', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(123, 'Lebanon', 'LB', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(124, 'Lesotho', 'LS', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(125, 'Liberia', 'LR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(126, 'Libya', 'LY', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(127, 'Liechtenstein', 'LI', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(128, 'Lithuania', 'LT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(129, 'Luxembourg', 'LU', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(130, 'Macao', 'MO', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(131, 'Macedonia, the Former Yugoslav Republic of', 'MK', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(132, 'Madagascar', 'MG', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(133, 'Malawi', 'MW', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(134, 'Malaysia', 'MY', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(135, 'Maldives', 'MV', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(136, 'Mali', 'ML', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(137, 'Malta', 'MT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(138, 'Marshall Islands', 'MH', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(139, 'Martinique', 'MQ', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(140, 'Mauritania', 'MR', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(141, 'Mauritius', 'MU', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(142, 'Mayotte', 'YT', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(143, 'Mexico', 'MX', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(144, 'Micronesia, Federated States of', 'FM', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(145, 'Moldova, Republic of', 'MD', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(146, 'Monaco', 'MC', '2023-07-03 20:40:11', '2023-07-03 20:40:11'),
(147, 'Mongolia', 'MN', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(148, 'Montenegro', 'ME', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(149, 'Montserrat', 'MS', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(150, 'Morocco', 'MA', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(151, 'Mozambique', 'MZ', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(152, 'Myanmar', 'MM', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(153, 'Namibia', 'NA', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(154, 'Nauru', 'NR', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(155, 'Nepal', 'NP', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(156, 'Netherlands', 'NL', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(157, 'New Caledonia', 'NC', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(158, 'New Zealand', 'NZ', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(159, 'Nicaragua', 'NI', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(160, 'Niger', 'NE', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(161, 'Nigeria', 'NG', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(162, 'Niue', 'NU', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(163, 'Norfolk Island', 'NF', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(164, 'Northern Mariana Islands', 'MP', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(165, 'Norway', 'NO', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(166, 'Oman', 'OM', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(167, 'Pakistan', 'PK', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(168, 'Palau', 'PW', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(169, 'Palestine', 'PS', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(170, 'Panama', 'PA', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(171, 'Papua New Guinea', 'PG', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(172, 'Paraguay', 'PY', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(173, 'Peru', 'PE', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(174, 'Philippines', 'PH', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(175, 'Pitcairn', 'PN', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(176, 'Poland', 'PL', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(177, 'Portugal', 'PT', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(178, 'Puerto Rico', 'PR', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(179, 'Qatar', 'QA', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(180, 'Réunion', 'RE', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(181, 'Romania', 'RO', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(182, 'Russian Federation', 'RU', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(183, 'Rwanda', 'RW', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(184, 'Saint Barthélemy', 'BL', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(185, 'Saint Helena', 'SH', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(186, 'Saint Kitts and Nevis', 'KN', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(187, 'Saint Lucia', 'LC', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(188, 'Saint Martin (French part)', 'MF', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(189, 'Saint Pierre and Miquelon', 'PM', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(190, 'Saint Vincent and the Grenadines', 'VC', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(191, 'Samoa', 'WS', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(192, 'San Marino', 'SM', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(193, 'Sao Tome and Principe', 'ST', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(194, 'Saudi Arabia', 'SA', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(195, 'Senegal', 'SN', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(196, 'Serbia', 'RS', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(197, 'Seychelles', 'SC', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(198, 'Sierra Leone', 'SL', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(199, 'Singapore', 'SG', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(200, 'Sint Maarten (Dutch part)', 'SX', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(201, 'Slovakia', 'SK', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(202, 'Slovenia', 'SI', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(203, 'Solomon Islands', 'SB', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(204, 'Somalia', 'SO', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(205, 'South Africa', 'ZA', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(206, 'South Georgia and the South Sandwich Islands', 'GS', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(207, 'South Sudan', 'SS', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(208, 'Spain', 'ES', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(209, 'Sri Lanka', 'LK', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(210, 'Sudan', 'SD', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(211, 'Suriname', 'SR', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(212, 'Svalbard and Jan Mayen', 'SJ', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(213, 'Swaziland', 'SZ', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(214, 'Sweden', 'SE', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(215, 'Switzerland', 'CH', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(216, 'Syrian Arab Republic', 'SY', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(217, 'Taiwan', 'TW', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(218, 'Tajikistan', 'TJ', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(219, 'Tanzania, United Republic of', 'TZ', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(220, 'Thailand', 'TH', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(221, 'Timor-Leste', 'TL', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(222, 'Togo', 'TG', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(223, 'Tokelau', 'TK', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(224, 'Tonga', 'TO', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(225, 'Trinidad and Tobago', 'TT', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(226, 'Tunisia', 'TN', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(227, 'Turkey', 'TR', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(228, 'Turkmenistan', 'TM', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(229, 'Turks and Caicos Islands', 'TC', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(230, 'Tuvalu', 'TV', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(231, 'Uganda', 'UG', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(232, 'Ukraine', 'UA', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(233, 'United Arab Emirates', 'AE', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(234, 'United Kingdom', 'GB', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(235, 'United States', 'US', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(236, 'United States Minor Outlying Islands', 'UM', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(237, 'Uruguay', 'UY', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(238, 'Uzbekistan', 'UZ', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(239, 'Vanuatu', 'VU', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(240, 'Venezuela, Bolivarian Republic of', 'VE', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(241, 'Viet Nam', 'VN', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(242, 'Virgin Islands, British', 'VG', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(243, 'Virgin Islands, U.S.', 'VI', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(244, 'Wallis and Futuna', 'WF', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(245, 'Western Sahara', 'EH', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(246, 'Yemen', 'YE', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(247, 'Zambia', 'ZM', '2023-07-03 20:40:12', '2023-07-03 20:40:12'),
(248, 'Zimbabwe', 'ZW', '2023-07-03 20:40:12', '2023-07-03 20:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_messages`
--

CREATE TABLE `log_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `level` smallint(5) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `logged_at` datetime NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`context`)),
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_messages`
--

INSERT INTO `log_messages` (`id`, `level_name`, `level`, `message`, `logged_at`, `context`, `extra`) VALUES
(1, 'INFO', 200, 'User (admin) Logged IN By (web)', '2023-07-04 04:42:12', '{\"User Name\":\"admin\",\"User Email\":\"admin@tds.com\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 04:42:12\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(2, 'INFO', 200, 'User (admin) Logged OUT By (web)', '2023-07-04 04:43:00', '{\"User Name\":\"admin\",\"User Email\":\"admin@tds.com\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 04:43:00\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(3, 'INFO', 200, 'User (user) Logged IN By (web)', '2023-07-04 04:46:56', '{\"User Name\":\"user\",\"User Email\":\"user@tds.com\",\"User Type\":\"user\",\"Logged At\":\"2023-07-04 04:46:56\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(4, 'INFO', 200, 'User (user) Logged OUT By (web)', '2023-07-04 04:47:44', '{\"User Name\":\"user\",\"User Email\":\"user@tds.com\",\"User Type\":\"user\",\"Logged At\":\"2023-07-04 04:47:44\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(5, 'INFO', 200, 'User (admin) Logged IN By (web)', '2023-07-04 04:48:05', '{\"User Name\":\"admin\",\"User Email\":\"admin@tds.com\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 04:48:05\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(6, 'INFO', 200, 'User (admin) Logged OUT By (web)', '2023-07-04 04:51:55', '{\"User Name\":\"admin\",\"User Email\":\"admin@tds.com\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 04:51:55\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(7, 'INFO', 200, 'User (admin) Logged IN By (web)', '2023-07-04 05:15:21', '{\"User Name\":\"admin\",\"User Email\":\"admin@tds.com\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 05:15:21\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(8, 'INFO', 200, 'User (admin) Logged IN By (web)', '2023-07-04 05:17:50', '{\"User Name\":\"admin\",\"User Email\":\"admin@tds.com\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 05:17:50\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(9, 'INFO', 200, 'User (Super Admin) Logged IN By (web)', '2023-07-04 05:32:55', '{\"User Name\":\"Super Admin\",\"User Email\":\"superadmin@role.test\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 05:32:55\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(10, 'INFO', 200, 'User (Super Admin) Logged OUT By (web)', '2023-07-04 05:39:11', '{\"User Name\":\"Super Admin\",\"User Email\":\"superadmin@role.test\",\"User Type\":\"super-admin\",\"Logged At\":\"2023-07-04 05:39:11\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(11, 'INFO', 200, 'User (Admin Role) Logged IN By (web)', '2023-07-04 05:39:21', '{\"User Name\":\"Admin Role\",\"User Email\":\"admin@role.test\",\"User Type\":\"admin\",\"Logged At\":\"2023-07-04 05:39:21\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(12, 'INFO', 200, 'User (Admin Role) Logged OUT By (web)', '2023-07-04 05:39:30', '{\"User Name\":\"Admin Role\",\"User Email\":\"admin@role.test\",\"User Type\":\"admin\",\"Logged At\":\"2023-07-04 05:39:30\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(13, 'INFO', 200, 'User (User Role) Logged IN By (web)', '2023-07-04 05:39:39', '{\"User Name\":\"User Role\",\"User Email\":\"user@role.test\",\"User Type\":\"user\",\"Logged At\":\"2023-07-04 05:39:39\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(14, 'INFO', 200, 'User (User Role) Logged OUT By (web)', '2023-07-04 05:39:52', '{\"User Name\":\"User Role\",\"User Email\":\"user@role.test\",\"User Type\":\"user\",\"Logged At\":\"2023-07-04 05:39:52\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(15, 'INFO', 200, 'User (Admin Role) Logged IN By (web)', '2023-07-04 05:40:05', '{\"User Name\":\"Admin Role\",\"User Email\":\"admin@role.test\",\"User Type\":\"admin\",\"Logged At\":\"2023-07-04 05:40:05\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]'),
(16, 'INFO', 200, 'User (Admin Role) Logged OUT By (web)', '2023-07-04 05:41:53', '{\"User Name\":\"Admin Role\",\"User Email\":\"admin@role.test\",\"User Type\":\"admin\",\"Logged At\":\"2023-07-04 05:41:53\",\"IP Address\":\"127.0.0.1\",\"By\":\"web\"}', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_31_082201_create_categories_table', 1),
(6, '2022_07_31_085427_create_products_table', 1),
(7, '2022_08_10_094400_create_sessions_table', 1),
(8, '2022_08_11_143628_create_roles_table', 1),
(9, '2022_08_11_144058_create_role_user_table', 1),
(10, '2022_08_11_146059_create_profiles_table', 1),
(11, '2022_08_11_150058_create_countries_table', 1),
(12, '2022_08_11_150322_add_country_id_to_users_tabel', 1),
(13, '2022_08_11_151944_create_ratings_table', 1),
(14, '2022_08_11_153236_create_carts_table', 1),
(15, '2022_08_11_153324_create_orders_table', 1),
(16, '2022_08_11_153440_create_order_items_table', 1),
(17, '2022_08_11_153611_create_notifications_table', 1),
(18, '2022_08_31_164741_create_subs_mails_table', 1),
(19, '2022_09_08_145828_create_wishlists_table', 1),
(20, '2022_09_09_105543_create_payments_table', 1),
(21, '2022_09_12_151048_create_jobs_table', 1),
(22, '2022_09_26_122926_create_contacts_table', 1),
(23, '2022_10_28_145356_create_laravel_log_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `tax` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `total` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `status` enum('pending','cancelled','processing','shipped','complete') NOT NULL DEFAULT 'pending',
  `payment_status` enum('unpaid','paid','refund') NOT NULL DEFAULT 'unpaid',
  `billing_name` varchar(255) NOT NULL,
  `billing_email` varchar(255) NOT NULL,
  `billing_phone` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_country` varchar(255) NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_country` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `price` double(8,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('payment','refund') NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `price` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `sale_price` double(8,2) UNSIGNED DEFAULT 0.00,
  `quantity` smallint(5) UNSIGNED DEFAULT 0,
  `sku` varchar(255) DEFAULT NULL,
  `weight` double(8,2) UNSIGNED DEFAULT NULL,
  `width` double(8,2) UNSIGNED DEFAULT NULL,
  `height` double(8,2) UNSIGNED DEFAULT NULL,
  `length` double(8,2) UNSIGNED DEFAULT NULL,
  `status` enum('active','draft') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rateable_type` varchar(255) NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `abilities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`abilities`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subs_mails`
--

CREATE TABLE `subs_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('user','admin','super-admin') NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `email`, `email_verified_at`, `password`, `remember_token`, `country_id`, `profile_photo_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Super Admin', 'super-admin', 'superadmin@role.test', NULL, '$2y$10$0OAG.s/OVc0Ec9mESQ6M3e/99RF.AbSWKRyL3.cNvziDfMXdfNf2m', NULL, NULL, 'uploads/1688448761_logo.png', '2023-07-03 21:32:41', '2023-07-03 21:32:41', NULL),
(7, 'Admin Role', 'admin', 'admin@role.test', NULL, '$2y$10$jGPwV2bp6Y5sOqFGim2dEOsrECENkgK.xk2/gBtSzNo8M6lnWx65G', NULL, NULL, 'uploads/1688449119_3.jpg', '2023-07-03 21:38:39', '2023-07-03 21:38:39', NULL),
(8, 'User Role', 'user', 'user@role.test', NULL, '$2y$10$jTso2X2NEKf8VJktM8OCj.t9UtS0GF04vjN81qq40JDweM0Kx9jja', NULL, NULL, 'uploads/1688449146_1.jpg', '2023-07-03 21:39:06', '2023-07-03 21:39:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cookie_id_product_id_user_id_unique` (`cookie_id`,`product_id`,`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `log_messages`
--
ALTER TABLE `log_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subs_mails`
--
ALTER TABLE `subs_mails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subs_mails_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_messages`
--
ALTER TABLE `log_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subs_mails`
--
ALTER TABLE `subs_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
