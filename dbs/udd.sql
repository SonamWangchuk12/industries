-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 04:13 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

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
(21, '2023_01_08_074343_create_notifications_table', 2);

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
(1, 'NITNSCL', 'notificationdoc-PYe69d8cYcHABOJEo2uP8tU0Xm4tUcFgjT9le2hF.pdf', '2023-01-08 08:13:49', '2023-01-08 08:13:49');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ministers`
--
ALTER TABLE `ministers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `org_structures`
--
ALTER TABLE `org_structures`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
