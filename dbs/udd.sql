-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 10:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udd`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `content`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'About Dept', '<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif; font-size: 14px; text-align: justify;\">The office of Urban Development Department is located in the heart of Gangtok town opposite STNM Hospital. The building with traditional entrance gate has a clock tower , the only kind of the structure in the state. Manned by the dedicated officers and staff the UD&amp;HD has multifarious functions. The urban areas prior to Sikkim became the 22nd state of India was looked after by Bazaar Department and after the merger, Gangtok Municipal Corporation Act was enacted. The GMC was abolished under the Sikkim (Repeal and Miscellaneous Provisions)Act 1985 and its power and functions were reverted to Local Self Government, Vide Notification No.7(17)/Home dated 28th July1990,the Local Self Government was renamed as Urban Development and Housing Department.&nbsp;Gangtok is the capital city and the largest town in the state of Sikkim. Gangtok is located in the eastern Himalayan range at an elevation of 1,650 m.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif; font-size: 14px; text-align: justify;\">According to the 2001 census (provisional) the total population of Sikkim is 540493.There has been increase of 134036 compared to population of 1991 which was 406457. The population of Sikkim according to the 2011 census is&nbsp;6,10,577 with the male population of 323070 and female population of 287507.&nbsp;&nbsp;The Gangtok Municipal Corporation has population of 100,286 of which 52,459 are males while 47,827 are females. The population of Gangtok has grown four folds between 1991 and 2011. The city is administered by Gangtok Municipal Corporation (GMC) and Urban Development Department (UDD), Government of Sikkim.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif; font-size: 14px; text-align: justify;\">The literacy rate is 69.6 in 2001 as compared to 56.4of 1991. The&nbsp; present literacy rate of the state is more than 82%. About 30% of the total population reside in urban areas of Sikkim. The increase in economic activities in all sectors and increase in the literacy rate play important role in the urbanization of the State. In the absence of industries in the State, towns and bazaars are the main places for the economic activities of the State. The rural products are brought to the towns, bazaars and the rural marketing centres for which the basic infrastructure has to be matched. There are eight notified towns and 46 rural marketing centers. The eight notified towns are Gangtok, Singtam and Rangpo in the East , Mangan in the North , Jorethang , Naya bazaar and Namchi in the South and Gyalshing in the West.</p>', 'aboutusphoto-cshBOAITGmwpWl6yweHPiuOyEFjHLWDa5SvwELAB.jpg', '2023-01-08 01:28:09', '2023-01-08 01:28:09'),
(2, 'demo', '<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; text-align: justify; font-family: \'Open Sans\', sans-serif; font-size: 14px;\">The office of Urban Development Department is located in the heart of Gangtok town opposite STNM Hospital. The building with traditional entrance gate has a clock tower , the only kind of the structure in the state. Manned by the dedicated officers and staff the UD&amp;HD has multifarious functions. The urban areas prior to Sikkim became the 22nd state of India was looked after by Bazaar Department and after the merger, Gangtok Municipal Corporation Act was enacted. The GMC was abolished under the Sikkim (Repeal and Miscellaneous Provisions)Act 1985 and its power and functions were reverted to Local Self Government, Vide Notification No.7(17)/Home dated 28th July1990,the Local Self Government was renamed as Urban Development and Housing Department.&nbsp;Gangtok is the capital city and the largest town in the state of Sikkim. Gangtok is located in the eastern Himalayan range at an elevation of 1,650 m.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; text-align: justify; font-family: \'Open Sans\', sans-serif; font-size: 14px;\">According to the 2001 census (provisional) the total population of Sikkim is 540493.There has been increase of 134036 compared to population of 1991 which was 406457. The population of Sikkim according to the 2011 census is&nbsp;6,10,577 with the male population of 323070 and female population of 287507.&nbsp;&nbsp;The Gangtok Municipal Corporation has population of 100,286 of which 52,459 are males while 47,827 are females. The population of Gangtok has grown four folds between 1991 and 2011. The city is administered by Gangtok Municipal Corporation (GMC) and Urban Development Department (UDD), Government of Sikkim.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; text-align: justify; font-family: \'Open Sans\', sans-serif; font-size: 14px;\">The literacy rate is 69.6 in 2001 as compared to 56.4of 1991. The&nbsp; present literacy rate of the state is more than 82%. About 30% of the total population reside in urban areas of Sikkim. The increase in economic activities in all sectors and increase in the literacy rate play important role in the urbanization of the State. In the absence of industries in the State, towns and bazaars are the main places for the economic activities of the State. The rural products are brought to the towns, bazaars and the rural marketing centres for which the basic infrastructure has to be matched. There are eight notified towns and 46 rural marketing centers. The eight notified towns are Gangtok, Singtam and Rangpo in the East , Mangan in the North , Jorethang , Naya bazaar and Namchi in the South and Gyalshing in the West.</p>', 'aboutusphoto-PFtwG8PrZHY9GmYhEzSUqmOEaKHgpk9gHbmr9ahA.jpg', '2023-01-08 01:29:28', '2023-01-08 01:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `acts`
--

CREATE TABLE `acts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acts`
--

INSERT INTO `acts` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'RTI Act 2005', '<p>yggfuhhkj</p>', '2023-01-24 01:58:50', '2023-01-24 01:58:50'),
(2, 'RTI Act 2005', '<p>yggfuhhkj</p>', '2023-01-24 01:59:15', '2023-01-24 01:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `act_attachments`
--

CREATE TABLE `act_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `act_attachments`
--

INSERT INTO `act_attachments` (`id`, `act_id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 2, 'rsdtfyguhijk', 'KJzI3SUDNiOVUOfTIVNHFlpwwK71yfN3GhgKBT8z.png', '2023-01-24 01:59:15', '2023-01-24 01:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `circulars`
--

CREATE TABLE `circulars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `circulars`
--

INSERT INTO `circulars` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 'DRAFT MOBILE TOWER POLICY', 'circulardoc-MgAIotA9s5i7gO5LavV6SkTMimWrygR8d60OIvbR.pdf', '2023-01-08 08:17:13', '2023-01-08 08:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `c_m_data`
--

CREATE TABLE `c_m_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_m_data`
--

INSERT INTO `c_m_data` (`id`, `name`, `designation`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Shri Prem Singh Tamang', 'Hon\'ble Chief Minister', 'cmphoto-44VCKKrcHbmVIJjbXn5vt2KxYTbkNbUYBqI9k8Gc.jpg', '2023-01-08 01:22:18', '2023-01-08 01:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'test', 'galleryimg-qsyeMaKBtFzlXLki1Wu0XdTbctgCBuaj8BVSsktF.jpg', '2023-01-08 23:48:59', '2023-01-08 23:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_01_06_134832_create_sliders_table', 1),
(5, '2023_01_07_120710_create_visitors_table', 1),
(6, '2023_01_07_132006_create_c_m_data_table', 1),
(7, '2023_01_08_041707_create_abouts_table', 1),
(8, '2023_01_08_061536_create_ministers_table', 1),
(9, '2023_01_08_073936_create_section_sanitations_table', 2),
(10, '2023_01_08_073944_create_section_i_t_s_table', 2),
(11, '2023_01_08_074000_create_section_enggs_table', 2),
(12, '2023_01_08_074016_create_section_town_plannings_table', 2),
(13, '2023_01_08_074025_create_section_admins_table', 2),
(14, '2023_01_08_074037_create_section_municipalities_table', 2),
(15, '2023_01_08_074048_create_galleries_table', 2),
(16, '2023_01_08_074100_create_r_t_i_s_table', 2),
(17, '2023_01_08_074204_create_schemes_table', 2),
(18, '2023_01_08_074218_create_org_structures_table', 2),
(19, '2023_01_08_074241_create_tenders_table', 2),
(20, '2023_01_08_074334_create_circulars_table', 2),
(21, '2023_01_08_074343_create_notifications_table', 2),
(24, '2023_01_23_060019_create_schemes_table', 3),
(25, '2023_01_23_060156_create_scheme_attachments_table', 3),
(26, '2023_01_24_062151_create_plans_table', 4),
(28, '2023_01_24_062252_create_plan_attachments_table', 5),
(30, '2023_01_24_071553_create_acts_table', 6),
(31, '2023_01_24_071558_create_act_attachments_table', 6),
(32, '2023_01_24_091636_create_online_services_table', 7),
(33, '2023_01_24_091657_create_online_service_attachments_table', 7),
(34, '2023_01_24_092245_create_offline_services_table', 7),
(35, '2023_01_24_092254_create_offline_service_attachments_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ministers`
--

CREATE TABLE `ministers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ministers`
--

INSERT INTO `ministers` (`id`, `name`, `designation`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Shri L.B Das', 'Hon\'ble Minister', 'ministerphoto-Qo55akgAQAh7P7TXu5tMXAvCvYGsWTMegv3IeiKd.png', '2023-01-08 01:22:28', '2023-01-08 01:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 'NITNSCL', 'notificationdoc-PYe69d8cYcHABOJEo2uP8tU0Xm4tUcFgjT9le2hF.pdf', '2023-01-08 08:13:49', '2023-01-08 08:13:49'),
(2, 'Test Image', 'notificationdoc-rObX7zBhOPifZyJH8Pm1DE6G34TO67zvERbaRoqT.jpg', '2023-01-08 23:47:43', '2023-01-08 23:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `offline_services`
--

CREATE TABLE `offline_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_services`
--

INSERT INTO `offline_services` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'dfasfasddfafasd', '<p>asd<em>asdfadsdfasdfasdfasfas</em></p>', '2023-01-24 04:04:53', '2023-01-24 04:04:53'),
(2, 'dfasfasddfafasd', '<p>asd<em>asdfadsdfasdfasdfasfas</em></p>', '2023-01-24 04:05:20', '2023-01-24 04:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `offline_service_attachments`
--

CREATE TABLE `offline_service_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offservice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_service_attachments`
--

INSERT INTO `offline_service_attachments` (`id`, `offservice_id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 2, 'dfsafasfas', 'NuecIqARS8gSBnHOkb9UUAl3bwDb9lYzRIR8ivc4.jpg', '2023-01-24 04:05:20', '2023-01-24 04:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `online_services`
--

CREATE TABLE `online_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_services`
--

INSERT INTO `online_services` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'fadsdfadsfdafa', 'asdfdasfasfasdfsa', '2023-01-24 04:03:44', '2023-01-24 04:03:44'),
(2, 'dasfadfas', 'google.com', '2023-01-24 04:23:39', '2023-01-24 04:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `online_service_attachments`
--

CREATE TABLE `online_service_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `onservice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_service_attachments`
--

INSERT INTO `online_service_attachments` (`id`, `onservice_id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 1, 'dsafasfdas', 'm76Vo8zGv5kxpEIYywLMvBna5G2JLSbQkpGL7gEA.png', '2023-01-24 04:03:44', '2023-01-24 04:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `org_structures`
--

CREATE TABLE `org_structures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `org_structures`
--

INSERT INTO `org_structures` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'test', '<table class=\"MsoNormalTable\" style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Sl.No.</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Name of the</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Designation</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Father\'s/Husband</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Date of</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Date of</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Place of Posting</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Date of</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">District</span></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Employee</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Name</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Birth</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Appointment</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Retirement</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">1</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mr. Nar Bahadur Giri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Sr. Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Jit Bdr. Giri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">14.07.1978</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">26.02.2009</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.07.2036</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">2</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Jinita Rai</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Sr. Accountant</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Shisir K.P.Rai</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.09.1964</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">07.07.1986</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">HQ- Division</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.09.2022</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">3</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Binod Subba</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Sr. Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Chandra Man Subba</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.03.1984</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">11.07.2003</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Namchi</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.03.2042</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">4</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Hari Maya Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Sr. Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Jok Narayan Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">11.11.1969</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">08.02.1089</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.11.2027</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">5</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Hari Bhakta Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Yadu Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">27.06.1973</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">17.07.2009</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Pakyong</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.06.2031</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">6</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Kusum Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri Golman Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">21.04.1969</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.09.1995</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Singtam</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.04.2027</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">7</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Ram Psd. Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Uma Kanta Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">17.09.1969</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">02.03.2011</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ravangla</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.09.2027</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">8</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Sakuntala Pariyar</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Programmer</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late L.B.Pariyar</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">03.06.1966</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">11.11.1993</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.06.2024</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">9</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Sunita Gazmer</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Steno Grade- I</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late C.M. Gazmer</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12.09.1976</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">01.02.2005</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Attd. to Pr. C.A</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.09.2034</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">10</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Tshering Peden Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Steno Grade-I</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late Norbu Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">11.06.1978</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">13.01.2005</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Attd. to Addl. Secy.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.06.2036</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">11</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Chung Chung Wazelingpa</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Steno Grade-I</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri C.N.Kazi (Wazelingpa)</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">02.02.1980</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Attd.to Director</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.02.2038</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Shyam S. Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">O.S.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Pushpa Kr. Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">19.01.1980</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.05.2005</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Namchi</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.01.2038</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">13</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Kalpana Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">H.A.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Bharat Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">01.02.1967</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">25.01.1991</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Adm. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.02.2025</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">14</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Radha Lachhi Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">H.A.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>P.B.Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.09.1971</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.10.1998</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Adm. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.09.2029</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">15</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Zangmoo Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">H.A.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late P.Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">02.12.1977</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">29.05.2002</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Adm. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2035</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">16</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Radhika Subba</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accountant</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Samson Gurung</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">09.05.1963</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.03.1982</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Store Division</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.05.2021</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">17</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms Tshering Doma Bhutia</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accountant</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri S.L. Bhutia</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.10.1964</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12.01.1989</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">HQ- Division</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.10.2022</span></span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mr. Juda Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Benjamin Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">21.07.1966</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">15.09.1986</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Store Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.07.2024</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">19</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Sonam Choden Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late Naku Tsh. Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">04.03.1980</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.09.2009</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.03.2038</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">20</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Arati Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri M.B.Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">25.06.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.09.2009</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.06.2038</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">21</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Permila Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri Dhan Lall Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">05.04.1978</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.09.2009</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.04.2036</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Tashi Pelden Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Junior Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri Kunzang Chultim Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">04.11.1988</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">23.07.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.11.2046</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">23</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Anil Kumar Darjee</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Junior Accountant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Jagat Bdr. Darjee</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.05.1982</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.07.2013</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mangan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.05.2040</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">N</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">24</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Kiran Kumar Dahal</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accouts Clerk</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">25</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Ashruta Chettri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Clerk</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri Birkha Bdr. Chettri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">23.10.1994</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.05.2018</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Namchi</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.10.2052</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">26</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Bhim Bdr. Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Accounts Clerk</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Pratiman Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">25.01.1990</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">21.05.2018</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Namchi</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.01.2048</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">27</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Usha Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Gokul Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">13.10.1970</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">01.06.1990</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">N/E Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.10.2028</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Meena Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late Dhan Bdr. Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">03.09.1968</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.07.1989</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Planning Cell</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.09.2026</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">29</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Rehelmit Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late T.T. Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">21.02.1968</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.03.1989</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Project Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.02.2026</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Kusum Gurung</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri K.N.Chettri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">03.01.1973</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">01.04.1997</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Adm. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.01.2031</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Tashi Ongmu Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late Rolay Tsh. Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">14.02.1969</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">17.01.1991</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Namchi Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.02.2027</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">32</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Sheela Moktan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri C.D.Moktan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">24.06.1968</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">01.08.1990</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Gyalshing</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.06.2026</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">33</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Krishna Kr. Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Surjaman Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">14.05.1968</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">26.12.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Acctts. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.05.2026</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">34</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Karma Loday Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Ongdi Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">04.08.1978</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">20.03.1992</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Record Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.08.2036</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">35</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Budhi Psd. Paudyali</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Torkey Kami</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">09.09.1966</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">16.10.1990</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Stationery Incharge</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.09.2024</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">36</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Shri Karma Chopel Lassopa</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Tempo Dadul Lassopa</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">07.04.1982</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">06.06.2009</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Adm. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.04.2040</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">37</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Smt Rita Chettri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri Ram Bdr. Chettri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">03.08.1977</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.05.2012</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Legal Cell</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.08.2035</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">38</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Dorjee Doma Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">U.D.C.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Late K.P.Ghalay</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">25.12.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12.10.2010</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Attd.to C.E</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2039</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">39</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mrs. Leena Subba</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt. Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri C.B.Subba</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.11.1979</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">24.08.2016</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D.E (Planning)</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.11.2037</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">40</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Sita Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Rajesh Lama</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.12.1977</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.11.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Project Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2035</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">41</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Ranjana Chettri</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Gopal Bhandari</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">28.09.1979</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.11.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Project<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.09.2037</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">42</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Sarda Gurung</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Lakpa Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">01.04.1975</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.11.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Elect.Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.04.2033</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">43</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mr. Mohan Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o<span style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Shri B.B. Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">06.07.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">27.11.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Acctts. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.07.2039</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">44</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Anita Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Aron Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">27.05.1978</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">27.11.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">HQ Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.05.2036</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">45</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Sujata Gurung</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Khichung Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">11.12.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">25.07.2018</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Tas.Project</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2039</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">46</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Dambari Gurung</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Late K.B. Gurung</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">24.08.1975</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">18.07.2018</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">N/E Division</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.08.2033</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">47</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Ganga Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri D.B.Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">06.11.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">20.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Adm. Section</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.11.2039</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">48</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Pem Choden Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Chewang Rinzing Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12.12.1986</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">20.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Singtam</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2044</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">49</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Januka Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Laxuman Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12.12.1979</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">21.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Gyalshing</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2037</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">50</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Ongmu Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Compt.Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri Laku Lepcha</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">17.12.1986</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">21.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Namchi</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2044</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">51</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Kamala Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Binay Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">25.01.1979</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Namchi</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.01.2037</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">52</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mr. Gyan Bdr. Limboo</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Karna Bdr. Limboo</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">14.11.1979</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Architect Cell</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.11.2037</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">53</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Lilly Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri Krishna Bdr. Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">04.12.1983</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">20.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Architect Cell</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.12.2041</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">54</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mr. Kabith Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Kamal Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">26.03.1978</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Project</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.03.2036</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">55</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Durga Kri. Sunar</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Indra Kr. Shanker</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12.05.1976</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">HQ</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.05.2034</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">56</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mr. Dawa Tsh. Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Draughtsman</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Late Nima Tshering Bhutia</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">24.11.1977</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mangan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.11.2035</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">N</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">57</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Sabnam Rai</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Telephone Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Dipendra Subba</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">13.05.1978</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">27.11.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Single Window</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.11.2036</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">58</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Doma Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Telephone Opt.</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">D/o Shri M.B.Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">12.07.1980</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.11.2017</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Gangtok</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.07.2038</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">59</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Munna Gurung</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Receiptionist</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Kiran Kr. Tamang</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">16.06.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Single Window</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">30.06.2039</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">60</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Ms. Bali Maya Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Receiptionist</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">W/o Shri Raj Kr. Pradhan</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">15.08.1981</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">20.02.2019</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Single Window</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.08.2039</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box;\">\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">61</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Mr. Jiwa Nath Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\"><span style=\"box-sizing: border-box;\">&nbsp;</span>Lab. Assistant</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">S/o Shri Mono Rath Sharma</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">13.08.1975</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">22.09.2014</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">Project</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">31.08.2033</span></p>\r\n</td>\r\n<td style=\"box-sizing: border-box;\">\r\n<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: border-box; font-size: 12pt; font-family: Cambria, serif; color: #000000;\">E</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2023-01-09 00:14:09', '2023-01-09 00:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sdfasfas', NULL, '2023-01-24 01:08:32', '2023-01-24 01:08:32'),
(2, 'sdfasfas', NULL, '2023-01-24 01:08:54', '2023-01-24 01:08:54'),
(3, 'dfdsafaf', '<p>adfsfafdaf</p>', '2023-01-24 01:10:22', '2023-01-24 01:10:22'),
(4, 'adsfasfa', NULL, '2023-01-24 01:12:47', '2023-01-24 01:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `plan_attachments`
--

CREATE TABLE `plan_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_t_i_s`
--

CREATE TABLE `r_t_i_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `r_t_i_s`
--

INSERT INTO `r_t_i_s` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 'APPELLATE AUTHORITY, SPIO & APIO of Urban Development Department', 'rtidoc-twVaWp0kI6OlYPrhQsQdzuVLruumZ2OXn5NISdOh.pdf', '2023-01-08 07:44:32', '2023-01-08 07:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'eafraf', '<p>dsafadfafad</p>', '2023-01-23 01:32:04', '2023-01-23 01:32:04'),
(5, 'dsafasfas', '<p>sdfasfadfa</p>', '2023-01-23 01:33:57', '2023-01-23 01:33:57'),
(6, 'dsafasfas', '<p>sdfasfadfa</p>', '2023-01-23 01:34:13', '2023-01-23 01:34:13'),
(7, 'dsafa', '<p>fasfdafa</p>', '2023-01-23 01:35:36', '2023-01-23 01:35:36'),
(8, 'dfsgfsd', '<p>dfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfs</p>', '2023-01-23 01:36:38', '2023-01-23 01:36:38'),
(9, 'asdasdasda', '<p>asdasdada</p>', '2023-01-23 01:38:03', '2023-01-23 01:38:03'),
(10, 'asdasdasda', '<p>asdasdada</p>', '2023-01-23 01:38:10', '2023-01-23 01:38:10'),
(11, 'asdasdasda', '<p>asdasdada</p>', '2023-01-23 01:38:21', '2023-01-23 01:38:21'),
(12, 'asdasdasda', '<p>asdasdada</p>', '2023-01-23 01:39:02', '2023-01-23 01:39:02'),
(13, 'asdasdasda', '<p>asdasdada</p>', '2023-01-23 01:39:09', '2023-01-23 01:39:09'),
(14, 'asdasdasda', '<p>asdasdada</p>', '2023-01-23 01:39:40', '2023-01-23 01:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_attachments`
--

CREATE TABLE `scheme_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scheme_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scheme_attachments`
--

INSERT INTO `scheme_attachments` (`id`, `scheme_id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 14, 'asdasdsada', 'fY36HXZUa5kumSVPZuqYKQqS1EO5VS7eBPYVlVYi.png', '2023-01-23 01:39:40', '2023-01-23 01:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `section_admins`
--

CREATE TABLE `section_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_enggs`
--

CREATE TABLE `section_enggs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_i_t_s`
--

CREATE TABLE `section_i_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_municipalities`
--

CREATE TABLE `section_municipalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_sanitations`
--

CREATE TABLE `section_sanitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_town_plannings`
--

CREATE TABLE `section_town_plannings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 'slider2', 'sliderphoto-Jdu7rv93seOfSxLJsDSaYlIebJ3U6ro1yNeqPoHa.jpg', '2023-01-08 01:22:52', '2023-01-08 01:22:52'),
(2, 'slider2', 'sliderphoto-EzLQfEiFdUAMq7cm2kfaiJOq9Kmk5ABl0ZBRZyut.jpg', '2023-01-08 01:23:00', '2023-01-08 01:23:00'),
(3, 'slider2', 'sliderphoto-Mb2JiIRnDI0rg2n3loo55IrC1HBKIIOYX2g2XgLX.jpg', '2023-01-08 01:23:07', '2023-01-08 01:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

CREATE TABLE `tenders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(141) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenders`
--

INSERT INTO `tenders` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 'Re-Tender Notice (Melli / Ravangla)', 'tenderdoc-bznVS67xk4Oqw15dxSmoX08LIQAxWTaSWAAo0Ms5.jpg', '2023-01-08 08:10:04', '2023-01-08 08:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'demoadmin@gov.in', NULL, '$2y$10$CfBn1v6K76giVs4RH/WOA.SB5nBMkXPniQZ70qvidVsYcNSvYboF.', NULL, '2023-01-08 01:22:06', '2023-01-08 01:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acts`
--
ALTER TABLE `acts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `act_attachments`
--
ALTER TABLE `act_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `act_attachments_act_id_index` (`act_id`);

--
-- Indexes for table `circulars`
--
ALTER TABLE `circulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_m_data`
--
ALTER TABLE `c_m_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministers`
--
ALTER TABLE `ministers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_services`
--
ALTER TABLE `offline_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_service_attachments`
--
ALTER TABLE `offline_service_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offline_service_attachments_offservice_id_index` (`offservice_id`);

--
-- Indexes for table `online_services`
--
ALTER TABLE `online_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_service_attachments`
--
ALTER TABLE `online_service_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_service_attachments_onservice_id_index` (`onservice_id`);

--
-- Indexes for table `org_structures`
--
ALTER TABLE `org_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_attachments`
--
ALTER TABLE `plan_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_attachments_plan_id_index` (`plan_id`);

--
-- Indexes for table `r_t_i_s`
--
ALTER TABLE `r_t_i_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheme_attachments`
--
ALTER TABLE `scheme_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_attachments_scheme_id_index` (`scheme_id`);

--
-- Indexes for table `section_admins`
--
ALTER TABLE `section_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_enggs`
--
ALTER TABLE `section_enggs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_i_t_s`
--
ALTER TABLE `section_i_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_municipalities`
--
ALTER TABLE `section_municipalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_sanitations`
--
ALTER TABLE `section_sanitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_town_plannings`
--
ALTER TABLE `section_town_plannings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenders`
--
ALTER TABLE `tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `acts`
--
ALTER TABLE `acts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `act_attachments`
--
ALTER TABLE `act_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `circulars`
--
ALTER TABLE `circulars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `c_m_data`
--
ALTER TABLE `c_m_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ministers`
--
ALTER TABLE `ministers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_services`
--
ALTER TABLE `offline_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_service_attachments`
--
ALTER TABLE `offline_service_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_services`
--
ALTER TABLE `online_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `online_service_attachments`
--
ALTER TABLE `online_service_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `org_structures`
--
ALTER TABLE `org_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plan_attachments`
--
ALTER TABLE `plan_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_t_i_s`
--
ALTER TABLE `r_t_i_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `scheme_attachments`
--
ALTER TABLE `scheme_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section_admins`
--
ALTER TABLE `section_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_enggs`
--
ALTER TABLE `section_enggs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_i_t_s`
--
ALTER TABLE `section_i_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_municipalities`
--
ALTER TABLE `section_municipalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_sanitations`
--
ALTER TABLE `section_sanitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_town_plannings`
--
ALTER TABLE `section_town_plannings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tenders`
--
ALTER TABLE `tenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `act_attachments`
--
ALTER TABLE `act_attachments`
  ADD CONSTRAINT `act_attachments_act_id_foreign` FOREIGN KEY (`act_id`) REFERENCES `acts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_service_attachments`
--
ALTER TABLE `offline_service_attachments`
  ADD CONSTRAINT `offline_service_attachments_offservice_id_foreign` FOREIGN KEY (`offservice_id`) REFERENCES `offline_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_service_attachments`
--
ALTER TABLE `online_service_attachments`
  ADD CONSTRAINT `online_service_attachments_onservice_id_foreign` FOREIGN KEY (`onservice_id`) REFERENCES `online_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_attachments`
--
ALTER TABLE `plan_attachments`
  ADD CONSTRAINT `plan_attachments_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scheme_attachments`
--
ALTER TABLE `scheme_attachments`
  ADD CONSTRAINT `scheme_attachments_scheme_id_foreign` FOREIGN KEY (`scheme_id`) REFERENCES `schemes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
