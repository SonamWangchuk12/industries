-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 06:26 AM
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
-- Database: `allegiant`
--
CREATE DATABASE IF NOT EXISTS `allegiant` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `allegiant`;

-- --------------------------------------------------------

--
-- Table structure for table `adtopia_visitors`
--

CREATE TABLE `adtopia_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `atp_source` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_vendor` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_click_details`
--

CREATE TABLE `adv_click_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `adv_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remote_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `time_spent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `click_link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_info`
--

CREATE TABLE `adv_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `adv_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `last_active_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_pixel_firing`
--

CREATE TABLE `adv_pixel_firing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_type` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_uuid`
--

CREATE TABLE `adv_uuid` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `uuid` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_visitors`
--

CREATE TABLE `adv_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `adv_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_site_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracker_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracker_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_tracker` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `existingdomain` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timespent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_visitors_adtopia_details`
--

CREATE TABLE `adv_visitors_adtopia_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `atp_source` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_vendor` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atp_sub3` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pid` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crvid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_visitors_count`
--

CREATE TABLE `adv_visitors_count` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `counts` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_visitors_extra_details`
--

CREATE TABLE `adv_visitors_extra_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ext_var1` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var2` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var3` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var4` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var5` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_visitors_page_history`
--

CREATE TABLE `adv_visitors_page_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_visit_page` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adv_visitors_temp`
--

CREATE TABLE `adv_visitors_temp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `adv_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracker_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_site_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracker_unique_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remote_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affliate`
--

CREATE TABLE `affliate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversion_pixel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pixel_callback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pixel_type` enum('HASOFFERS','ADWORDS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_percentage` smallint(6) NOT NULL,
  `mon_tracking` smallint(6) NOT NULL,
  `tue_tracking` smallint(6) NOT NULL,
  `wed_tracking` smallint(6) NOT NULL,
  `thu_tracking` smallint(6) NOT NULL,
  `fri_tracking` smallint(6) NOT NULL,
  `sat_tracking` smallint(6) NOT NULL,
  `sun_tracking` smallint(6) NOT NULL,
  `weightage_percentage` smallint(6) DEFAULT NULL,
  `mon_weightage` smallint(6) NOT NULL,
  `tue_weightage` smallint(6) NOT NULL,
  `wed_weightage` smallint(6) NOT NULL,
  `thu_weightage` smallint(6) NOT NULL,
  `fri_weightage` smallint(6) NOT NULL,
  `sat_weightage` smallint(6) NOT NULL,
  `sun_weightage` smallint(6) NOT NULL,
  `time_zone` smallint(6) DEFAULT NULL,
  `tracking_days` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_pixel_per_day` smallint(6) DEFAULT NULL,
  `time_of_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_counter` bigint(20) NOT NULL,
  `tracking_batch` bigint(20) NOT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_flag_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_offer_id` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_histories`
--

CREATE TABLE `api_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_uuid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_api_id` bigint(20) UNSIGNED DEFAULT NULL,
  `request_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_histories`
--

INSERT INTO `api_histories` (`id`, `user_id`, `user_uuid`, `url`, `buyer_api_id`, `request_type`, `request`, `status`, `response`, `created_at`, `updated_at`) VALUES
(1, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"referer_site\":\"http:\\/\\/localhost:3000\\/home?uuid=UNFR048-916bcef0-9b0f-11ed-915c-d1804d6c8a49\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"message_type\":\"split_page_load\",\"page_name\":\"Split_1\"}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:47:54', '2023-01-23 05:47:54'),
(2, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"},\"message_type\":\"split_form_submit\",\"page_name\":\"Split_1\",\"query_string\":\"uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"visitor_data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"referer_site\":\"http:\\/\\/localhost:3000\\/home?uuid=UNFR048-916bcef0-9b0f-11ed-915c-d1804d6c8a49\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:48:19', '2023-01-23 05:48:19'),
(3, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":1,\"option_id\":\"4\",\"answer_text\":\"4\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:48:28', '2023-01-23 05:48:28'),
(4, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":2,\"option_id\":\"23\",\"answer_text\":\"\\u00a3300 - \\u00a3400\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:48:30', '2023-01-23 05:48:30'),
(5, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":3,\"option_id\":33,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:48:37', '2023-01-23 05:48:37'),
(6, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":4,\"option_id\":35,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:48:40', '2023-01-23 05:48:40'),
(7, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":5,\"option_id\":37,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:48:58', '2023-01-23 05:48:58'),
(8, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":6,\"option_id\":39,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:48:59', '2023-01-23 05:48:59'),
(9, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":7,\"option_id\":41,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:49:00', '2023-01-23 05:49:00'),
(10, NULL, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\"},\"question_data\":{\"question_id\":8,\"option_id\":43,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Dr\",\"txtFName\":\"one\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Bodiam Hill Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"dsada@922.com\",\"arrears\":\"Yes\",\"txtPrevEmail\":\"\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:49:01', '2023-01-23 05:49:01'),
(11, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\",\"referer_site\":\"\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"message_type\":\"split_page_load\",\"page_name\":\"Split_3\"}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:03', '2023-01-23 05:50:03'),
(12, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\"},\"message_type\":\"split_form_submit\",\"page_name\":\"Split_3\",\"query_string\":\"uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"visitor_data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\",\"referer_site\":\"\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:30', '2023-01-23 05:50:30'),
(13, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"signature_data\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\",\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"form_data\":null,\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\",\"referer_site\":\"\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"message_type\":\"signature_store\"}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:32', '2023-01-23 05:50:32'),
(14, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":9,\"option_id\":44,\"answer_text\":\"Borrower\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:42', '2023-01-23 05:50:42'),
(15, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":10,\"option_id\":\"51\",\"answer_text\":\"6\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:51', '2023-01-23 05:50:51');
INSERT INTO `api_histories` (`id`, `user_id`, `user_uuid`, `url`, `buyer_api_id`, `request_type`, `request`, `status`, `response`, `created_at`, `updated_at`) VALUES
(16, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":11,\"option_id\":\"79\",\"answer_text\":\"\\u00a36501\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:54', '2023-01-23 05:50:54'),
(17, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":12,\"option_id\":167,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:55', '2023-01-23 05:50:55'),
(18, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":16,\"option_id\":373,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:56', '2023-01-23 05:50:56'),
(19, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":17,\"option_id\":375,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:58', '2023-01-23 05:50:58'),
(20, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":18,\"option_id\":377,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:50:59', '2023-01-23 05:50:59'),
(21, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":19,\"option_id\":379,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:51:00', '2023-01-23 05:51:00'),
(22, NULL, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\"},\"question_data\":{\"question_id\":20,\"option_id\":381,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFG_A1_5\\/questionnaire?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"referer_site\":\"http:\\/\\/localhost:3000\\/split3_verification?uuid=UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:51:02', '2023-01-23 05:51:02'),
(23, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFLS_A1_1\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFLS_A1_1\",\"referer_site\":\"\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"message_type\":\"split_page_load\",\"page_name\":\"Split_4\"}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:51:32', '2023-01-23 05:51:32'),
(24, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"},\"message_type\":\"split_form_submit\",\"page_name\":\"Split_1\",\"query_string\":\"uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"visitor_data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFLS_A1_1\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFLS_A1_1\",\"referer_site\":\"\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:01', '2023-01-23 05:52:01');
INSERT INTO `api_histories` (`id`, `user_id`, `user_uuid`, `url`, `buyer_api_id`, `request_type`, `request`, `status`, `response`, `created_at`, `updated_at`) VALUES
(25, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"signature_data\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\",\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"form_data\":{\"lstSalutation\":\"Mrs\",\"txtFName\":\"two\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=\",\"txtHouseNumber\":\"Mleih Funding\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"sada@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_3\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAACmBJREFUeF7tnWmofVUZhx+poLQ5BJvISorqQ0WEhIEVZmWUDRSUhjYaRZNQQV+qD41GNlCREDZJYIWFollBSYVUNHzIRswGM0QaqaD6Er9aG7a7e++5d5+1z9nr7GfB5fK\\/Z+93v+t51\\/n911p7rXcdg0UCEpBAIwSOacRP3ZSABCSAgmUjkIAEmiGgYDUTKh2VgAQULNuABCTQDAEFq5lQ6agEJKBg2QYkIIFmCChYzYRKRyUgAQXLNiABCTRDQMFqJlQ6KgEJKFi2AQlIoBkCClYzodJRCWycwOOAXwFnAP8ATiwe3DTw5DTguZvwTsHaBGWfIYF5EjgeeBgQYUo5tfx+IHB97++H8f4i4LzDXLjONQrWOvS8VwLtEXhLT5g6oapRi6cBV9QwdJANBWtqwtqXwHYJPAI4E7gX8HTghEO481fgaiA9sJ8Dvy9Dw25ImGHiH4HfATcCdyifH8L0epcoWOvx824JzJHAScDbgeescC5zUTcA\\/wauAb5eru9+z65uCtbsQqJDEhhNIEO8VxwgVDcD3wG+X8RptsK0HwEFa3Tb8EYJzIZAhOp8IPNIw\\/Jt4DfAxcBVs\\/F4pCMK1khw3iaBGRC4O\\/Bp4CkDXzLH9GXgM71h3gzcXd8FBWt9hlqQwDYIfKgM\\/\\/rP\\/h5wCXDhNhzaxDMVrE1Q9hkSqEfgzUCWJgzLG4AL6j1mnpYUrHnGRa8ksBeBbwKn9D74FvD5Xe5RDSEoWH4xJDB\\/Ag8Fruu5mbd7+Xnr\\/F2v66GCVZen1iRQm8DbgDf1jH4SOKf2Q1qxp2C1Ein9XBqBvAH8AHBWqfgfinBlz95ii4K12NBb8RkTeBTwibIxuXPzjsDfZ+zzRlxTsDaC2YdI4NAEsgj0U8B9yh1ZpnD2oe\\/e8QsVrB0PsNVrikDE6ms9j18NfLCpGkzsrII1MWDNS+CQBLJR+dLetVlrtbi3gKtYKVirCPm5BKYlcGfgWWWvX\\/ekCNVei0On9aQB6wpWA0HSxZ0lkDQwzwbeWWp4C5AV6x\\/f2RqvWTEFa02A3i6BkQQiVlm20N+4nHTFPx5pbxG3KViLCLOVnBmB7Ad8KXDvnl\\/JCJrMnpYDCChYNg8JbJZA5qYiWF357KZOnNlsNad5moI1DVetSmBIIG8B3907KivzVR92cv1oDUXBOhovr5bAGAJ79aoiVs2lKB5T+Zr3KFg1aWpLArcmkIWgOQziMb0\\/R6QeL6hxBBSscdy8SwIHEYhQZQiYAyH6xfVVa7YbBWtNgN4ugR6B5K1K6uLhAaWZWO9+BLYGAQVrDXjeuhEC3Zc\\/h3peC9wW+OfMlgDsd7xWku59zon1eu1EwarHUkt1CGSrSuZ8XrziINAvAj8s6YH\\/UufRR7LyoOLn84AnDe78adlqk7eClooEFKyKMDW1NoG8TTt9MEm9ymhOL05u8ysn3tKSdC9ZnZ7e1KlAjoC\\/6x7OvQT42Cqn\\/XwcAQVrHDfvqkvgMuDJwO0rmM05fT8CcoDomGUDGXqeDDy2\\/I5LdwKSVG+\\/8hPgdcDVFfzXxAEEFCybxzYJ5E1aJqkjEsPyXuDy3h9zzZ+ABxTxeOY+9\\/XtRLCyNy9zSRGT+\\/YOczgOeDRwN+BfJU\\/67YBMnOdvhymx\\/45yaOlhrveaNQkoWGsC9PbRBJKobvg2LXvpkq3gK8DNKyyfCJwLnFGEZ7Qjh7zxl0AOKs3QM6mK89bPsmECCtaGgfs4nliyaD64xyI9lcz9XD+STybpI16ZV3pIGcKNNPXfXlzEKT\\/pnWVeLeKY498tWyagYG05AAt7\\/DCrZkTgVcAVFTkcCzy1vGHM81aV9JruUQSpWyuVfX6WGRJQsOoH5X3A\\/Up627x2t\\/yPQNL\\/9gUknDJRPXVJ7yjlNnvMYUXczD81dQQq2lewKsIsQ5IfFJM5pinDlKWXiFQm0LtTYDL8e\\/7MFn4uPUbN1F\\/BqhuqrMvJHEhKFjY+o6755qxdPBDtZCh4ZXO10OHZEFCw6ofiz8BdypzI\\/eubb8Zi\\/y3gjcALRq6LaqbCOjo9AQWrPuMMebISOmWJfIf76sIjWQrGLOKsHx0tNk1giV+oqQP2BeDM8pD0sJb0OjxLAE4BTiv1Pw+4aGrg2l8OAQWrfqxzRNM5xewjywbd+k+Zn8XkKX85cEJxzdxP84tR8x4pWPVDmNf1rylmk1lyCUOhfgrg9ChfuJB61289WjyQgIJVv4H0v7xLEKyPAi8rGPMW8IKFDYPrtyAt7ktAwarfOPqClQ26mdPa1dKv67uAL9mz2tVQz6NeClb9OPS\\/xBka7eqx4+lVpXeVcglwdn2UWpTArQkoWPVbxBIEq78gNG8B8zbQIoHJCShY9RHvumAlQd5ZBduFwPn1EWpRAnsTULDqt4z+W8Js7s2\\/d6Ek4+YbexuYHQbuQlQbq4OCVT9g\\/XVYuyJY\\/V5jttmkV2UCu\\/ptR4srCChY9ZtIX7BaXzyZ1CxJYZysnilXlcwLX62PTYsSWE1AwVrN6KhX9IeE7wdee1QDM7m+X4+4FPGNGC9pq9FMQqEbHQEFq35b6A+frtkjb3n9J9a1mBxemUzvjrD6bTnRxkR3dTlrbQQBBWsEtBW3pEeVL3xr\\/ykky0L2A3YHQ+Rw0vSyIsAWCcyCgIJVPwxJ2pdz9roy99XuQ6GK3+kZRnhN8Vy\\/fWhxDQIK1hrw9rm1n3U0l8wx82h8TAqc7kSYriq\\/LkK1y9uJ6kdcixsjoGBNgzo9k4f3TM8lzUx6U0l9M8w1H6HK8G9X1oxNE1Wtbp2AgjVNCIZv2LbZy8rShIhUhnjdRHpX6wz98uZvV\\/c7ThNdrW6NgII1DfqIxA0D068H3jPN4\\/7Pag4UjUidXo5e71+Q3lQnUi5R2FBAfEwdAgpWHY57WRkOC3PNlLwjkpmX6k5AHopU5qUiVE6kTxdzLU9MYMov0MSuz9788G1hHK69\\/66bPI9IdcsR+mCuBD5S+WTl2YPXwd0loGBNG9tfACcNHnF52d4yJnVyelE5VTriFEHM0G9Ysn4qvanMo9mbmja+Wt8wAQVrWuARlpzPt1e5Dvhu74PjgOOBm4B7Aj8rBzqkFxWhyu\\/hpPlw2JchX4QqZyNaJLBzBBSs6UOao9ovnfAxeQMZoXLt1ISQNT0PAgrWZuLQ31+47hOzFCFDvQwp82Nval2i3t8MAQVrc6E6GXgR8IQ95rXixS1lSNgdPPoN4G9FkCJKzkdtLlY+aaYEFKztBCZzW5mXSjm29JTMhrCdWPjUhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydgIK19BZg\\/SXQEAEFq6Fg6aoElk5AwVp6C7D+EmiIgILVULB0VQJLJ6BgLb0FWH8JNERAwWooWLoqgaUTULCW3gKsvwQaIqBgNRQsXZXA0gkoWEtvAdZfAg0RULAaCpauSmDpBBSspbcA6y+BhggoWA0FS1clsHQCCtbSW4D1l0BDBBSshoKlqxJYOgEFa+ktwPpLoCECClZDwdJVCSydwH8AVjwxdBOf1IYAAAAASUVORK5CYII=\"},\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFLS_A1_1\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFLS_A1_1\",\"referer_site\":\"\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"message_type\":\"signature_store\"}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:07', '2023-01-23 05:52:07'),
(26, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":1,\"option_id\":\"11\",\"answer_text\":\"11-15\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:23', '2023-01-23 05:52:23'),
(27, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":2,\"option_id\":\"25\",\"answer_text\":\"\\u00a3500 - \\u00a3600\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:26', '2023-01-23 05:52:26'),
(28, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":3,\"option_id\":33,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:28', '2023-01-23 05:52:28'),
(29, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":4,\"option_id\":34,\"answer_text\":\"Yes\",\"input_answer\":\"saddxzczx\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:33', '2023-01-23 05:52:33'),
(30, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":5,\"option_id\":37,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:35', '2023-01-23 05:52:35');
INSERT INTO `api_histories` (`id`, `user_id`, `user_uuid`, `url`, `buyer_api_id`, `request_type`, `request`, `status`, `response`, `created_at`, `updated_at`) VALUES
(31, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":6,\"option_id\":39,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:36', '2023-01-23 05:52:36'),
(32, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":7,\"option_id\":41,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:37', '2023-01-23 05:52:37'),
(33, NULL, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\"},\"question_data\":{\"question_id\":8,\"option_id\":43,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:38', '2023-01-23 05:52:38'),
(34, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/home?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"message_type\":\"split_page_load\",\"page_name\":\"Split_1\",\"query_string\":\"uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:52:54', '2023-01-23 05:52:54'),
(35, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\"},\"message_type\":\"split_form_submit\",\"page_name\":\"Split_1\",\"query_string\":\"uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"visitor_data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/home?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:53:29', '2023-01-23 05:53:29'),
(36, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"signature_data\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\",\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"form_data\":{\"lstSalutation\":\"Mr\",\"txtFName\":\"four\",\"txtLName\":\"split\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Bank Of America (Lbac) Pension Trustees Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adasda@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"dsfsdf@922.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAAC\\/lJREFUeF7tnUmotEcVht8sgoLBOAUUhCgoqBGcp4UYN4LiiJqFGIeAA+IYkehGk11EcEAMGATHqOhCRcWBgLpRAwYTcSAYEl2IipKoG9048JA6WKm\\/7+3b3V9316l6C5r73\\/9+Xd+p91S9dc6pU1XnycUIGAEjkASB85LIaTGNgBEwAjJhuRMYASOQBgETVhpVWVAjYARMWO4Dh0DgIZIeL+lSST+U9DtJ95F02yFe7neMg8AshPVESZ8uA+Vl46iv25Y8RdI1ku4n6SJJl5wi6Uck\\/VnSHZK+2m2LLFgXCMxAWA+Q9LUyuwP6c8ss34UCBhKCSeGlkl4g6Wk7tOtKSZCYixE4B4EZCOujkt5RWv57SQysv7kvLIbAIyRBMpdLYnJoy82SfiDpP5L+Wf74MEmvkXTfE6T4u6RPSvqOJ5fF9DRERaMTFjM+1lWUJ0m6ZQjNHb8Rb5P0ZEmvq0T5SyGYLxaciVWdVohpUZ4h6Z2SHto8\\/BNJ3y\\/k9cfjN9kSHBuBkQmLmf\\/OCuB3ScLactkNgTdKgqwIokeBTG6Q9J4dqsbqom6s4Qc29RDf+lyJcf16h3f4q8kRGJWw2rjVN0p8Jbm6jiI+VhCfi8tPJgLK3ZJ+I+l6SZ9dULJ437slXdDU+ytJb7WbuCDayaoalbDquBXxEOJW69yTZKrbq7hYOy8qFg8rfnXBkrq9kAYpCvsquO9vLjK077jMK4r7gr3vekckLGIqpDBEIY3h632roRvpnl4I4sUlHQHB\\/iHpe5KIJ\\/Hz0C7Z4yRhbV3RoEQKxHW2trrpOwcRZDTCwpJiRSpWq8gFuvogSOZ+CcFzXLuwpv4t6UZJ3yqLFn\\/ooHmvlXRtE5gnyM8K5Rc6kM8iHACBkQgLkvq5pIix\\/KjKvToAlGlfAcHHat13Jf20WFL87K0QR2M1kU9dPi7p7b0Ja3mWR2AkwsLte0mByHGr0\\/sKpP4BSa8oge3PlBgfbtahXb5tejVuIquGdXwNl\\/Xlkpz+sA2iSb4zCmEx49bZ0c5mP7kD4iJDVlFws4hN7TOAvq\\/h8GVJz2vSIBwG2BfaHdQ7AmHhzuDWRPnYCpehA6iPLgI4sRiBdYUFykoqn+xZ\\/1hZV0l6ZYUwliIriS6DIZCdsIhbkRwaQXbHrc7toGCDRRVxHzBiJXW0NI\\/WcjRpDUZWNCc7YeHGPKeKW2E9ZLcYluxmrVUFUY2c4gEx16vCJq0le1MHdWUmrHZGddzq3h2qxodMf8hqBjKHpL9S5ZFhSb6q5JF1MOQswi4IZCUsOiWbmsMVfL0kVrpc7sGEWBUbv4lV4QrOhg394\\/OSHl51CAfjBxgdGQmrzbfyPsH\\/d8SayG8tpDVarOqsww4scBEjx4zvQVo3lWNrzlqPn+sIgYyEhbVA1jPF51vdgwMkzikHEb9hYI6wArjEUGH18BONi\\/izcrLErGS+BK77qoPdKiceAZWNsOp9grg7zJ6zn2\\/FQgPuMYqGwMEoY07VvgYA9b6w2sxdv4fJjzSY2fvQPrFfVzf9lnH8hNKH+f3EeHQmwmJgsvUm4lazn2\\/VWlUc8UK8aobA+rpBcNrfv12Oca6fgeAhryWPydlFxpG\\/yzhmZT+OEYqtdIQwmDjQAz9X9uNMhFVvvZk9bkVAHRcQpaNoiMpW1dmHOYMEzMCR\\/YlRcBGDuOwunh3PdU+yZS4ICgsqCuOYcc3nTBNtFsKqXUEGKI0\\/UwPXIZns77ECiNI5lZM4lU+j2F6JEBd9i09NXNTIIGISYFCZvDbDmP4JSTEh1ARFyIIJAVy3mmAzEFbrCs54Lnubrf5NSe937GWzUXTK0+DL4MLqIpbSFggrBhk7BUxg90YIUqrdvPoyEggf7JgAdsYtA2HVruCM+wQZRLh\\/EDfWJRbVyNnqi7HQlhUx+LC4Wnexrm52AoOcIliOt1MTFFZUWKeL99PeCau+9YbBWpuXW\\/bHNF+jI3ACRbQZsoasZnSFj6U0Jok69rLK+kI2juThxAtOZx3JRYeIaDMYgAV9sR2DEBQWFIHyRayo05TdO2Exk0Vs4ZFLmJTH6vkbvJeOAVFB1pTZE0A3gG7vjzKAGbxhXfDzwuatd0n6hSRcR8qXJN22d8l2ewF9jnFGe4KY6oTbunbaBTnVn93evsG3eyas+iKJGVIY2jjVrNtqNui+XTzKIH90SZWo72hsXcg6fhNkxv89WNJfi+WM9cyY\\/G\\/ZVsXvu8Z9goyQB1npZ2E5YQTE77W89D3eXZMSchw9X61XwqrPuJohhQE3gjhVxALs\\/nXBRVsJASk8u3zqM7pOqgxy2mQcQhwRFmjDA9F\\/IKlVt3C3MkTuE\\/XwwbWj\\/l1JcivgzvKlTYA6S31LPHP\\/st\\/rMSUmgKk6atyGGRn3rz7Pa8SzqpboF1nrYAM2l3zwiaOQaAuTMpdoMAbPX+FaLtVerKUgodpiCpJa6j0HqadHwqpzrt4g6VMHQeKwLyE+xcbcCGB69e+w+Pf8Niav1kKKbPBV7lvblsgSD0tsqMm+R8LCRKaMeBwIBIVFFQFNx6l6pg7L1h0CPRHWo8qy6CXFlyZTlmXiEUq78hdnqo+0BD6CntyGzhHoibA48iOubXpmiWN1Dt9a8doNyhAVWxOcT7UWOj9gBM5FoBfC4o65ywdzBYnFEaeK+AOrnWStd7sC4wFiBHpHoAfCwhX8bQGKSwNY3s98GSbxqeskPba0iZwbiOroOSy9d0bLZwTWIdADYWFZYWFRSMC7fZ3Qnf69DqjHUrKPfelUWRYrJwI9EBYXJuA+3SzpqQlhbAPq7K0iRjXbxQ8JVWeRsyHQE2GxB4ttCllKBNSxoiLx03GqLNqznCkR6IGwri1XjQPgqyXdkADJ9iQFW1UJlGYR8yPQA2GxXSFOH4SsIK1eS7tBGTk5BxwX0Kt\\/vWrNcg2DQA+EBZi\\/lETCaM9xLLbTkKUeaQoE1ke\\/+n2Yju6GjIFAL4TF8TEfLpC+SdL1HcHbBtURjVQFCGyofVodYW5RjMBKBHohrGdJ+nEl4YMk3d2BztpjX7Cq+D\\/O6nIxAkbgwAj0Qlg0m9t531Laj+t15YGxiNcRp+JmaYipPlMIq8pHvxxJKX6tEQCBnggL1+vOSi0n3v66J9XxfogKUoo4Fa9iBZDUhcUP1N9TO1ytERgWgZ4IC5Cxath\\/F+UQpEWKQhBVrWiICtePBFDHqoYdAm5YJgR6I6xVpHVZOZlxq4sXT1BGuH1YTrU1xeMRpzJRZerJlnUKBHokrItKPKs9D\\/uDkt67g1YgJs7YwuVbdV0YMSpIyltqdgDZXzUC+0SgR8KK9sYew7r9f5L0L0k3FlJbdwLCOpKKq7MhKSd+7rOnuW4jsAACPRMWzcPKuqo62K9tclxFhLvIv+tbQ+Lyx1UwcYb6h5JsA1pAza7CCIyBQO+EFSg\\/X9L7ytVJuyDPNhqsqSXjYbvI4+8aASOwAQJZCCuaRJ7WFadYXKuabrdvgw7hR41AzwhkI6zAsr0yvL7dFoKKW2qxptbFuXrWj2UzAkagQiArYVmJRsAITIiACWtCpbvJRiArAiasrJqz3EZgQgRMWBMq3U02AlkRMGFl1ZzlNgITImDCmlDpbrIRyIqACSur5iy3EZgQARPWhEp3k41AVgRMWFk1Z7mNwIQImLAmVLqbbASyImDCyqo5y20EJkTAhDWh0t1kI5AVARNWVs1ZbiMwIQImrAmV7iYbgawImLCyas5yG4EJETBhTah0N9kIZEXAhJVVc5bbCEyIgAlrQqW7yUYgKwImrKyas9xGYEIETFgTKt1NNgJZETBhZdWc5TYCEyJgwppQ6W6yEciKgAkrq+YstxGYEAET1oRKd5ONQFYETFhZNWe5jcCECJiwJlS6m2wEsiJgwsqqOcttBCZEwIQ1odLdZCOQFQETVlbNWW4jMCECJqwJle4mG4GsCJiwsmrOchuBCREwYU2odDfZCGRFwISVVXOW2whMiIAJa0Klu8lGICsCJqysmrPcRmBCBExYEyrdTTYCWREwYWXVnOU2AhMiYMKaUOlushHIioAJK6vmLLcRmBABE9aESneTjUBWBExYWTVnuY3AhAj8D5uOzHTrDOL9AAAAAElFTkSuQmCC\"},\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/home?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":\"uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"message_type\":\"signature_store\"}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:53:31', '2023-01-23 05:53:31'),
(37, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":1,\"option_id\":\"10\",\"answer_text\":\"10\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:53:42', '2023-01-23 05:53:42');
INSERT INTO `api_histories` (`id`, `user_id`, `user_uuid`, `url`, `buyer_api_id`, `request_type`, `request`, `status`, `response`, `created_at`, `updated_at`) VALUES
(38, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":2,\"option_id\":\"24\",\"answer_text\":\"\\u00a3400 - \\u00a3500\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:53:45', '2023-01-23 05:53:45'),
(39, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":3,\"option_id\":33,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:53:46', '2023-01-23 05:53:46'),
(40, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":4,\"option_id\":34,\"answer_text\":\"Yes\",\"input_answer\":\"test\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:53:51', '2023-01-23 05:53:51'),
(41, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":5,\"option_id\":37,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:53:57', '2023-01-23 05:53:57'),
(42, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":6,\"option_id\":39,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:54:01', '2023-01-23 05:54:01'),
(43, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":7,\"option_id\":41,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:54:07', '2023-01-23 05:54:07');
INSERT INTO `api_histories` (`id`, `user_id`, `user_uuid`, `url`, `buyer_api_id`, `request_type`, `request`, `status`, `response`, `created_at`, `updated_at`) VALUES
(44, NULL, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\"},\"question_data\":{\"question_id\":8,\"option_id\":43,\"answer_text\":\"No\",\"input_answer\":\"\"},\"message_type\":\"question_store\",\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\\/questionnaire?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"referer_site\":\"http:\\/\\/localhost:3000\\/google_verification?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"query_string\":null,\"form_data\":{\"lstSalutation\":\"Ms\",\"txtFName\":\"sadadasd\",\"txtLName\":\"sadad\",\"txtPostCode\":\"ec1a1hq\",\"address1\":\"OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3\",\"txtHouseNumber\":\"Merrill Lynch, Pierce, Fenner & Smith Ltd\",\"txtTown\":\"London\",\"txtCountry\":\"England\",\"DobDay\":\"11\",\"DobMonth\":\"11\",\"DobYear\":\"1990\",\"txtPhone\":\"01777777777\",\"txtEmail\":\"adsxzq@922.com\",\"arrears\":\"No\",\"txtPrevEmail\":\"test@gmail.com\",\"txtAddress3\":\"2 King Edward Street\",\"txtUdprn\":\"\",\"txtDeliveryPointSuffix\":\"\",\"txtPz_mailsort\":\"\",\"txtStreet\":\"\",\"page_name\":\"Split_1\",\"pCode_manual\":\"0\",\"user_sign\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABkCAYAAAA8AQ3AAAAAAXNSR0IArs4c6QAADsRJREFUeF7tnWfIBUcVht\\/4K5YQWyxBjQaJEHuLJYJdsWCJKBEVFYOiYosaRX+oIPZegg1U\\/GFDsaE\\/7BAVNWIPalSMsUWxBDWKYOEhc2AY99777d7d2Z2978By7\\/fdnZkz78y+e+bMmTPHyMkIGAEj0AgCxzQip8U0AkbACMiE5UFgBIxAMwiYsJrpKgtqBIyACctjwAgYgWYQMGE101UW1AgYAROWx4ARMALNIGDCaqarLKgRMAImLI8BI2AEmkHAhNVMV1lQI2AETFgeA0bACDSDgAmrma6yoEbACJiwPAaMgBFoBgETVjNdZUGNgBEwYXkMLB2Bq0q6oaTjk6D8fasRhf6LJMr8g6QTinL5fyRkyP\\/m\\/\\/yPlP\\/\\/O1meX0iifD65Lkqf\\/M9pAAImrAGgOcteCJwq6TJJt08kcTdJ\\/00PfRBRkENJEHtVvCPz3yRdZcs9l6bfgoR2yUIbTtpwE4T1pYzMviDp4qz8XWUf7O8mrIPt+ioNh5yuJenhkvh+0w4tBkF+IukfSaLQSPgMTSRIIv7ONZRco8kbFWQXGhS\\/5d\\/j3vL3KYCBvPILYg7NsSQ15KFNgQPfc+1sCvmaKdOE1UxXNSHo9SXdQ9Jpku6aCCoE\\/2HSqD4r6TfpIUTLQMPi81BTTHEhtIckYrvlFjAgL0gsLqaZm0h7dZiasFbXpVUbFJrT\\/SVdU9IVMrsOgrxZ0p8kfUjSBVUla78ytLD84gWwKYU2BvFzfTnTTttHImuBCWtV3TlZY85MhHR3SWdsqOWXkr6etCgemg9PJs3hFow2ikbGJ9c2TQyt62MZga0CNRPWKrpxkkZgc3qAJEjqfh01YHeCpD4n6YqSXjyJFC50FwJBXmhjfI\\/V1DwfGhjkxfXxXQUu+XcT1pJ7Zx7ZbivpvYX9KST5pqRPS\\/qopAszQ\\/k8krrWLgSCwLCHdWlgTZOXCcuDPkfgHEmv7ICEKd6rE1kZsXYQwJAPgUFeD+4QG\\/J6T3pBdRnuyXuKJF5i95H0NEmfmrP5Jqw50V9W3QzK8wuRXi7pjZIuWZaolmYAAti+IK7HpRXcsghWHyGvHydTwJ0lnVzchF3yEQPqHi2LCWs0KJsvCLKCtCKxwvf05lvlBnQhEC4UkNc2w32Z9yVz2ypNWB7QIPCiYiC+XtLZhmb1CDDlQ4u+45aW4pbyM0nvkvSOuRExYc3dA\\/PXf5yk7xX+UzdKjp3zS2cJpkAAonqQpGdtKPyfko4tfmOv5ScknZemjlPItbNME9ZOiFZ\\/A86fOHZGeq2k56y+1YfbQNxPntKxRepcSexCiD2OTBcfmoitRAsD\\/TslkadqMmFVhXuRlT1P0isyyTwmFtlNewuF8+\\/LJKE95wkCC3eVrkqwd0FemA3K9K1kSqi2cujBufc4aL6AJ0p6uwmr+X7c1ACmf4+URD9HYi8nq4GQ2O97tBzSQiNnE3ukP0t6Uq2dDSasHr210ltR7c\\/K2naipN+utK2H1CxcGJ6R\\/LDydmOLYiq3z84E8pYaFy4Rj58aYBPW1Agvv\\/xnSmJVMBKDjsHn1C4CXYRCa\\/CjgqzGiI6B5vY+SdfLYJrc7cGE1e6gHEtyBt4Xs8IYzOwfdGoPgRsnOxXTtjJNQSbYt16VpolRH9PDydwfTFjtDcopJCbiZ6RfSXrMSG\\/hKWR1md0I4PSLs++dip\\/RquKaAjteeO\\/O3GIYP4Qb+v4UlZmwpkC1vTIxuudGWYLt3ay9ZhysxKWWHEDUdADOX3qf3OAOsXcHmbD2hnAVBdwhRWDA4B4Jw\\/u9HHhv0f0LUbG378mVpoDbwCjtZpMs3piwFj0eqwrXZaj9XYqFdTAheKsivl9lV0tTwEd1FIMNcgzDel8JP59CZJPvdpLw0xo1mbBGhXMVhRGZgYMjIrGL\\/wWS3r+K1q2jEVeX9JEOl4XvjnwEWl+0cp8+fLVGD4ttwurbJeu\\/H9sV2tbDiqZ6y85y+p6tVOVKIFrwrWcW8QfJqfSrkk6fQhYT1hSorqPM10h6dtGUMf141oFS3VZgs8Jhk8881TSud7UYdwrcGdiD+jVJxNKaJJmwJoF1NYUSYfJNRWsYkPjeEB\\/cqS4C5WoutU\\/hX9WnVRDoXdICDeYDHI8ns5+ZsPp0zWHeywEUb+mIPsnqlE\\/GqTcmyqgac5MVWh6aXZzWzQvshVPYrXKITVj1BlzLNaHyf6CISEp7ICzsXaMbV1sGawLZiaZBVI08zbUjAaJ6bIrgEPK8bYNrxehQmLBGh3TVBeLRTKiRMnFwxfNX3fL5GtcVa5\\/zH7dFCR1bWrQoDnKl70Ojog5OV2IvKodZVEkmrCowr6qSR0t6QofhlyiVTB2fu6rWztsYDo5Ai8WBNxJ2ojKm1dhSskcQgooTd5Aj0qVpc\\/wb5ohKa8Iar6vp3MmMjeOJOVpJ2FTiKgsl2gOn7djhdD+4S2deyOq+kjjEduwUB1NwHFi5Col\\/F2Oba9bFFhPWON3+lbSU+5m08XOcUtsohW09+GwxXTihEBnC4k3MacPVpg1twLZTSqZe3y40qylW4KiHuFn5VP+i7Jj7CJm8U+AaN5iwxkGZqI3xsLJTHeI6tHRlSfdOA788tDPOvEPrMnEdbWSUzqFjuy9ge4KomO5xoUWhGUNQi9WMTVhHGzy77uLthEGaNPthk7uErfA70wumM0S9PL6oL04aPqTpcx\\/IMbLjtJtPy8ZaEYSYIj4730OTYprXRH+YsPoMpe335mf7ze15PF6r9ispHhDIqyQu3uJBXoesdUHukdjIjNaTT63RTjmOax\\/bEf2AKwL9ENoUU3XKbAp7E9Z+D2Sem1CxF6d\\/\\/DXFA2rirTUeBFtL4s2OxlVOF8kEcfHwYOtaczo105xYsCiN22Xb99WsICfwhpz4Dr6Q1mKnfLs634S1C6F+v+d+SvsOtn41t3M3GgX2Ewis1Lp420NcXF9u7e3f0QUQ0imSHijp5sVhtbt6jDDD7M8bksAYogJnvuMvBVGhrTWdTFjjd19ugPf2le34onFBXF1aFznDAMznkgnsJEn\\/lnQbSdeRdJqke24gKEiDCy38R8UuAciF3zhhmSPi+yQ0KAgSLMEVfymIfxZ\\/qT6C97nXhNUHraPdm9uyGHycntusCn60Jo9yFw8ZFw8dBNCVwhcIPOcgMAziuHFcJukWyZWFv3cl3F64vpEO\\/OhLRpvKh6Rw8GSM8cnzHLbBfWxeu9oz2+8mrGmgz+Nbe9WwP8ZoGvgHQV5ct9xQxE8lnZce0iCwTdMeyoQI+YyLYqknDM84ZEJK15D0x1Qnf\\/dJRNnkFCLO\\/4OgQqPqU8a2e5EXLYrYV3+X9IA09aMeyKopI3pfUExYfRE72v25mwM5sB\\/gR+M0HAEe1JzI+H6spGt3FMlDGw9uvgo3vPbLc0JG\\/5LEyTA\\/T2fyQZqfTRrUvuV35Q\\/ihrQhb9oDOTPVg6Cat0v1Ac2E1QetfveWjn+2Z\\/XD7yh3MyXigY4rNKeuKSWOkZBYrvHwN+GG\\/5P+z9FUJyftCBsT6bj0WWvFN6Z5kBMvvvCXyrfGrFqL2tbxJqyjPBbD7unaZX92ccrysJKda00IhOsBBBXES\\/ti\\/14zTp01OsWENS3KOJCytJynD0o6c9pqXfqCEcgjIeQEhde5tagdHWfCmn5kn98R+O5cSU+dvmrXsAAEIkxL2KLyUC04cuYrnwsQd9kimLCm7x\\/eqJykfKWiKq8eTo997RpCewpyyoPdoUFhJM99y2rL13x9Jqw6XXiOJKJylomlbzQtx0av0w9j1xLaU6ze5SuS2KAgqJykxq7\\/4MozYdXrcjawvm5Ddbx1cXuotRJVr9XrqQkyCteCMJBH6\\/AqzzUn9+NE\\/W7CmgjYDcW+VdIjJXHMeFfiqO+zDs23pm4XHLm2cNDMXSYiM35QueZ0UL5QR0ZwghtNWBOAuqNI3s4v3XIyLj42RC9AI3OqgwCG8BukLS7l9C5W7zy1q9MXW2sxYc3XCWdI4qDSTSFGIC485Nlpf7COghN1TxjHI445n5dIuknyIs9tT9aeJuqEIcWasIagNm4egrWdnrZadHlo8\\/CgbdkuMhz33PcpNKh8epfbn\\/xyGI7z5DlNWJND3KsCHia0KlafyhTTRD9QuyGN7S0R\\/SFfvYspHh7kB7cXbzd0y77DhLXM\\/uFBY3NrqXFBVpycssrQIXt2BSSPgTxIKi8OFwMwg\\/Q9xdsT6Dmzm7DmRH973WgJaFtdkTkhM06gOeSHD3LCzSAIqjzsM\\/bgNRe3fLlDcn7JTFjz98EuCXgw0QzKmFBhlIe41p5yH6hwM8gJivZ7s\\/DaR0GKUHgAzWy+iXH6DJupyxRn\\/rGa2LrGxbQuD7DH902rqOFJHqcR27bX\\/DDf3QBrWLsxWtIdaBdEf+DIpq6EETmmQhH\\/aSnyQ7poiZAQ36+b3Aji722B9mIfXu5uYIJaSs9WlMOEVRHsEasK4uo6qDSv5gJJhP2NoHV88qBDAGNrY8jEKTh8RmA9PvNwxJsgYGsLKVbtItxvfI4InYtqGQETVsu9d7nscXhD+Br1aVEQWETizEMLbyonSCiOOM8jEmyrO0iSOiCmCyX9+hDikPfpEN+7HQET1vpGSEyxTkzHTcVUawih9UUHTSkOQojpWxCUp3B90fT9\\/4eACevwBkVuMyq\\/g0asvpWf+VFlMcXMNTN74h\\/eWKreYhNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgCJqyhyDmfETAC1REwYVWH3BUaASMwFAET1lDknM8IGIHqCJiwqkPuCo2AERiKgAlrKHLOZwSMQHUETFjVIXeFRsAIDEXAhDUUOeczAkagOgImrOqQu0IjYASGImDCGoqc8xkBI1AdARNWdchdoREwAkMRMGENRc75jIARqI6ACas65K7QCBiBoQiYsIYi53xGwAhUR8CEVR1yV2gEjMBQBExYQ5FzPiNgBKojYMKqDrkrNAJGYCgC\\/wMMoF+DPU8qJwAAAABJRU5ErkJggg==\"}}', NULL, '{\"status\":\"Success\"}', '2023-01-23 05:54:14', '2023-01-23 05:54:14'),
(45, NULL, 'UNFR048-9ce20e40-9c9f-11ed-aae0-03d7d4152d62', 'v1\\Api\\DataIngestion\\data-ingestion-pipeline', NULL, NULL, '{\"visitor_parameters\":{\"uuid\":\"UNFR048-9ce20e40-9c9f-11ed-aae0-03d7d4152d62\"},\"data\":{\"split_path\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"affiliate_id\":0,\"transid\":\"\",\"site_flag_id\":\"Web\",\"scr_resolution\":\"\",\"country\":\"GB\",\"ip_address\":\"UNKNOWN\",\"browser\":\"Chrome\",\"platform\":\"Windows\",\"site_flag\":2,\"aff_id\":\"\",\"aff_sub\":\"\",\"offer_id\":\"\",\"aff_sub2\":\"\",\"aff_sub3\":\"\",\"aff_sub4\":\"\",\"aff_sub5\":\"\",\"campaign\":\"\",\"source\":\"\",\"tid\":\"\",\"pid\":\"\",\"thr_source\":\"\",\"thr_transid\":\"\",\"thr_sub1\":\"\",\"thr_sub2\":\"\",\"thr_sub3\":\"\",\"thr_sub4\":\"\",\"thr_sub5\":\"\",\"thr_sub6\":\"\",\"thr_sub7\":\"\",\"thr_sub8\":\"\",\"thr_sub9\":\"\",\"thr_sub10\":\"\",\"pixel\":\"\",\"tracker\":\"\",\"atp_source\":\"\",\"atp_vendor\":\"\",\"atp_sub1\":\"\",\"atp_sub2\":\"\",\"atp_sub3\":\"\",\"atp_sub4\":\"\",\"atp_sub5\":\"\",\"atp_sub6\":\"\",\"media_vendor\":\"\",\"ext_var1\":\"\",\"ext_var2\":\"\",\"ext_var3\":\"\",\"ext_var4\":\"\",\"ext_var5\":\"\",\"adv_vis_id\":\"\",\"adv_page\":\"\",\"redirectDomain\":\"\",\"domain_name\":\"http:\\/\\/localhost:3000\",\"existingdomain\":\"http:\\/\\/localhost:3000\\/0602UFSN_A1_7\",\"referer_site\":\"http:\\/\\/localhost:3000\\/home?uuid=UNFR048-9708b880-9c9f-11ed-a292-41c3c9f81b77\",\"adv_page_name\":0,\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"},\"message_type\":\"split_page_load\",\"page_name\":\"Split_1\"}', NULL, '{\"status\":\"Success\"}', '2023-01-25 05:31:27', '2023-01-25 05:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `sign_type` enum('digital','wet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wet',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `type` int(11) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_code`, `bank_name`, `rank`, `sign_type`, `status`, `type`, `product_id`, `created_at`, `updated_at`) VALUES
(122, NULL, 'SafetyNet Credit', NULL, 'wet', '1', 2, 4, '2023-01-23 05:45:44', '2023-01-23 05:45:44'),
(129, NULL, 'volkswagen', NULL, 'wet', '1', NULL, NULL, '2023-01-23 05:45:44', '2023-01-23 05:45:44'),
(132, NULL, 'blackhorse', NULL, 'wet', '1', NULL, NULL, '2023-01-23 05:45:44', '2023-01-23 05:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_details_reviews`
--

CREATE TABLE `bank_details_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_sort_code` tinyint(4) DEFAULT NULL,
  `bank_account_number` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklisted_items`
--

CREATE TABLE `blacklisted_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bi_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bi_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_api_responses`
--

CREATE TABLE `buyer_api_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `signature_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_request_type` enum('NULL','CAKE','BUYER_API') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'claimId',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_api_response_details`
--

CREATE TABLE `buyer_api_response_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_api_response_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_param` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_details`
--

CREATE TABLE `buyer_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyer_details`
--

INSERT INTO `buyer_details` (`id`, `buyer_name`, `data_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cake', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(2, 'CRM', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `cron_mappings`
--

CREATE TABLE `cron_mappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_mappings`
--

INSERT INTO `cron_mappings` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BuyerLOAPdfTrigger', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(2, 'SafetyNetEmailTrigger1', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(3, 'SafetyNetEmailTrigger2', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(4, 'SafetyNetSMSTrigger1', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(5, 'SafetyNetSMSTrigger2', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(6, 'SafetyNetSMSTrigger3', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(7, 'CakePostTrigger', NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `device_site_masters`
--

CREATE TABLE `device_site_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_site_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_site_comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_site_masters`
--

INSERT INTO `device_site_masters` (`id`, `device_site_name`, `device_site_comment`, `created_at`, `updated_at`) VALUES
(1, 'All', 'All pages', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(2, 'Web', 'Website Page', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(3, 'Mobile', 'Mobile page', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(4, 'Tablet', 'Tablet page', '2023-01-23 11:15:44', '2023-01-23 11:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `domain_details`
--

CREATE TABLE `domain_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Both','LP','Adv') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Both',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `last_active_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domain_details`
--

INSERT INTO `domain_details` (`id`, `domain_name`, `type`, `status`, `last_active_date`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost:3000', 'LP', '1', '2023-01-23 05:47:57', '2023-01-23 05:47:57', '2023-01-23 05:47:57');

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
-- Table structure for table `followup_api_responses`
--

CREATE TABLE `followup_api_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followup_histories`
--

CREATE TABLE `followup_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bank_sort_code,bank_account_id,signature,questionnaire',
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'web,sms,crm',
  `post_crm` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followup_histories`
--

INSERT INTO `followup_histories` (`id`, `user_id`, `bank_id`, `type`, `type_id`, `value`, `source`, `post_crm`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'first_name', 0, 'one', 'live', 0, '2023-01-23 05:48:23', '2023-01-23 05:48:23'),
(2, 1, NULL, 'last_name', 0, 'split', 'live', 0, '2023-01-23 05:48:23', '2023-01-23 05:48:23'),
(3, 1, NULL, 'email', 0, 'dsada@922.com', 'live', 0, '2023-01-23 05:48:23', '2023-01-23 05:48:23'),
(4, 1, NULL, 'telephone', 0, '01777777777', 'live', 0, '2023-01-23 05:48:23', '2023-01-23 05:48:23'),
(5, 1, NULL, 'dob', 0, '1990-01-11', 'live', 0, '2023-01-23 05:48:23', '2023-01-23 05:48:23'),
(6, 1, NULL, 'postcode', 0, 'EC1A1HQ', 'live', 0, '2023-01-23 05:48:23', '2023-01-23 05:48:23'),
(7, 1, NULL, 'questionaire1', 1, '4', 'live', 0, '2023-01-23 05:48:30', '2023-01-23 05:48:30'),
(8, 1, NULL, 'questionaire1', 2, '23', 'live', 0, '2023-01-23 05:48:31', '2023-01-23 05:48:31'),
(9, 1, NULL, 'questionaire1', 3, '33', 'live', 0, '2023-01-23 05:48:39', '2023-01-23 05:48:39'),
(10, 1, NULL, 'questionaire1', 4, '35', 'live', 0, '2023-01-23 05:48:43', '2023-01-23 05:48:43'),
(11, 1, NULL, 'questionaire1', 5, '37', 'live', 0, '2023-01-23 05:48:58', '2023-01-23 05:48:58'),
(12, 1, NULL, 'questionaire1', 6, '39', 'live', 0, '2023-01-23 05:49:02', '2023-01-23 05:49:02'),
(13, 1, NULL, 'questionaire1', 7, '41', 'live', 0, '2023-01-23 05:49:03', '2023-01-23 05:49:03'),
(14, 1, NULL, 'questionaire1', 8, '43', 'live', 0, '2023-01-23 05:49:03', '2023-01-23 05:49:03'),
(15, 2, NULL, 'first_name', 0, 'two', 'live', 0, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(16, 2, NULL, 'last_name', 0, 'split', 'live', 0, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(17, 2, NULL, 'email', 0, 'sada@922.com', 'live', 0, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(18, 2, NULL, 'telephone', 0, '01777777777', 'live', 0, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(19, 2, NULL, 'dob', 0, '1990-01-11', 'live', 0, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(20, 2, NULL, 'postcode', 0, 'EC1A1HQ', 'live', 0, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(21, 2, NULL, 'signature', 0, '1', 'live', 0, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(22, 2, NULL, 'questionaire1', 9, '44', 'live', 0, '2023-01-23 05:50:45', '2023-01-23 05:50:45'),
(23, 2, NULL, 'questionaire1', 10, '51', 'live', 0, '2023-01-23 05:50:53', '2023-01-23 05:50:53'),
(24, 2, NULL, 'questionaire1', 11, '79', 'live', 0, '2023-01-23 05:50:57', '2023-01-23 05:50:57'),
(25, 2, NULL, 'questionaire1', 12, '167', 'live', 0, '2023-01-23 05:50:57', '2023-01-23 05:50:57'),
(26, 2, NULL, 'questionaire1', 16, '373', 'live', 0, '2023-01-23 05:50:58', '2023-01-23 05:50:58'),
(27, 2, NULL, 'questionaire1', 17, '375', 'live', 0, '2023-01-23 05:50:59', '2023-01-23 05:50:59'),
(28, 2, NULL, 'questionaire1', 18, '377', 'live', 0, '2023-01-23 05:50:59', '2023-01-23 05:50:59'),
(29, 2, NULL, 'questionaire1', 19, '379', 'live', 0, '2023-01-23 05:51:03', '2023-01-23 05:51:03'),
(30, 2, NULL, 'questionaire1', 20, '381', 'live', 0, '2023-01-23 05:51:04', '2023-01-23 05:51:04'),
(31, 3, NULL, 'first_name', 0, 'four', 'live', 0, '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(32, 3, NULL, 'last_name', 0, 'split', 'live', 0, '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(33, 3, NULL, 'email', 0, 'adasda@922.com', 'live', 0, '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(34, 3, NULL, 'telephone', 0, '01777777777', 'live', 0, '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(35, 3, NULL, 'dob', 0, '1990-01-11', 'live', 0, '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(36, 3, NULL, 'postcode', 0, 'EC1A1HQ', 'live', 0, '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(37, 3, NULL, 'signature', 0, '1', 'live', 0, '2023-01-23 05:52:09', '2023-01-23 05:52:09'),
(38, 3, NULL, 'questionaire1', 1, '11', 'live', 0, '2023-01-23 05:52:24', '2023-01-23 05:52:24'),
(39, 3, NULL, 'questionaire1', 2, '25', 'live', 0, '2023-01-23 05:52:28', '2023-01-23 05:52:28'),
(40, 3, NULL, 'questionaire1', 3, '33', 'live', 0, '2023-01-23 05:52:29', '2023-01-23 05:52:29'),
(41, 3, NULL, 'questionaire1', 4, '34', 'live', 0, '2023-01-23 05:52:37', '2023-01-23 05:52:37'),
(42, 3, NULL, 'questionaire1', 5, '37', 'live', 0, '2023-01-23 05:52:37', '2023-01-23 05:52:37'),
(43, 3, NULL, 'questionaire1', 6, '39', 'live', 0, '2023-01-23 05:52:38', '2023-01-23 05:52:38'),
(44, 3, NULL, 'questionaire1', 7, '41', 'live', 0, '2023-01-23 05:52:38', '2023-01-23 05:52:38'),
(45, 3, NULL, 'questionaire1', 8, '43', 'live', 0, '2023-01-23 05:52:39', '2023-01-23 05:52:39'),
(46, 4, NULL, 'first_name', 0, 'sadadasd', 'live', 0, '2023-01-23 05:53:30', '2023-01-23 05:53:30'),
(47, 4, NULL, 'last_name', 0, 'sadad', 'live', 0, '2023-01-23 05:53:30', '2023-01-23 05:53:30'),
(48, 4, NULL, 'email', 0, 'adsxzq@922.com', 'live', 0, '2023-01-23 05:53:30', '2023-01-23 05:53:30'),
(49, 4, NULL, 'telephone', 0, '01777777777', 'live', 0, '2023-01-23 05:53:30', '2023-01-23 05:53:30'),
(50, 4, NULL, 'dob', 0, '1990-01-11', 'live', 0, '2023-01-23 05:53:30', '2023-01-23 05:53:30'),
(51, 4, NULL, 'postcode', 0, 'EC1A1HQ', 'live', 0, '2023-01-23 05:53:30', '2023-01-23 05:53:30'),
(52, 4, NULL, 'signature', 0, '1', 'live', 0, '2023-01-23 05:53:34', '2023-01-23 05:53:34'),
(53, 4, NULL, 'questionaire1', 1, '10', 'live', 0, '2023-01-23 05:53:45', '2023-01-23 05:53:45'),
(54, 4, NULL, 'questionaire1', 2, '24', 'live', 0, '2023-01-23 05:53:46', '2023-01-23 05:53:46'),
(55, 4, NULL, 'questionaire1', 3, '33', 'live', 0, '2023-01-23 05:53:47', '2023-01-23 05:53:47'),
(56, 4, NULL, 'questionaire1', 4, '34', 'live', 0, '2023-01-23 05:53:51', '2023-01-23 05:53:51'),
(57, 4, NULL, 'questionaire1', 5, '37', 'live', 0, '2023-01-23 05:53:58', '2023-01-23 05:53:58'),
(58, 4, NULL, 'questionaire1', 6, '39', 'live', 0, '2023-01-23 05:54:03', '2023-01-23 05:54:03'),
(59, 4, NULL, 'questionaire1', 7, '41', 'live', 0, '2023-01-23 05:54:10', '2023-01-23 05:54:10'),
(60, 4, NULL, 'questionaire1', 8, '43', 'live', 0, '2023-01-23 05:54:14', '2023-01-23 05:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `followup_list`
--

CREATE TABLE `followup_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('sms','email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_signed` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `questions` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `bank_details` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `lead_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followup_stages`
--

CREATE TABLE `followup_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followup_strategy_config`
--

CREATE TABLE `followup_strategy_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `strategy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `strategy_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followup_strategy_content`
--

CREATE TABLE `followup_strategy_content` (
  `id` bigint(20) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followup_vendor_pixel_firing`
--

CREATE TABLE `followup_vendor_pixel_firing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `followup_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_type` enum('LP','TY','CN') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LP',
  `pixel_type` enum('web','API') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `pixel_log` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followup_visit`
--

CREATE TABLE `followup_visit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atp_sub2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracker_unique_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fireflag` int(11) DEFAULT NULL,
  `adtopia_response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ho_cake_visitors`
--

CREATE TABLE `ho_cake_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `aff_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_sub` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_sub2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_sub3` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_sub4` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_sub5` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_unique1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_unique2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aff_unique3` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subid1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subid2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subid3` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joint_account_details`
--

CREATE TABLE `joint_account_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_docs`
--

CREATE TABLE `lead_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_payer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouses_insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_identification_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_identification_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_identification_image_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouses_identification_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouses_identification_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouses_identification_image_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_loa_pdf_files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `malware_docs`
--

CREATE TABLE `malware_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `docs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `middleman_questionnaires`
--

CREATE TABLE `middleman_questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `live_id` bigint(20) UNSIGNED DEFAULT NULL,
  `crm_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `middleman_questionnaire_options`
--

CREATE TABLE `middleman_questionnaire_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_target` bigint(20) UNSIGNED DEFAULT NULL,
  `live_id` bigint(20) UNSIGNED DEFAULT NULL,
  `crm_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2021_04_16_100006_create_buyer_details_table', 1),
(2, '2021_04_16_100922_create_verticals_table', 1),
(3, '2021_04_16_100924_create_domain_details_table', 1),
(4, '2021_04_16_100927_create_pages_table', 1),
(5, '2021_04_16_102057_create_tracker_masters_table', 1),
(6, '2021_04_16_182647_create_adv_info_table', 1),
(7, '2021_04_16_183517_create_adv_visitors_table', 1),
(8, '2021_04_16_184112_create_adv_visitors_count_table', 1),
(9, '2021_04_16_184904_create_adv_visitors_adtopia_details_table', 1),
(10, '2021_04_16_185514_create_adv_pixel_firing_table', 1),
(11, '2021_04_19_102541_create_split_info_table', 1),
(12, '2021_04_19_105942_create_products_table', 1),
(13, '2021_04_19_110144_create_questionnaires_table', 1),
(14, '2021_04_19_110249_create_questionnaire_options_table', 1),
(15, '2021_04_19_110510_create_visitors_table', 1),
(16, '2021_04_19_110800_create_users_table', 1),
(17, '2021_04_19_111159_create_user_extra_details_table', 1),
(18, '2021_04_19_112601_create_user_questionnaire_answers_table', 1),
(19, '2021_04_19_113937_create_user_questionnaire_answers_histories_table', 1),
(20, '2021_04_19_114156_create_user_questionnaire_meta_table', 1),
(21, '2021_04_19_114320_create_user_questionnaire_stats_table', 1),
(22, '2021_04_19_114558_create_visitors_slides_table', 1),
(23, '2021_04_19_114617_create_visitor_unqualifieds_table', 1),
(24, '2021_04_19_114634_create_site_config_table', 1),
(25, '2021_04_19_114656_create_api_histories_table', 1),
(26, '2021_04_19_114714_create_buyer_api_responses_table', 1),
(27, '2021_04_19_114729_create_buyer_api_response_details_table', 1),
(28, '2021_04_19_114746_create_middleman_questionnaires_table', 1),
(29, '2021_04_19_114804_create_middleman_questionnaire_options_table', 1),
(30, '2021_04_19_114949_create_validation_email_tracking_table', 1),
(31, '2021_04_19_115345_create_validation_phone_tracking_table', 1),
(32, '2021_04_19_115457_create_visitors_count_table', 1),
(33, '2021_04_19_115604_create_visitors_extra_details_table', 1),
(34, '2021_04_19_115709_create_visitors_journey_table', 1),
(35, '2021_04_19_115803_create_visitors_last_visit_table', 1),
(36, '2021_04_19_125939_create_adv_visitors_page_history_table', 1),
(37, '2021_04_19_130643_create_adv_visitors_temp_table', 1),
(38, '2021_04_19_170404_create_adv_click_details_table', 1),
(39, '2021_04_19_174713_create_adv_visitors_extra_details_table', 1),
(40, '2021_04_20_095111_create_user_milestone_stats_table', 1),
(41, '2021_04_20_095616_create_vendor_pixel_firing_table', 1),
(42, '2021_04_20_115517_create_lead_docs_table', 1),
(43, '2021_04_20_122725_create_blacklisted_items_table', 1),
(44, '2021_04_20_123826_create_postcode_lookup_result_table', 1),
(45, '2021_04_20_124340_create_postcode_lookup_search_table', 1),
(46, '2021_04_20_124924_create_postcode_validation_table', 1),
(47, '2021_04_20_130245_create_ho_cake_visitors_table', 1),
(48, '2021_04_20_131328_create_sqsl_page_visits_table', 1),
(49, '2021_04_20_131800_create_thrive_visitors_table', 1),
(50, '2021_04_20_132336_create_affliate_table', 1),
(51, '2021_04_20_183224_add_user_uuid_to_users_table', 1),
(52, '2021_04_21_094933_create_cron_mappings_table', 1),
(53, '2021_04_21_095301_create_queue_halt_table_table', 1),
(54, '2021_04_21_124359_create_adtopia_visitors_table', 1),
(55, '2021_04_21_132459_create_jobs_table', 1),
(56, '2021_04_21_132753_create_failed_jobs_table', 1),
(57, '2021_04_22_132553_create_followup_histories_table', 1),
(58, '2021_05_18_133756_create_device_site_masters_table', 1),
(59, '2021_10_06_162832_create_split_uuid_table', 1),
(60, '2021_10_12_150451_create_share_table', 1),
(61, '2021_10_21_070937_add_user_uuid_to_api_histories_table', 1),
(62, '2022_04_06_122403_create_banks_table', 1),
(63, '2022_04_06_124124_create_adv_uuid_table', 1),
(64, '2022_04_06_124506_create_bank_accounts_table', 1),
(65, '2022_04_06_125016_create_add_updated_track_masters_table', 1),
(66, '2022_04_06_125535_create_bank_details_reviews_table', 1),
(67, '2022_04_06_125953_create_malware_docs_table', 1),
(68, '2022_04_06_131859_create_joint_account_details_table', 1),
(69, '2022_04_06_141657_create_pdf_triggers_table', 1),
(70, '2022_04_06_142324_create_signatures_table', 1),
(71, '2022_04_06_144357_create_user_spouses_details_table', 1),
(72, '2022_04_06_145928_create_followup_vendor_pixel_firing_table', 1),
(73, '2022_04_06_150649_create_followup_list_table', 1),
(74, '2022_04_06_151948_create_followup_visit_table', 1),
(75, '2022_04_06_152708_create_user_address_details_table', 1),
(76, '2022_04_06_154320_create_followup_api_responses_table', 1),
(77, '2022_04_06_154433_create_followup_strategy_config_table', 1),
(78, '2022_04_06_154521_create_followup_strategy_content_table', 1),
(79, '2022_04_06_154632_create_user_banks_table', 1),
(80, '2022_04_06_154708_create_sms_scheduleds_table', 1),
(81, '2022_04_06_155157_create_user_bank_details_table', 1),
(82, '2022_10_12_112820_create_followup_stages_table', 1),
(83, '2023_01_10_154436_create_ukvd_data_lookup_table', 1),
(84, '2023_01_10_170622_create_vehicle_details_table', 1),
(85, '2023_01_10_173712_create_vehicle_extra_details_table', 1),
(86, '2023_01_11_104953_create_otp_histories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp_histories`
--

CREATE TABLE `otp_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `bank_id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_mode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `verified_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `expire_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vertical_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cake_vertical_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pdf_triggers`
--

CREATE TABLE `pdf_triggers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualify_status` tinyint(4) DEFAULT 0,
  `trigger_type` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `post_crm` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postcode_lookup_result`
--

CREATE TABLE `postcode_lookup_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paf_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits_display_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliverypointsuffix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohouseholds` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smallorg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pobox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rawpostcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pz_mailsort` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spare` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `udprn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fl_unique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postcode_lookup_search`
--

CREATE TABLE `postcode_lookup_search` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paf_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postcode_validation`
--

CREATE TABLE `postcode_validation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits_display_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lookup_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliverypointsuffix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohouseholds` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smallorg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pobox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rawpostcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pz_mailsort` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spare` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `udprn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fl_unique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `split_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `type` enum('questionnaire0','questionnaire1','questionnaire2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'questionnaire1',
  `form_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `extra_param` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `bank_id`, `title`, `is_required`, `type`, `form_type`, `default_id`, `parent`, `extra_param`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Number of consecutive months borrowed SafetyNet Credit?', 'yes', 'questionnaire0', 'button', 1, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(2, NULL, 'How much would you typically borrow?\r\n                ', 'yes', 'questionnaire0', 'button', 2, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(3, NULL, 'Did you register with SafetyNet Credit at a different/previous address than your current address?\r\n                ', 'yes', 'questionnaire0', 'button', 3, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(4, NULL, 'When you took out this loan, did you have a former surname (different than your current surname)?\r\n                ', 'yes', 'questionnaire0', 'button', 4, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(5, NULL, 'Are you in arrears with SafetyNet Credit?\r\n                ', 'yes', 'questionnaire0', 'button', 5, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(6, NULL, 'Are you subject to or have you ever been subject to an Individual Voluntary Arrangement (IVA), or have you proposed an IVA yet to be approved or rejected by creditors?\r\n                ', 'yes', 'questionnaire0', 'button', 6, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(7, NULL, 'Have you ever been declared bankrupt or are you subject to a bankruptcy petition, or are you currently or have you ever been subject to a debt relief order? Do you have an adverse County Court Debt Judgement?\r\n                ', 'yes', 'questionnaire0', 'button', 7, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(8, NULL, 'Are you subject to any other process similar to the above, including but not limited to sequestration, but not including a debt management plan?\r\n                ', 'yes', 'questionnaire0', 'button', 8, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(9, NULL, 'Were you the borrower or guarantor?\r\n                ', 'yes', 'questionnaire0', 'button', 9, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(10, NULL, 'How many loans and top ups did you have with George Banco\r\n                ', 'yes', 'questionnaire0', 'button', 10, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(11, NULL, 'How many loans and top ups did you have with George Banco\r\n                ', 'yes', 'questionnaire0', 'button', 11, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(12, NULL, 'Do you have an open or unpaid loan with George Banco?\r\n                ', 'yes', 'questionnaire0', 'button', 12, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(13, NULL, 'How much is left to pay off?\r\n                ', 'yes', 'questionnaire0', 'button', 13, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(14, NULL, 'Have you had to repay George Banco because the borrower defaulted?\r\n                ', 'yes', 'questionnaire0', 'button', 14, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(15, NULL, 'Approximately how much have you repaid to George Banco?\r\n                ', 'yes', 'questionnaire0', 'button', 15, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(16, NULL, 'Did you register with George Banco at a different/previous address than your current address?\r\n                ', 'yes', 'questionnaire0', 'button', 16, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(17, NULL, 'When you took out this loan, did you have a former surname (different than your current surname)?\r\n                ', 'yes', 'questionnaire0', 'button', 17, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(18, NULL, 'Are you subject to or have you ever been subject to an Individual Voluntary Arrangement (IVA), or have you proposed an IVA yet to be approved or rejected by creditors?\r\n                ', 'yes', 'questionnaire0', 'button', 18, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(19, NULL, 'Have you ever been declared bankrupt or are you subject to a bankruptcy petition, or are you currently or have you ever been subject to a debt relief order? Do you have an adverse County Court Debt Judgement?\r\n                ', 'yes', 'questionnaire0', 'button', 19, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(20, NULL, 'Are you subject to any other process similar to the above, including but not limited to sequestration, but not including a debt management plan?\r\n                ', 'yes', 'questionnaire0', 'button', 20, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(21, NULL, 'Is this your Vehicle?\r\n                ', 'yes', 'questionnaire0', 'button', 21, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(22, NULL, 'Did you secure finance for this vehicle in\r\n                ', 'yes', 'questionnaire0', 'button', 22, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(23, NULL, 'When did you secure finance for this vehicle?\r\n                ', 'yes', 'questionnaire0', 'button', 23, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(24, NULL, 'Approximate amount of the finance agreement?\r\n                ', 'yes', 'questionnaire0', 'button', 24, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(25, NULL, 'Is your finance with Volkswagen still in place?\r\n                ', 'yes', 'questionnaire0', 'button', 25, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(26, NULL, 'Do you still have this vehicle?\r\n                ', 'yes', 'questionnaire0', 'button', 26, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(27, NULL, 'What happened to the vehicle?\r\n                ', 'yes', 'questionnaire0', 'button', 27, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(28, NULL, 'What is your preference on what happens to this vehicle?\r\n                ', 'yes', 'questionnaire0', 'button', 28, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(29, NULL, 'Did Volkswagen check you had enough disposible income to afford the monthly repayments of the new finance agreement?\r\n                ', 'yes', 'questionnaire0', 'button', 29, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(30, NULL, 'Approximately what was your average or usual monthly income (after tax) when your finance agreement began?\r\n                ', 'yes', 'questionnaire0', 'button', 30, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(31, NULL, 'When your finance agreement began, approximately how much per month were you typically paying towards other credit commitments (loans and card accounts, etc)?\r\n                ', 'yes', 'questionnaire0', 'button', 31, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(32, NULL, 'When my finance agreement began, I was…\r\n                ', 'yes', 'questionnaire0', 'button', 32, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(33, NULL, 'When the finance agreement began, were these things typically happening in your bank account?\r\n                ', 'yes', 'questionnaire0', 'button', 33, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(34, NULL, 'Are you subject to or have you ever been subject to an Individual Voluntary Arrangement (IVA) or have you proposed an IVA yet to be approved or rejected by creditors?\r\n                ', 'yes', 'questionnaire0', 'button', 34, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(35, NULL, 'Do any of these scenarios apply to you?\r\n                ', 'yes', 'questionnaire0', 'button', 35, 0, NULL, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire_options`
--

CREATE TABLE `questionnaire_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flow` tinyint(4) DEFAULT NULL,
  `rank` smallint(6) DEFAULT NULL,
  `default_id` int(11) DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaire_options`
--

INSERT INTO `questionnaire_options` (`id`, `questionnaire_id`, `label`, `value`, `target`, `type`, `class`, `flow`, `rank`, `default_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '<span>Just 1 Month</span>', 'Just 1 Month', 0, NULL, NULL, NULL, 1, 1, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(2, 1, '<span>2</span>', '2', 0, NULL, NULL, NULL, 2, 2, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(3, 1, '<span>3</span>', '3', 0, NULL, NULL, NULL, 2, 3, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(4, 1, '<span>4</span>', '4', 0, NULL, NULL, NULL, 2, 4, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(5, 1, '<span>5</span>', '5', 0, NULL, NULL, NULL, 2, 5, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(6, 1, '<span>6</span>', '6', 0, NULL, NULL, NULL, 2, 6, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(7, 1, '<span>7</span>', '7', 0, NULL, NULL, NULL, 2, 7, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(8, 1, '<span>8</span>', '8', 0, NULL, NULL, NULL, 2, 8, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(9, 1, '<span>9</span>', '9', 0, NULL, NULL, NULL, 2, 9, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(10, 1, '<span>10</span>', '10', 0, NULL, NULL, NULL, 2, 10, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(11, 1, '<span>11-15</span>', '11-15', 0, NULL, NULL, NULL, 2, 11, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(12, 1, '<span>15-20</span>', '15-20', 0, NULL, NULL, NULL, 2, 12, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(13, 1, '<span>20-30/span>', '20-30', 0, NULL, NULL, NULL, 2, 13, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(14, 1, '<span>30-40</span>', '30-40', 0, NULL, NULL, NULL, 2, 14, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(15, 1, '<span>40-50</span>', '40-50', 0, NULL, NULL, NULL, 2, 15, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(16, 1, '<span>50-60</span>', '50-60', 0, NULL, NULL, NULL, 2, 16, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(17, 1, '<span>60-70</span>', '60-70', 0, NULL, NULL, NULL, 2, 17, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(18, 1, '<span>70-80</span>', '70-80', 0, NULL, NULL, NULL, 2, 18, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(19, 1, '<span>80+</span>', '80+', 0, NULL, NULL, NULL, 2, 19, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(20, 2, '<span>£100</span>', '100', 0, NULL, NULL, NULL, 2, 20, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(21, 2, '<span>£100-£200</span>', '100-200', 0, NULL, NULL, NULL, 2, 21, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(22, 2, '<span>£200-£300</span>', '200-300', 0, NULL, NULL, NULL, 2, 22, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(23, 2, '<span>£300-£400</span>', '300-400', 0, NULL, NULL, NULL, 2, 23, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(24, 2, '<span>£400-£500</span>', '400-500', 0, NULL, NULL, NULL, 2, 24, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(25, 2, '<span>£500-£600</span>', '500-600', 0, NULL, NULL, NULL, 2, 25, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(26, 2, '<span>£600-£700</span>', '600-700', 0, NULL, NULL, NULL, 2, 26, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(27, 2, '<span>£700-£800</span>', '700-800', 0, NULL, NULL, NULL, 2, 27, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(28, 2, '<span>£800-£900</span>', '800-900', 0, NULL, NULL, NULL, 2, 28, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(29, 2, '<span>£900-£1000</span>', 'No', 0, NULL, NULL, NULL, 2, 29, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(30, 2, '<span>£1000-£1500</span>', '1000-1500', 0, NULL, NULL, NULL, 2, 30, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(31, 2, '<span>Over £1500</span>', '1500+', 0, NULL, NULL, NULL, 2, 31, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(32, 3, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 32, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(33, 3, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 33, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(34, 4, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 35, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(35, 4, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 35, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(36, 5, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 36, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(37, 5, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 37, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(38, 6, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 38, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(39, 6, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 39, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(40, 7, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 40, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(41, 7, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 41, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(42, 8, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 42, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(43, 8, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 43, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(44, 9, '<span>Borrower</span>', 'Borrower', 0, NULL, NULL, NULL, 1, 44, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(45, 9, '<span>Guarantor</span>', 'Guarantor', 0, NULL, NULL, NULL, 2, 45, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(46, 10, '<span>1</span>', '1', 0, NULL, NULL, NULL, 1, 46, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(47, 10, '<span>2</span>', '2', 0, NULL, NULL, NULL, 2, 47, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(48, 10, '<span>3</span>', '3', 0, NULL, NULL, NULL, 2, 48, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(49, 10, '<span>4</span>', '4', 0, NULL, NULL, NULL, 2, 49, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(50, 10, '<span>5</span>', '5', 0, NULL, NULL, NULL, 2, 50, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(51, 10, '<span>6</span>', '6', 0, NULL, NULL, NULL, 2, 51, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(52, 10, '<span>7</span>', '7', 0, NULL, NULL, NULL, 2, 52, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(53, 10, '<span>8</span>', '8', 0, NULL, NULL, NULL, 2, 53, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(54, 10, '<span>9</span>', '9', 0, NULL, NULL, NULL, 2, 54, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(55, 10, '<span>10</span>', '10', 0, NULL, NULL, NULL, 2, 55, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(56, 10, '<span>11</span>', '11', 0, NULL, NULL, NULL, 2, 56, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(57, 10, '<span>12</span>', '12', 0, NULL, NULL, NULL, 2, 57, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(58, 10, '<span>13</span>', '13', 0, NULL, NULL, NULL, 2, 58, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(59, 10, '<span>14</span>', '14', 0, NULL, NULL, NULL, 2, 59, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(60, 10, '<span>15</span>', '15', 0, NULL, NULL, NULL, 2, 60, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(61, 10, '<span>16</span>', '16', 0, NULL, NULL, NULL, 2, 61, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(62, 10, '<span>17</span>', '17', 0, NULL, NULL, NULL, 2, 62, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(63, 10, '<span>18</span>', '18', 0, NULL, NULL, NULL, 2, 63, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(64, 10, '<span>19</span>', '19', 0, NULL, NULL, NULL, 2, 64, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(65, 10, '<span>20</span>', '20', 0, NULL, NULL, NULL, 2, 65, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(66, 11, '<span>£1</span>', '1', 0, NULL, NULL, NULL, 2, 66, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(67, 11, '<span>£501</span>', '501', 0, NULL, NULL, NULL, 2, 67, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(68, 11, '<span>£1001</span>', '1001', 0, NULL, NULL, NULL, 2, 68, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(69, 11, '<span>£1501</span>', '1501', 0, NULL, NULL, NULL, 2, 69, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(70, 11, '<span>£2001</span>', '2001', 0, NULL, NULL, NULL, 2, 70, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(71, 11, '<span>£2501</span>', '2501', 0, NULL, NULL, NULL, 2, 71, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(72, 11, '<span>£3001</span>', '3001', 0, NULL, NULL, NULL, 2, 72, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(73, 11, '<span>£3501</span>', '3501', 0, NULL, NULL, NULL, 2, 73, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(74, 11, '<span>£4001</span>', '4001', 0, NULL, NULL, NULL, 2, 74, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(75, 11, '<span>£4501</span>', '4501', 0, NULL, NULL, NULL, 2, 75, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(76, 11, '<span>£5001</span>', '5001', 0, NULL, NULL, NULL, 2, 76, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(77, 11, '<span>£5501</span>', '5501', 0, NULL, NULL, NULL, 2, 77, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(78, 11, '<span>£6001</span>', '6001', 0, NULL, NULL, NULL, 2, 78, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(79, 11, '<span>£6501</span>', '6501', 0, NULL, NULL, NULL, 2, 79, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(80, 11, '<span>£7001</span>', '7001', 0, NULL, NULL, NULL, 2, 80, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(81, 11, '<span>£7501</span>', '7501', 0, NULL, NULL, NULL, 2, 81, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(82, 11, '<span>£8001</span>', '8001', 0, NULL, NULL, NULL, 2, 82, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(83, 11, '<span>£8501</span>', '8501', 0, NULL, NULL, NULL, 2, 83, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(84, 11, '<span>£9001</span>', '9001', 0, NULL, NULL, NULL, 2, 84, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(85, 11, '<span>£9501</span>', '9501', 0, NULL, NULL, NULL, 2, 85, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(86, 11, '<span>£10001</span>', '10001', 0, NULL, NULL, NULL, 2, 86, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(87, 11, '<span>£10501</span>', '10501', 0, NULL, NULL, NULL, 2, 87, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(88, 11, '<span>£11001</span>', '11001', 0, NULL, NULL, NULL, 2, 88, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(89, 11, '<span>£11501</span>', '11501', 0, NULL, NULL, NULL, 2, 89, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(90, 11, '<span>£12001</span>', '12001', 0, NULL, NULL, NULL, 2, 90, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(91, 11, '<span>£12501</span>', '12501', 0, NULL, NULL, NULL, 2, 91, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(92, 11, '<span>£13001</span>', '13001', 0, NULL, NULL, NULL, 2, 92, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(93, 11, '<span>£13501</span>', '13501', 0, NULL, NULL, NULL, 2, 93, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(94, 11, '<span>£14001</span>', '14001', 0, NULL, NULL, NULL, 2, 94, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(95, 11, '<span>£14501</span>', '14501', 0, NULL, NULL, NULL, 2, 95, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(96, 11, '<span>£15001</span>', '15001', 0, NULL, NULL, NULL, 2, 96, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(97, 11, '<span>£15501</span>', '15501', 0, NULL, NULL, NULL, 2, 97, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(98, 11, '<span>£16001</span>', '16001', 0, NULL, NULL, NULL, 2, 98, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(99, 11, '<span>£16501</span>', '16501', 0, NULL, NULL, NULL, 2, 99, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(100, 11, '<span>£17001</span>', '17001', 0, NULL, NULL, NULL, 2, 100, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(101, 11, '<span>£17501</span>', '17501', 0, NULL, NULL, NULL, 2, 101, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(102, 11, '<span>£18001</span>', '18001', 0, NULL, NULL, NULL, 2, 102, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(103, 11, '<span>£18501</span>', '18501', 0, NULL, NULL, NULL, 2, 103, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(104, 11, '<span>£19001</span>', '19001', 0, NULL, NULL, NULL, 2, 104, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(105, 11, '<span>£19501</span>', '19501', 0, NULL, NULL, NULL, 2, 105, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(106, 11, '<span>£20001</span>', '20001', 0, NULL, NULL, NULL, 2, 106, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(107, 11, '<span>£20501</span>', '20501', 0, NULL, NULL, NULL, 2, 107, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(108, 11, '<span>£21001</span>', '21001', 0, NULL, NULL, NULL, 2, 108, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(109, 11, '<span>£21501</span>', '21501', 0, NULL, NULL, NULL, 2, 109, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(110, 11, '<span>£22001</span>', '22001', 0, NULL, NULL, NULL, 2, 110, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(111, 11, '<span>£22501</span>', '22501', 0, NULL, NULL, NULL, 2, 111, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(112, 11, '<span>£23001</span>', '23001', 0, NULL, NULL, NULL, 2, 112, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(113, 11, '<span>£23501</span>', '23501', 0, NULL, NULL, NULL, 2, 113, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(114, 11, '<span>£24001</span>', '24001', 0, NULL, NULL, NULL, 2, 114, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(115, 11, '<span>£24501</span>', '24501', 0, NULL, NULL, NULL, 2, 115, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(116, 11, '<span>£25001</span>', '25001', 0, NULL, NULL, NULL, 2, 116, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(117, 11, '<span>£25501</span>', '25501', 0, NULL, NULL, NULL, 2, 117, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(118, 11, '<span>£26001</span>', '26001', 0, NULL, NULL, NULL, 2, 118, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(119, 11, '<span>£26501</span>', '26501', 0, NULL, NULL, NULL, 2, 119, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(120, 11, '<span>£27001</span>', '27001', 0, NULL, NULL, NULL, 2, 120, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(121, 11, '<span>£27501</span>', '27501', 0, NULL, NULL, NULL, 2, 121, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(122, 11, '<span>£28001</span>', '28001', 0, NULL, NULL, NULL, 2, 122, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(123, 11, '<span>£28501</span>', '28501', 0, NULL, NULL, NULL, 2, 123, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(124, 11, '<span>£29001</span>', '29001', 0, NULL, NULL, NULL, 2, 124, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(125, 11, '<span>£29501</span>', '29501', 0, NULL, NULL, NULL, 2, 125, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(126, 11, '<span>£30001</span>', '30001', 0, NULL, NULL, NULL, 2, 126, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(127, 11, '<span>£30501</span>', '30501', 0, NULL, NULL, NULL, 2, 127, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(128, 11, '<span>£31001</span>', '31001', 0, NULL, NULL, NULL, 2, 128, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(129, 11, '<span>£31501</span>', '31501', 0, NULL, NULL, NULL, 2, 129, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(130, 11, '<span>£32001</span>', '32001', 0, NULL, NULL, NULL, 2, 130, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(131, 11, '<span>£32501</span>', '32501', 0, NULL, NULL, NULL, 2, 131, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(132, 11, '<span>£33001</span>', '33001', 0, NULL, NULL, NULL, 2, 132, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(133, 11, '<span>£33501</span>', '33501', 0, NULL, NULL, NULL, 2, 133, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(134, 11, '<span>£34001</span>', '34001', 0, NULL, NULL, NULL, 2, 134, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(135, 11, '<span>£34501</span>', '34501', 0, NULL, NULL, NULL, 2, 135, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(136, 11, '<span>£35001</span>', '35001', 0, NULL, NULL, NULL, 2, 136, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(137, 11, '<span>£35501</span>', '35501', 0, NULL, NULL, NULL, 2, 137, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(138, 11, '<span>£36001</span>', '36001', 0, NULL, NULL, NULL, 2, 138, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(139, 11, '<span>£36501</span>', '36501', 0, NULL, NULL, NULL, 2, 139, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(140, 11, '<span>£37001</span>', '37001', 0, NULL, NULL, NULL, 2, 140, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(141, 11, '<span>£37501</span>', '37501', 0, NULL, NULL, NULL, 2, 141, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(142, 11, '<span>£38001</span>', '38001', 0, NULL, NULL, NULL, 2, 142, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(143, 11, '<span>£38501</span>', '38501', 0, NULL, NULL, NULL, 2, 143, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(144, 11, '<span>£39001</span>', '39001', 0, NULL, NULL, NULL, 2, 144, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(145, 11, '<span>£39501</span>', '39501', 0, NULL, NULL, NULL, 2, 145, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(146, 11, '<span>£40001</span>', '40001', 0, NULL, NULL, NULL, 2, 146, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(147, 11, '<span>£40501</span>', '40501', 0, NULL, NULL, NULL, 2, 147, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(148, 11, '<span>£41001</span>', '41001', 0, NULL, NULL, NULL, 2, 148, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(149, 11, '<span>£41501</span>', '41501', 0, NULL, NULL, NULL, 2, 149, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(150, 11, '<span>£42001</span>', '42001', 0, NULL, NULL, NULL, 2, 150, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(151, 11, '<span>£42501</span>', '42501', 0, NULL, NULL, NULL, 2, 151, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(152, 11, '<span>£43001</span>', '43001', 0, NULL, NULL, NULL, 2, 152, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(153, 11, '<span>£43501</span>', '43501', 0, NULL, NULL, NULL, 2, 153, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(154, 11, '<span>£44001</span>', '44001', 0, NULL, NULL, NULL, 2, 154, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(155, 11, '<span>£44501</span>', '44501', 0, NULL, NULL, NULL, 2, 155, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(156, 11, '<span>£45001</span>', '45001', 0, NULL, NULL, NULL, 2, 156, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(157, 11, '<span>£45501</span>', '45501', 0, NULL, NULL, NULL, 2, 157, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(158, 11, '<span>£46001</span>', '46001', 0, NULL, NULL, NULL, 2, 158, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(159, 11, '<span>£46501</span>', '46501', 0, NULL, NULL, NULL, 2, 159, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(160, 11, '<span>£47001</span>', '47001', 0, NULL, NULL, NULL, 2, 160, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(161, 11, '<span>£47501</span>', '47501', 0, NULL, NULL, NULL, 2, 161, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(162, 11, '<span>£48001</span>', '48001', 0, NULL, NULL, NULL, 2, 162, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(163, 11, '<span>£48501</span>', '48501', 0, NULL, NULL, NULL, 2, 163, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(164, 11, '<span>£49001</span>', '49001', 0, NULL, NULL, NULL, 2, 164, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(165, 11, '<span>£49501</span>', '49501', 0, NULL, NULL, NULL, 2, 165, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(166, 12, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 166, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(167, 12, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 167, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(168, 13, '<span>£0</span>', '0', 0, NULL, NULL, NULL, 2, 168, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(169, 13, '<span>£500</span>', '500', 0, NULL, NULL, NULL, 2, 169, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(170, 13, '<span>£1000</span>', '1000', 0, NULL, NULL, NULL, 2, 170, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(171, 13, '<span>£1500</span>', '1500', 0, NULL, NULL, NULL, 2, 171, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(172, 13, '<span>£2000</span>', '2000', 0, NULL, NULL, NULL, 2, 172, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(173, 13, '<span>£2500</span>', '2500', 0, NULL, NULL, NULL, 2, 173, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(174, 13, '<span>£3000</span>', '3000', 0, NULL, NULL, NULL, 2, 174, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(175, 13, '<span>£3500</span>', '3500', 0, NULL, NULL, NULL, 2, 175, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(176, 13, '<span>£4000</span>', '4000', 0, NULL, NULL, NULL, 2, 176, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(177, 13, '<span>£4500</span>', '4500', 0, NULL, NULL, NULL, 2, 177, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(178, 13, '<span>£5000</span>', '5000', 0, NULL, NULL, NULL, 2, 178, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(179, 13, '<span>£5500</span>', '5500', 0, NULL, NULL, NULL, 2, 179, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(180, 13, '<span>£6000</span>', '6000', 0, NULL, NULL, NULL, 2, 180, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(181, 13, '<span>£6500</span>', '6500', 0, NULL, NULL, NULL, 2, 181, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(182, 13, '<span>£7000</span>', '7000', 0, NULL, NULL, NULL, 2, 182, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(183, 13, '<span>£7500</span>', '7500', 0, NULL, NULL, NULL, 2, 183, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(184, 13, '<span>£8000</span>', '8000', 0, NULL, NULL, NULL, 2, 184, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(185, 13, '<span>£8500</span>', '8500', 0, NULL, NULL, NULL, 2, 185, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(186, 13, '<span>£9000</span>', '9000', 0, NULL, NULL, NULL, 2, 186, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(187, 13, '<span>£9500</span>', '9500', 0, NULL, NULL, NULL, 2, 187, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(188, 13, '<span>£10000</span>', '10000', 0, NULL, NULL, NULL, 2, 188, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(189, 13, '<span>£10500</span>', '10500', 0, NULL, NULL, NULL, 2, 189, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(190, 13, '<span>£11000</span>', '11000', 0, NULL, NULL, NULL, 2, 190, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(191, 13, '<span>£11500</span>', '11500', 0, NULL, NULL, NULL, 2, 191, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(192, 13, '<span>£12000</span>', '12000', 0, NULL, NULL, NULL, 2, 192, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(193, 13, '<span>£12500</span>', '12500', 0, NULL, NULL, NULL, 2, 193, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(194, 13, '<span>£13000</span>', '13000', 0, NULL, NULL, NULL, 2, 194, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(195, 13, '<span>£13500</span>', '13500', 0, NULL, NULL, NULL, 2, 195, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(196, 13, '<span>£14000</span>', '14000', 0, NULL, NULL, NULL, 2, 196, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(197, 13, '<span>£14500</span>', '14500', 0, NULL, NULL, NULL, 2, 197, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(198, 13, '<span>£15000</span>', '15000', 0, NULL, NULL, NULL, 2, 198, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(199, 13, '<span>£15500</span>', '15500', 0, NULL, NULL, NULL, 2, 199, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(200, 13, '<span>£16000</span>', '16000', 0, NULL, NULL, NULL, 2, 200, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(201, 13, '<span>£16500</span>', '16500', 0, NULL, NULL, NULL, 2, 201, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(202, 13, '<span>£17000</span>', '17000', 0, NULL, NULL, NULL, 2, 202, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(203, 13, '<span>£17500</span>', '17500', 0, NULL, NULL, NULL, 2, 203, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(204, 13, '<span>£18000</span>', '18000', 0, NULL, NULL, NULL, 2, 204, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(205, 13, '<span>£18500</span>', '18500', 0, NULL, NULL, NULL, 2, 205, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(206, 13, '<span>£19000</span>', '19000', 0, NULL, NULL, NULL, 2, 206, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(207, 13, '<span>£19500</span>', '19500', 0, NULL, NULL, NULL, 2, 207, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(208, 13, '<span>£20000</span>', '20000', 0, NULL, NULL, NULL, 2, 208, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(209, 13, '<span>£20500</span>', '20500', 0, NULL, NULL, NULL, 2, 209, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(210, 13, '<span>£21000</span>', '21000', 0, NULL, NULL, NULL, 2, 210, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(211, 13, '<span>£21500</span>', '21500', 0, NULL, NULL, NULL, 2, 211, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(212, 13, '<span>£22000</span>', '22000', 0, NULL, NULL, NULL, 2, 212, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(213, 13, '<span>£22500</span>', '22500', 0, NULL, NULL, NULL, 2, 213, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(214, 13, '<span>£23000</span>', '23000', 0, NULL, NULL, NULL, 2, 214, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(215, 13, '<span>£23500</span>', '23500', 0, NULL, NULL, NULL, 2, 215, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(216, 13, '<span>£24000</span>', '24000', 0, NULL, NULL, NULL, 2, 216, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(217, 13, '<span>£24500</span>', '24500', 0, NULL, NULL, NULL, 2, 217, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(218, 13, '<span>£25000</span>', '25000', 0, NULL, NULL, NULL, 2, 218, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(219, 13, '<span>£25500</span>', '25500', 0, NULL, NULL, NULL, 2, 219, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(220, 13, '<span>£26000</span>', '26000', 0, NULL, NULL, NULL, 2, 220, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(221, 13, '<span>£26500</span>', '26500', 0, NULL, NULL, NULL, 2, 221, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(222, 13, '<span>£27000</span>', '27000', 0, NULL, NULL, NULL, 2, 222, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(223, 13, '<span>£27500</span>', '27500', 0, NULL, NULL, NULL, 2, 223, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(224, 13, '<span>£28000</span>', '28000', 0, NULL, NULL, NULL, 2, 224, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(225, 13, '<span>£28500</span>', '28500', 0, NULL, NULL, NULL, 2, 225, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(226, 13, '<span>£29000</span>', '29000', 0, NULL, NULL, NULL, 2, 226, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(227, 13, '<span>£29500</span>', '29500', 0, NULL, NULL, NULL, 2, 227, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(228, 13, '<span>£30000</span>', '30000', 0, NULL, NULL, NULL, 2, 228, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(229, 13, '<span>£30500</span>', '30500', 0, NULL, NULL, NULL, 2, 229, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(230, 13, '<span>£31000</span>', '31000', 0, NULL, NULL, NULL, 2, 230, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(231, 13, '<span>£31500</span>', '31500', 0, NULL, NULL, NULL, 2, 231, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(232, 13, '<span>£32000</span>', '32000', 0, NULL, NULL, NULL, 2, 232, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(233, 13, '<span>£32500</span>', '32500', 0, NULL, NULL, NULL, 2, 233, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(234, 13, '<span>£33000</span>', '33000', 0, NULL, NULL, NULL, 2, 234, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(235, 13, '<span>£33500</span>', '33500', 0, NULL, NULL, NULL, 2, 235, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(236, 13, '<span>£34000</span>', '34000', 0, NULL, NULL, NULL, 2, 236, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(237, 13, '<span>£34500</span>', '34500', 0, NULL, NULL, NULL, 2, 237, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(238, 13, '<span>£35000</span>', '35000', 0, NULL, NULL, NULL, 2, 238, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(239, 13, '<span>£35500</span>', '35500', 0, NULL, NULL, NULL, 2, 239, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(240, 13, '<span>£36000</span>', '36000', 0, NULL, NULL, NULL, 2, 240, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(241, 13, '<span>£36500</span>', '36500', 0, NULL, NULL, NULL, 2, 241, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(242, 13, '<span>£37000</span>', '37000', 0, NULL, NULL, NULL, 2, 242, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(243, 13, '<span>£37500</span>', '37500', 0, NULL, NULL, NULL, 2, 243, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(244, 13, '<span>£38000</span>', '38000', 0, NULL, NULL, NULL, 2, 244, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(245, 13, '<span>£38500</span>', '38500', 0, NULL, NULL, NULL, 2, 245, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(246, 13, '<span>£39000</span>', '39000', 0, NULL, NULL, NULL, 2, 246, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(247, 13, '<span>£39500</span>', '39500', 0, NULL, NULL, NULL, 2, 247, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(248, 13, '<span>£40000</span>', '40000', 0, NULL, NULL, NULL, 2, 248, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(249, 13, '<span>£40500</span>', '40500', 0, NULL, NULL, NULL, 2, 249, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(250, 13, '<span>£41000</span>', '41000', 0, NULL, NULL, NULL, 2, 250, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(251, 13, '<span>£41500</span>', '41500', 0, NULL, NULL, NULL, 2, 251, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(252, 13, '<span>£42000</span>', '42000', 0, NULL, NULL, NULL, 2, 252, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(253, 13, '<span>£42500</span>', '42500', 0, NULL, NULL, NULL, 2, 253, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(254, 13, '<span>£43000</span>', '43000', 0, NULL, NULL, NULL, 2, 254, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(255, 13, '<span>£43500</span>', '43500', 0, NULL, NULL, NULL, 2, 255, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(256, 13, '<span>£44000</span>', '44000', 0, NULL, NULL, NULL, 2, 256, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(257, 13, '<span>£44500</span>', '44500', 0, NULL, NULL, NULL, 2, 257, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(258, 13, '<span>£45000</span>', '45000', 0, NULL, NULL, NULL, 2, 258, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(259, 13, '<span>£45500</span>', '45500', 0, NULL, NULL, NULL, 2, 259, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(260, 13, '<span>£46000</span>', '46000', 0, NULL, NULL, NULL, 2, 260, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(261, 13, '<span>£46500</span>', '46500', 0, NULL, NULL, NULL, 2, 261, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(262, 13, '<span>£47000</span>', '47000', 0, NULL, NULL, NULL, 2, 262, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(263, 13, '<span>£47500</span>', '47500', 0, NULL, NULL, NULL, 2, 263, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(264, 13, '<span>£48000</span>', '48000', 0, NULL, NULL, NULL, 2, 264, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(265, 13, '<span>£48500</span>', '48500', 0, NULL, NULL, NULL, 2, 265, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(266, 13, '<span>£49000</span>', '49000', 0, NULL, NULL, NULL, 2, 266, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(267, 13, '<span>£49500</span>', '49500', 0, NULL, NULL, NULL, 2, 267, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(268, 13, '<span>£50000</span>', '50000', 0, NULL, NULL, NULL, 2, 268, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(269, 14, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 269, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(270, 14, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 270, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(271, 15, '<span>£0</span>', '0', 0, NULL, NULL, NULL, 2, 271, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(272, 15, '<span>£500</span>', '500', 0, NULL, NULL, NULL, 2, 272, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(273, 15, '<span>£1000</span>', '1000', 0, NULL, NULL, NULL, 2, 273, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(274, 15, '<span>£1500</span>', '1500', 0, NULL, NULL, NULL, 2, 274, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(275, 15, '<span>£2000</span>', '2000', 0, NULL, NULL, NULL, 2, 275, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(276, 15, '<span>£2500</span>', '2500', 0, NULL, NULL, NULL, 2, 276, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(277, 15, '<span>£3000</span>', '3000', 0, NULL, NULL, NULL, 2, 277, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(278, 15, '<span>£3500</span>', '3500', 0, NULL, NULL, NULL, 2, 278, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(279, 15, '<span>£4000</span>', '4000', 0, NULL, NULL, NULL, 2, 279, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(280, 15, '<span>£4500</span>', '4500', 0, NULL, NULL, NULL, 2, 280, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(281, 15, '<span>£5000</span>', '5000', 0, NULL, NULL, NULL, 2, 281, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(282, 15, '<span>£5500</span>', '5500', 0, NULL, NULL, NULL, 2, 282, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(283, 15, '<span>£6000</span>', '6000', 0, NULL, NULL, NULL, 2, 283, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(284, 15, '<span>£6500</span>', '6500', 0, NULL, NULL, NULL, 2, 284, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(285, 15, '<span>£7000</span>', '7000', 0, NULL, NULL, NULL, 2, 285, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(286, 15, '<span>£7500</span>', '7500', 0, NULL, NULL, NULL, 2, 286, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(287, 15, '<span>£8000</span>', '8000', 0, NULL, NULL, NULL, 2, 287, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(288, 15, '<span>£8500</span>', '8500', 0, NULL, NULL, NULL, 2, 288, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(289, 15, '<span>£9000</span>', '9000', 0, NULL, NULL, NULL, 2, 289, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(290, 15, '<span>£9500</span>', '9500', 0, NULL, NULL, NULL, 2, 290, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(291, 15, '<span>£10000</span>', '10000', 0, NULL, NULL, NULL, 2, 291, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(292, 15, '<span>£10500</span>', '10500', 0, NULL, NULL, NULL, 2, 292, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(293, 15, '<span>£11000</span>', '11000', 0, NULL, NULL, NULL, 2, 293, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(294, 15, '<span>£11500</span>', '11500', 0, NULL, NULL, NULL, 2, 294, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(295, 15, '<span>£12000</span>', '12000', 0, NULL, NULL, NULL, 2, 295, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(296, 15, '<span>£12500</span>', '12500', 0, NULL, NULL, NULL, 2, 296, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(297, 15, '<span>£13000</span>', '13000', 0, NULL, NULL, NULL, 2, 297, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(298, 15, '<span>£13500</span>', '13500', 0, NULL, NULL, NULL, 2, 298, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(299, 15, '<span>£14000</span>', '14000', 0, NULL, NULL, NULL, 2, 299, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(300, 15, '<span>£14500</span>', '14500', 0, NULL, NULL, NULL, 2, 300, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(301, 15, '<span>£15000</span>', '15000', 0, NULL, NULL, NULL, 2, 301, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(302, 15, '<span>£15500</span>', '15500', 0, NULL, NULL, NULL, 2, 302, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(303, 15, '<span>£16000</span>', '16000', 0, NULL, NULL, NULL, 2, 303, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(304, 15, '<span>£16500</span>', '16500', 0, NULL, NULL, NULL, 2, 304, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(305, 15, '<span>£17000</span>', '17000', 0, NULL, NULL, NULL, 2, 305, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(306, 15, '<span>£17500</span>', '17500', 0, NULL, NULL, NULL, 2, 306, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(307, 15, '<span>£18000</span>', '18000', 0, NULL, NULL, NULL, 2, 307, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(308, 15, '<span>£18500</span>', '18500', 0, NULL, NULL, NULL, 2, 308, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(309, 15, '<span>£19000</span>', '19000', 0, NULL, NULL, NULL, 2, 309, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(310, 15, '<span>£19500</span>', '19500', 0, NULL, NULL, NULL, 2, 310, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(311, 15, '<span>£20000</span>', '20000', 0, NULL, NULL, NULL, 2, 311, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(312, 15, '<span>£20500</span>', '20500', 0, NULL, NULL, NULL, 2, 312, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(313, 15, '<span>£21000</span>', '21000', 0, NULL, NULL, NULL, 2, 313, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(314, 15, '<span>£21500</span>', '21500', 0, NULL, NULL, NULL, 2, 314, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(315, 15, '<span>£22000</span>', '22000', 0, NULL, NULL, NULL, 2, 315, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(316, 15, '<span>£22500</span>', '22500', 0, NULL, NULL, NULL, 2, 316, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(317, 15, '<span>£23000</span>', '23000', 0, NULL, NULL, NULL, 2, 317, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(318, 15, '<span>£23500</span>', '23500', 0, NULL, NULL, NULL, 2, 318, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(319, 15, '<span>£24000</span>', '24000', 0, NULL, NULL, NULL, 2, 319, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(320, 15, '<span>£24500</span>', '24500', 0, NULL, NULL, NULL, 2, 320, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(321, 15, '<span>£25000</span>', '25000', 0, NULL, NULL, NULL, 2, 321, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(322, 15, '<span>£25500</span>', '25500', 0, NULL, NULL, NULL, 2, 322, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(323, 15, '<span>£26000</span>', '26000', 0, NULL, NULL, NULL, 2, 323, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(324, 15, '<span>£26500</span>', '26500', 0, NULL, NULL, NULL, 2, 324, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(325, 15, '<span>£27000</span>', '27000', 0, NULL, NULL, NULL, 2, 325, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(326, 15, '<span>£27500</span>', '27500', 0, NULL, NULL, NULL, 2, 326, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(327, 15, '<span>£28000</span>', '28000', 0, NULL, NULL, NULL, 2, 327, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(328, 15, '<span>£28500</span>', '28500', 0, NULL, NULL, NULL, 2, 328, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(329, 15, '<span>£29000</span>', '29000', 0, NULL, NULL, NULL, 2, 329, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(330, 15, '<span>£29500</span>', '29500', 0, NULL, NULL, NULL, 2, 330, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(331, 15, '<span>£30000</span>', '30000', 0, NULL, NULL, NULL, 2, 331, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(332, 15, '<span>£30500</span>', '30500', 0, NULL, NULL, NULL, 2, 332, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(333, 15, '<span>£31000</span>', '31000', 0, NULL, NULL, NULL, 2, 333, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(334, 15, '<span>£31500</span>', '31500', 0, NULL, NULL, NULL, 2, 334, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(335, 15, '<span>£32000</span>', '32000', 0, NULL, NULL, NULL, 2, 335, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(336, 15, '<span>£32500</span>', '32500', 0, NULL, NULL, NULL, 2, 336, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(337, 15, '<span>£33000</span>', '33000', 0, NULL, NULL, NULL, 2, 337, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(338, 15, '<span>£33500</span>', '33500', 0, NULL, NULL, NULL, 2, 338, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(339, 15, '<span>£34000</span>', '34000', 0, NULL, NULL, NULL, 2, 339, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(340, 15, '<span>£34500</span>', '34500', 0, NULL, NULL, NULL, 2, 340, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(341, 15, '<span>£35000</span>', '35000', 0, NULL, NULL, NULL, 2, 341, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(342, 15, '<span>£35500</span>', '35500', 0, NULL, NULL, NULL, 2, 342, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(343, 15, '<span>£36000</span>', '36000', 0, NULL, NULL, NULL, 2, 343, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(344, 15, '<span>£36500</span>', '36500', 0, NULL, NULL, NULL, 2, 344, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(345, 15, '<span>£37000</span>', '37000', 0, NULL, NULL, NULL, 2, 345, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(346, 15, '<span>£37500</span>', '37500', 0, NULL, NULL, NULL, 2, 346, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(347, 15, '<span>£38000</span>', '38000', 0, NULL, NULL, NULL, 2, 347, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(348, 15, '<span>£38500</span>', '38500', 0, NULL, NULL, NULL, 2, 348, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(349, 15, '<span>£39000</span>', '39000', 0, NULL, NULL, NULL, 2, 349, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(350, 15, '<span>£39500</span>', '39500', 0, NULL, NULL, NULL, 2, 350, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(351, 15, '<span>£40000</span>', '40000', 0, NULL, NULL, NULL, 2, 351, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(352, 15, '<span>£40500</span>', '40500', 0, NULL, NULL, NULL, 2, 352, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(353, 15, '<span>£41000</span>', '41000', 0, NULL, NULL, NULL, 2, 353, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(354, 15, '<span>£41500</span>', '41500', 0, NULL, NULL, NULL, 2, 354, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(355, 15, '<span>£42000</span>', '42000', 0, NULL, NULL, NULL, 2, 355, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(356, 15, '<span>£42500</span>', '42500', 0, NULL, NULL, NULL, 2, 356, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(357, 15, '<span>£43000</span>', '43000', 0, NULL, NULL, NULL, 2, 357, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(358, 15, '<span>£43500</span>', '43500', 0, NULL, NULL, NULL, 2, 358, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(359, 15, '<span>£44000</span>', '44000', 0, NULL, NULL, NULL, 2, 359, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(360, 15, '<span>£44500</span>', '44500', 0, NULL, NULL, NULL, 2, 360, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(361, 15, '<span>£45000</span>', '45000', 0, NULL, NULL, NULL, 2, 361, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(362, 15, '<span>£45500</span>', '45500', 0, NULL, NULL, NULL, 2, 362, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(363, 15, '<span>£46000</span>', '46000', 0, NULL, NULL, NULL, 2, 363, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(364, 15, '<span>£46500</span>', '46500', 0, NULL, NULL, NULL, 2, 364, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(365, 15, '<span>£47000</span>', '47000', 0, NULL, NULL, NULL, 2, 365, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(366, 15, '<span>£47500</span>', '47500', 0, NULL, NULL, NULL, 2, 366, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(367, 15, '<span>£48000</span>', '48000', 0, NULL, NULL, NULL, 2, 367, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(368, 15, '<span>£48500</span>', '48500', 0, NULL, NULL, NULL, 2, 368, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(369, 15, '<span>£49000</span>', '49000', 0, NULL, NULL, NULL, 2, 369, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(370, 15, '<span>£49500</span>', '49500', 0, NULL, NULL, NULL, 2, 370, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(371, 15, '<span>£50000</span>', '50000', 0, NULL, NULL, NULL, 2, 371, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(372, 16, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 372, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(373, 16, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 373, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(374, 17, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 374, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(375, 17, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 375, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(376, 18, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 376, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(377, 18, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 377, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(378, 19, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 378, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(379, 19, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 379, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(380, 20, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 380, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(381, 20, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 381, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(382, 21, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 382, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(383, 21, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 383, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(384, 22, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 384, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(385, 22, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 385, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(386, 25, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 386, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(387, 25, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 387, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(388, 26, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 388, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(389, 26, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 389, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(390, 27, '<span>The vehicle has been returned to the finance company as per my statutory right under the Consumer Credit Act (‘Voluntary Termination’)</span>', 'The vehicle has been returned to the finance company as per my statutory right under the Consumer Credit Act (‘Voluntary Termination’)', 0, NULL, NULL, NULL, 1, 390, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(391, 27, '<span>The vehicle has been returned to the finance company under an informal arrangement (‘Voluntary Surrender’)</span>', 'The vehicle has been returned to the finance company under an informal arrangement (‘Voluntary Surrender’)', 0, NULL, NULL, NULL, 2, 391, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(392, 27, '<span>The vehicle was repossessed by the finance company</span>', 'The vehicle was repossessed by the finance company', 0, NULL, NULL, NULL, 3, 392, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(393, 27, '<span>I made my own arrangements to surrender possession of the vehicle, which had nothing to do with the finance company – for example, I made a private sale or I sold the vehicle for scrap</span>', 'I made my own arrangements to surrender possession of the vehicle, which had nothing to do with the finance company – for example, I made a private sale or I sold the vehicle for scrap', 0, NULL, NULL, NULL, 4, 393, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(394, 28, '<span>Happy for the car to be returned if asked to as a result of this claim</span>', 'Happy for the car to be returned if asked to as a result of this claim', 0, NULL, NULL, NULL, 1, 394, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(395, 28, '<span>I want to keep the vehicle for the foreseeable future</span>', 'I want to keep the vehicle for the foreseeable future', 0, NULL, NULL, NULL, 2, 395, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(396, 29, '<span>They didn’t check and I couldn’t afford it</span>', 'They didn’t check and I couldn’t afford it', 0, NULL, NULL, NULL, 1, 396, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(397, 29, '<span>They may have checked but I still couldn’t afford it</span>', 'They may have checked but I still couldn’t afford ite', 0, NULL, NULL, NULL, 2, 397, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(398, 29, '<span>I had enough disposable income to afford the monthly repayments</span>', 'I had enough disposable income to afford the monthly repayments', 0, NULL, NULL, NULL, 3, 398, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(399, 32, '<span>Regularly using ‘bad credit’ lending (payday, guarantor, doorstep and high-interest)</span>', 'Regularly using ‘bad credit’ lending (payday, guarantor, doorstep and high-interest)', 0, NULL, NULL, NULL, 1, 399, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(400, 32, '<span>Using a lot of my income for gambling or online betting</span>', 'Using a lot of my income for gambling or online betting', 0, NULL, NULL, NULL, 2, 400, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(401, 32, '<span>Receiving a very low and unreliable income (e.g. due to job loss, state benefits, being a student,etc)</span>', 'Receiving a very low and unreliable income (e.g. due to job loss, state benefits, being a student,etc)', 0, NULL, NULL, NULL, 3, 401, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44');
INSERT INTO `questionnaire_options` (`id`, `questionnaire_id`, `label`, `value`, `target`, `type`, `class`, `flow`, `rank`, `default_id`, `status`, `created_at`, `updated_at`) VALUES
(402, 32, '<span>Managing my income and outgoings ok, but still believe the finance agreement was mis-sold to me</span>', 'Managing my income and outgoings ok, but still believe the finance agreement was mis-sold to me', 0, NULL, NULL, NULL, 4, 402, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(403, 33, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 403, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(404, 33, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 404, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(405, 34, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 405, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(406, 34, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 406, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(407, 35, '<span>Yes</span>', 'Yes', 0, NULL, NULL, NULL, 1, 407, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(408, 35, '<span>No</span>', 'No', 0, NULL, NULL, NULL, 2, 408, '1', '2023-01-23 11:15:44', '2023-01-23 11:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `queue_halt_table`
--

CREATE TABLE `queue_halt_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('COMPLETE','INCOMPLETE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INCOMPLETE',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_share` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('digital','wet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wet',
  `signature_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s3_file_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `previous_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signatures`
--

INSERT INTO `signatures` (`id`, `user_id`, `bank_id`, `type`, `signature_image`, `pdf_file`, `s3_file_path`, `status`, `previous_name`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'digital', 'https://s3.eu-west-2.amazonaws.com/doc.unfairfees.co.uk/signature/dev/user_UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6.xml', NULL, NULL, '1', NULL, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(2, 3, 0, 'digital', 'https://s3.eu-west-2.amazonaws.com/doc.unfairfees.co.uk/signature/dev/user_UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254.xml', NULL, NULL, '1', NULL, '2023-01-23 05:52:09', '2023-01-23 05:52:09'),
(3, 4, 0, 'digital', 'https://s3.eu-west-2.amazonaws.com/doc.unfairfees.co.uk/signature/dev/user_UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e.xml', NULL, NULL, '1', NULL, '2023-01-23 05:53:34', '2023-01-23 05:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`id`, `config_title`, `config_value`, `config_info`) VALUES
(1, 'QUEUE_STATUS', 'TRUE', '0'),
(2, 'QUEUE_FAIL_COUNT', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_scheduleds`
--

CREATE TABLE `sms_scheduleds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `atp_url_id` int(11) DEFAULT NULL,
  `sms_batch_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_batch_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('SMS','Email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `split_info`
--

CREATE TABLE `split_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `split_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `split_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `last_active_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `split_info`
--

INSERT INTO `split_info` (`id`, `domain_id`, `buyer_id`, `split_name`, `split_path`, `status`, `last_active_date`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Split_1', 'http://localhost:3000/0602UFSN_A1_7', '1', '2023-01-23 05:47:57', '2023-01-23 05:47:57', '2023-01-23 05:47:57'),
(2, 1, NULL, 'Split_3', 'http://localhost:3000/0602UFG_A1_5', '1', '2023-01-23 05:50:04', '2023-01-23 05:50:04', '2023-01-23 05:50:04'),
(3, 1, NULL, 'Split_4', 'http://localhost:3000/0602UFLS_A1_1', '1', '2023-01-23 05:51:33', '2023-01-23 05:51:33', '2023-01-23 05:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `split_uuid`
--

CREATE TABLE `split_uuid` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `split_uuid`
--

INSERT INTO `split_uuid` (`id`, `visitor_id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 1, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', '2023-01-23 05:47:57', '2023-01-23 05:47:57'),
(2, 2, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', '2023-01-23 05:50:04', '2023-01-23 05:50:04'),
(3, 3, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', '2023-01-23 05:51:33', '2023-01-23 05:51:33'),
(4, 4, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', '2023-01-23 05:52:54', '2023-01-23 05:52:54'),
(5, 5, 'UNFR048-9ce20e40-9c9f-11ed-aae0-03d7d4152d62', '2023-01-25 05:31:30', '2023-01-25 05:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `sqsl_page_visits`
--

CREATE TABLE `sqsl_page_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliated_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `time_spent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `click_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `split_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thrive_visitors`
--

CREATE TABLE `thrive_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thr_source` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub1` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub5` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thr_sub10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_masters`
--

CREATE TABLE `tracker_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracker_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracker_comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_masters`
--

INSERT INTO `tracker_masters` (`id`, `tracker_name`, `tracker_comment`, `created_at`, `updated_at`) VALUES
(1, 'ADTOPIA', NULL, '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(2, 'HO', NULL, '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(3, 'THRIVE', NULL, '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(4, 'FB', NULL, '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(5, 'GDT', NULL, '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(6, 'DIRECT', NULL, '2023-01-23 11:15:44', '2023-01-23 11:15:44'),
(7, 'UN_KNOWN', NULL, '2023-01-23 11:15:44', '2023-01-23 11:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `ukvd_data_lookup`
--

CREATE TABLE `ukvd_data_lookup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_uuid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `split_id` bigint(20) DEFAULT NULL,
  `car_reg_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_make` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_smmt_range` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_smmt_series` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ea189` int(11) DEFAULT NULL,
  `engine_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_year` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_otr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keeper_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_api_response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_valid` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_uuid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `adv_vis_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_qualified` int(11) NOT NULL DEFAULT 1,
  `is_api_completed` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_cake_completed` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `response_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_status` enum('TEST','LIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'LIVE',
  `recent_visit` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_uuid`, `visitor_id`, `domain_id`, `adv_vis_id`, `title`, `first_name`, `last_name`, `email`, `telephone`, `dob`, `token`, `is_qualified`, `is_api_completed`, `is_cake_completed`, `response_result`, `record_status`, `recent_visit`, `created_at`, `updated_at`) VALUES
(1, 'UNFR048-94625a80-9b0f-11ed-852d-5fcff1305c16', 1, 1, 0, 'Dr', 'one', 'split', 'dsada@922.com', '01777777777', '1990-01-11', 'ea2c8266de', 1, '0', '0', '', 'TEST', NULL, '2023-01-23 05:48:19', '2023-01-23 05:48:23'),
(2, 'UNFR048-e1a16ec0-9b0f-11ed-9645-553302bc4ad6', 2, 1, 0, 'Mrs', 'two', 'split', 'sada@922.com', '01777777777', '1990-01-11', '7ec306b439', 1, '0', '0', '', 'TEST', NULL, '2023-01-23 05:50:30', '2023-01-23 05:50:33'),
(3, 'UNFR048-16cc7200-9b10-11ed-9293-aba90c85d254', 3, 1, 0, 'Mr', 'four', 'split', 'adasda@922.com', '01777777777', '1990-01-11', '121cc38494', 1, '0', '0', '', 'TEST', NULL, '2023-01-23 05:52:01', '2023-01-23 05:52:02'),
(4, 'UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 4, 1, 0, 'Ms', 'sadadasd', 'sadad', 'adsxzq@922.com', '01777777777', '1990-01-11', '43d101859c', 1, '0', '0', '', 'TEST', NULL, '2023-01-23 05:53:29', '2023-01-23 05:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_address_details`
--

CREATE TABLE `user_address_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - Primary, 1,2,3 - Previous address',
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'getaddress',
  `address_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_manual` tinyint(4) NOT NULL DEFAULT 0,
  `approve_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_address_details`
--

INSERT INTO `user_address_details` (`id`, `user_id`, `address_type`, `postcode`, `address_line1`, `address_line2`, `address_line3`, `address_line4`, `town`, `locality`, `county`, `district`, `country`, `vendor`, `address_id`, `is_manual`, `approve_status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'EC1A1HQ', 'Bodiam Hill Ltd', '', '2 King Edward Street', '', 'London', '', '', '', 'England', 'getaddress', 'YjY2MzFjZTgyMjU1YzA1IDM1Mzg0OTA2MSAyNDdmZThhMDA3MTljNzc=', 0, 0, '2023-01-23 05:48:19', '2023-01-23 11:18:22'),
(2, 2, 0, 'EC1A1HQ', 'Mleih Funding', '', '2 King Edward Street', '', 'London', '', '', '', 'England', 'getaddress', 'ZjhmMWJmZjZmNjFiNzY2IDM3NDIxNTEwOSAyNDdmZThhMDA3MTljNzc=', 0, 0, '2023-01-23 05:50:30', '2023-01-23 11:20:33'),
(3, 3, 0, 'EC1A1HQ', 'Bank Of America (Lbac) Pension Trustees Ltd', '', '2 King Edward Street', '', 'London', '', '', '', 'England', 'getaddress', 'ZTFhOGU3NjQyZmM5NThmIDIzNDExNjc1NzUgMjQ3ZmU4YTAwNzE5Yzc3', 0, 0, '2023-01-23 05:52:01', '2023-01-23 11:22:02'),
(4, 4, 0, 'EC1A1HQ', 'Merrill Lynch, Pierce, Fenner & Smith Ltd', '', '2 King Edward Street', '', 'London', '', '', '', 'England', 'getaddress', 'OTkzNTljZjVlZDA1NTgzIDIzNDEyMzU5NzMgMjQ3ZmU4YTAwNzE5Yzc3', 0, 0, '2023-01-23 05:53:29', '2023-01-23 11:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_banks`
--

CREATE TABLE `user_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_sort_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_joint` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_banks`
--

INSERT INTO `user_banks` (`id`, `user_id`, `bank_id`, `bank_account_id`, `bank_sort_code`, `bank_account_number`, `is_joint`, `created_at`, `updated_at`) VALUES
(1, 1, 122, NULL, NULL, NULL, '0', '2023-01-23 11:18:22', '2023-01-23 11:18:22'),
(2, 2, 122, NULL, NULL, NULL, '0', '2023-01-23 11:20:33', '2023-01-23 11:20:33'),
(3, 3, 122, NULL, NULL, NULL, '0', '2023-01-23 11:22:02', '2023-01-23 11:22:02'),
(4, 4, 122, NULL, NULL, NULL, '0', '2023-01-23 11:23:30', '2023-01-23 11:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE `user_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `no_of_loans` int(11) DEFAULT NULL,
  `borrow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `have_reg_prev_addr` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `have_former_surname` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `former_surname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrears` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_extra_details`
--

CREATE TABLE `user_extra_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safetynet_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_status` tinyint(4) NOT NULL DEFAULT 0,
  `qualify_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_extra_details`
--

INSERT INTO `user_extra_details` (`id`, `user_id`, `gender`, `previous_name`, `safetynet_email`, `complete_status`, `qualify_status`, `created_at`, `updated_at`) VALUES
(1, 1, '', NULL, NULL, 0, 1, '2023-01-23 05:48:19', '2023-01-23 11:18:22'),
(2, 2, '', NULL, NULL, 1, 1, '2023-01-23 05:50:30', '2023-01-23 05:51:04'),
(3, 3, '', 'saddxzczx', 'dsfsdf@922.com', 1, 1, '2023-01-23 05:52:01', '2023-01-23 05:52:39'),
(4, 4, '', 'test', 'test@gmail.com', 1, 1, '2023-01-23 05:53:29', '2023-01-23 05:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_milestone_stats`
--

CREATE TABLE `user_milestone_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_signature` tinyint(4) DEFAULT NULL,
  `questions` tinyint(4) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_sent` tinyint(4) DEFAULT NULL,
  `user_completed` tinyint(4) DEFAULT NULL,
  `user_completed_date` datetime DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_milestone_stats`
--

INSERT INTO `user_milestone_stats` (`id`, `user_id`, `user_signature`, `questions`, `completed`, `sale`, `source`, `otp_sent`, `user_completed`, `user_completed_date`, `completed_date`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, NULL, NULL, 'live', NULL, NULL, NULL, NULL, '2023-01-23 05:49:03', '2023-01-23 05:49:03'),
(2, 2, 1, NULL, 1, NULL, 'live', NULL, 1, '2023-01-23 11:21:04', '2023-01-23 11:21:04', '2023-01-23 05:50:33', '2023-01-23 05:51:04'),
(3, 3, 1, 1, 1, NULL, 'live', NULL, 1, '2023-01-23 11:22:39', '2023-01-23 11:22:39', '2023-01-23 05:52:09', '2023-01-23 05:52:39'),
(4, 4, 1, 1, 1, NULL, 'live', NULL, 1, '2023-01-23 11:24:14', '2023-01-23 11:24:15', '2023-01-23 05:53:34', '2023-01-23 05:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_questionnaire_answers`
--

CREATE TABLE `user_questionnaire_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `questionnaire_id` bigint(20) UNSIGNED DEFAULT NULL,
  `questionnaire_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `input_answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_questionnaire_answers`
--

INSERT INTO `user_questionnaire_answers` (`id`, `user_id`, `bank_id`, `questionnaire_id`, `questionnaire_option_id`, `input_answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 4, '', '1', '2023-01-23 05:48:30', '2023-01-23 05:48:30'),
(2, 1, NULL, 2, 23, '', '1', '2023-01-23 05:48:31', '2023-01-23 05:48:31'),
(3, 1, NULL, 3, 33, '', '1', '2023-01-23 05:48:39', '2023-01-23 05:48:39'),
(4, 1, NULL, 4, 35, '', '1', '2023-01-23 05:48:43', '2023-01-23 05:48:43'),
(5, 1, NULL, 5, 37, '', '1', '2023-01-23 05:48:58', '2023-01-23 05:48:58'),
(6, 1, NULL, 6, 39, '', '1', '2023-01-23 05:49:02', '2023-01-23 05:49:02'),
(7, 1, NULL, 7, 41, '', '1', '2023-01-23 05:49:03', '2023-01-23 05:49:03'),
(8, 1, NULL, 8, 43, '', '1', '2023-01-23 05:49:03', '2023-01-23 05:49:03'),
(9, 2, NULL, 9, 44, '', '1', '2023-01-23 05:50:45', '2023-01-23 05:50:45'),
(10, 2, NULL, 10, 51, '', '1', '2023-01-23 05:50:53', '2023-01-23 05:50:53'),
(11, 2, NULL, 11, 79, '', '1', '2023-01-23 05:50:57', '2023-01-23 05:50:57'),
(12, 2, NULL, 12, 167, '', '1', '2023-01-23 05:50:57', '2023-01-23 05:50:57'),
(13, 2, NULL, 16, 373, '', '1', '2023-01-23 05:50:58', '2023-01-23 05:50:58'),
(14, 2, NULL, 17, 375, '', '1', '2023-01-23 05:50:59', '2023-01-23 05:50:59'),
(15, 2, NULL, 18, 377, '', '1', '2023-01-23 05:50:59', '2023-01-23 05:50:59'),
(16, 2, NULL, 19, 379, '', '1', '2023-01-23 05:51:03', '2023-01-23 05:51:03'),
(17, 2, NULL, 20, 381, '', '1', '2023-01-23 05:51:04', '2023-01-23 05:51:04'),
(18, 3, NULL, 1, 11, '', '1', '2023-01-23 05:52:24', '2023-01-23 05:52:24'),
(19, 3, NULL, 2, 25, '', '1', '2023-01-23 05:52:28', '2023-01-23 05:52:28'),
(20, 3, NULL, 3, 33, '', '1', '2023-01-23 05:52:29', '2023-01-23 05:52:29'),
(21, 3, NULL, 4, 34, 'saddxzczx', '1', '2023-01-23 05:52:37', '2023-01-23 05:52:37'),
(22, 3, NULL, 5, 37, '', '1', '2023-01-23 05:52:37', '2023-01-23 05:52:37'),
(23, 3, NULL, 6, 39, '', '1', '2023-01-23 05:52:38', '2023-01-23 05:52:38'),
(24, 3, NULL, 7, 41, '', '1', '2023-01-23 05:52:38', '2023-01-23 05:52:38'),
(25, 3, NULL, 8, 43, '', '1', '2023-01-23 05:52:39', '2023-01-23 05:52:39'),
(26, 4, NULL, 1, 10, '', '1', '2023-01-23 05:53:45', '2023-01-23 05:53:45'),
(27, 4, NULL, 2, 24, '', '1', '2023-01-23 05:53:46', '2023-01-23 05:53:46'),
(28, 4, NULL, 3, 33, '', '1', '2023-01-23 05:53:47', '2023-01-23 05:53:47'),
(29, 4, NULL, 4, 34, 'test', '1', '2023-01-23 05:53:51', '2023-01-23 05:53:51'),
(30, 4, NULL, 5, 37, '', '1', '2023-01-23 05:53:58', '2023-01-23 05:53:58'),
(31, 4, NULL, 6, 39, '', '1', '2023-01-23 05:54:03', '2023-01-23 05:54:03'),
(32, 4, NULL, 7, 41, '', '1', '2023-01-23 05:54:10', '2023-01-23 05:54:10'),
(33, 4, NULL, 8, 43, '', '1', '2023-01-23 05:54:14', '2023-01-23 05:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_questionnaire_answers_histories`
--

CREATE TABLE `user_questionnaire_answers_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_questionnaire_meta`
--

CREATE TABLE `user_questionnaire_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_questionnaire_stats`
--

CREATE TABLE `user_questionnaire_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `questionnaire_id` bigint(20) UNSIGNED DEFAULT NULL,
  `questionnaire_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_spouses_details`
--

CREATE TABLE `user_spouses_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `spouses_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouses_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouses_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `date_of_marriage` date DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `validation_email_tracking`
--

CREATE TABLE `validation_email_tracking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` smallint(6) NOT NULL,
  `validated_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `validated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `validation_phone_tracking`
--

CREATE TABLE `validation_phone_tracking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_type` enum('InternationalTelephoneValidation','TelephoneLineValidation','MobileValidation','SalaciousName') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'InternationalTelephoneValidation',
  `validation_result` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_result_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE `vehicle_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `split_id` bigint(20) UNSIGNED DEFAULT NULL,
  `car_reg_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_make` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_otr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keeper_date` date DEFAULT NULL,
  `other` int(11) NOT NULL DEFAULT 1,
  `other_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agreement_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_transaction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finance_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `your_vehicle` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_extra_details`
--

CREATE TABLE `vehicle_extra_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `split_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sold_date` date DEFAULT NULL,
  `vin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_manufacture` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dvla_model` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dvla_make` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colour` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_capacity` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quoted_bhp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_bhp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_torque` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_pixel_firing`
--

CREATE TABLE `vendor_pixel_firing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_type` enum('LP','TY','CN','AP') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LP',
  `pixel_type` enum('web','API') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `pixel_log` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pixel_result` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verticals`
--

CREATE TABLE `verticals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vertical_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vertical_comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracker_master_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_site_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracker_unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `referer_site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `existing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_reference_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `split_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_tracker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `adv_page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adv_redirect_domain` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `tracker_master_id`, `device_site_id`, `tracker_unique_id`, `ip_address`, `browser_type`, `country`, `device_type`, `user_agent`, `resolution`, `version`, `referer_site`, `existing_domain`, `full_reference_url`, `affiliate_id`, `campaign`, `split_id`, `source`, `sub_tracker`, `tid`, `pid`, `adv_visitor_id`, `adv_page_name`, `adv_redirect_domain`, `created_at`, `updated_at`) VALUES
(1, 7, 2, '0', 'UNKNOWN', 'Chrome', 'GB', 'Windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 'http://localhost:3000/home?uuid=UNFR048-916bcef0-9b0f-11ed-915c-d1804d6c8a49', 'http://localhost:3000', 'http://localhost:3000/0602UFSN_A1_7', NULL, '', 1, '', '', '', '', 0, '', '', '2023-01-23 05:47:54', '2023-01-23 05:47:54'),
(2, 7, 2, '0', 'UNKNOWN', 'Chrome', 'GB', 'Windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, '', 'http://localhost:3000', 'http://localhost:3000/0602UFG_A1_5', NULL, '', 2, '', '', '', '', 0, '', '', '2023-01-23 05:50:03', '2023-01-23 05:50:03'),
(3, 7, 2, '0', 'UNKNOWN', 'Chrome', 'GB', 'Windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, '', 'http://localhost:3000', 'http://localhost:3000/0602UFLS_A1_1', NULL, '', 3, '', '', '', '', 0, '', '', '2023-01-23 05:51:32', '2023-01-23 05:51:32'),
(4, 7, 2, '0', 'UNKNOWN', 'Chrome', 'GB', 'Windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 'http://localhost:3000/home?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', 'http://localhost:3000', 'http://localhost:3000/0602UFSN_A1_7?uuid=UNFR048-4545b1f0-9b10-11ed-85cd-7591af4d3b2e', NULL, '', 1, '', '', '', '', 0, '', '', '2023-01-23 05:52:54', '2023-01-23 05:52:54'),
(5, 7, 2, '0', 'UNKNOWN', 'Chrome', 'GB', 'Windows', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', NULL, 'http://localhost:3000/home?uuid=UNFR048-9708b880-9c9f-11ed-a292-41c3c9f81b77', 'http://localhost:3000', 'http://localhost:3000/0602UFSN_A1_7', NULL, '', 1, '', '', '', '', 0, '', '', '2023-01-25 05:31:27', '2023-01-25 05:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_count`
--

CREATE TABLE `visitors_count` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `count` bigint(20) UNSIGNED DEFAULT NULL,
  `split_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_count`
--

INSERT INTO `visitors_count` (`id`, `visitor_id`, `count`, `split_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-01-23 05:47:54', '2023-01-23 05:47:54'),
(2, 2, 1, 2, '2023-01-23 05:50:03', '2023-01-23 05:50:03'),
(3, 3, 1, 3, '2023-01-23 05:51:32', '2023-01-23 05:51:32'),
(4, 4, 1, 1, '2023-01-23 05:52:54', '2023-01-23 05:52:54'),
(5, 5, 1, 1, '2023-01-25 05:31:27', '2023-01-25 05:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_extra_details`
--

CREATE TABLE `visitors_extra_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ext_var1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_var5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_extra_details`
--

INSERT INTO `visitors_extra_details` (`id`, `visitor_id`, `ext_var1`, `ext_var2`, `ext_var3`, `ext_var4`, `ext_var5`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', '', '2023-01-23 05:47:57', '2023-01-23 05:47:57'),
(2, 2, '', '', '', '', '', '2023-01-23 05:50:04', '2023-01-23 05:50:04'),
(3, 3, '', '', '', '', '', '2023-01-23 05:51:33', '2023-01-23 05:51:33'),
(4, 4, '', '', '', '', '', '2023-01-23 05:52:54', '2023-01-23 05:52:54'),
(5, 5, '', '', '', '', '', '2023-01-25 05:31:30', '2023-01-25 05:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_journey`
--

CREATE TABLE `visitors_journey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_journey`
--

INSERT INTO `visitors_journey` (`id`, `visitor_id`, `user_id`, `page_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'LP', '2023-01-23 05:47:54', '2023-01-23 05:48:22'),
(2, 1, 1, 'TY', '2023-01-23 05:48:22', '2023-01-23 05:48:22'),
(3, 2, 2, 'LP', '2023-01-23 05:50:03', '2023-01-23 05:50:33'),
(4, 2, 2, 'TY', '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(5, 2, 2, 'SN', '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(6, 3, 3, 'LP', '2023-01-23 05:51:32', '2023-01-23 05:52:02'),
(7, 3, 3, 'TY', '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(8, 3, 3, 'SN', '2023-01-23 05:52:09', '2023-01-23 05:52:09'),
(9, 4, 4, 'LP', '2023-01-23 05:52:54', '2023-01-23 05:53:30'),
(10, 4, 4, 'TY', '2023-01-23 05:53:30', '2023-01-23 05:53:30'),
(11, 4, 4, 'SN', '2023-01-23 05:53:34', '2023-01-23 05:53:34'),
(12, 5, NULL, 'LP', '2023-01-25 05:31:27', '2023-01-25 05:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_last_visit`
--

CREATE TABLE `visitors_last_visit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_visit_page` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_last_visit`
--

INSERT INTO `visitors_last_visit` (`id`, `visitor_id`, `last_visit_page`, `created_at`, `updated_at`) VALUES
(1, 1, 'Split_1', '2023-01-23 05:47:54', '2023-01-23 05:47:54'),
(2, 2, 'Split_3', '2023-01-23 05:50:03', '2023-01-23 05:50:03'),
(3, 3, 'Split_4', '2023-01-23 05:51:32', '2023-01-23 05:51:32'),
(4, 4, 'Split_1', '2023-01-23 05:52:54', '2023-01-23 05:52:54'),
(5, 5, 'Split_1', '2023-01-25 05:31:27', '2023-01-25 05:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_slides`
--

CREATE TABLE `visitors_slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `split_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_slides`
--

INSERT INTO `visitors_slides` (`id`, `name`, `split_id`, `user_id`, `visitor_id`, `created_at`, `updated_at`) VALUES
(1, 'slide_info', 1, 1, 1, '2023-01-23 05:48:22', '2023-01-23 05:48:23'),
(2, 'slide_info', 2, 2, 2, '2023-01-23 05:50:33', '2023-01-23 05:50:33'),
(3, 'slide_info', 1, 3, 3, '2023-01-23 05:52:02', '2023-01-23 05:52:02'),
(4, 'slide_info', 1, 4, 4, '2023-01-23 05:53:30', '2023-01-23 05:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_unqualifieds`
--

CREATE TABLE `visitor_unqualifieds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `answer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `input_answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adtopia_visitors`
--
ALTER TABLE `adtopia_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adtopia_visitors_visitor_id_index` (`visitor_id`);

--
-- Indexes for table `adv_click_details`
--
ALTER TABLE `adv_click_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_click_details_adv_visitor_id_foreign` (`adv_visitor_id`),
  ADD KEY `adv_click_details_index` (`adv_id`,`adv_visitor_id`);

--
-- Indexes for table `adv_info`
--
ALTER TABLE `adv_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_info_page_id_foreign` (`page_id`),
  ADD KEY `adv_info_index` (`domain_id`,`page_id`,`status`,`last_active_date`);

--
-- Indexes for table `adv_pixel_firing`
--
ALTER TABLE `adv_pixel_firing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_visit_index` (`adv_visitor_id`);

--
-- Indexes for table `adv_uuid`
--
ALTER TABLE `adv_uuid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_index` (`adv_visitor_id`);

--
-- Indexes for table `adv_visitors`
--
ALTER TABLE `adv_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_visitors_adv_id_foreign` (`adv_id`),
  ADD KEY `adv_visitors_tracker_id_foreign` (`tracker_id`),
  ADD KEY `adv_visitors_index` (`domain_id`,`adv_id`,`tracker_id`,`tracker_unique_id`,`country`);

--
-- Indexes for table `adv_visitors_adtopia_details`
--
ALTER TABLE `adv_visitors_adtopia_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_adtopia_index` (`adv_visitor_id`);

--
-- Indexes for table `adv_visitors_count`
--
ALTER TABLE `adv_visitors_count`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_visitors_count_index` (`adv_visitor_id`);

--
-- Indexes for table `adv_visitors_extra_details`
--
ALTER TABLE `adv_visitors_extra_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_visitors_extra_details_adv_visitor_id_foreign` (`adv_visitor_id`);

--
-- Indexes for table `adv_visitors_page_history`
--
ALTER TABLE `adv_visitors_page_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_visitors_page_history` (`adv_visitor_id`);

--
-- Indexes for table `adv_visitors_temp`
--
ALTER TABLE `adv_visitors_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_visitors_temp_adv_visitor_id_foreign` (`adv_visitor_id`),
  ADD KEY `adv_visitors_temp_tracker_id_foreign` (`tracker_id`),
  ADD KEY `adv_visitors_temp_index` (`adv_id`,`tracker_id`,`tracker_unique_id`,`device_site_id`,`country`);

--
-- Indexes for table `affliate`
--
ALTER TABLE `affliate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_histories`
--
ALTER TABLE `api_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_index` (`sign_type`,`status`,`created_at`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_account_index` (`bank_id`,`status`,`created_at`);

--
-- Indexes for table `bank_details_reviews`
--
ALTER TABLE `bank_details_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blacklisted_items`
--
ALTER TABLE `blacklisted_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_api_responses`
--
ALTER TABLE `buyer_api_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_api_responses` (`user_id`,`bank_id`,`signature_id`,`created_at`),
  ADD KEY `buyer_api_responses_buyer_id_foreign` (`buyer_id`);

--
-- Indexes for table `buyer_api_response_details`
--
ALTER TABLE `buyer_api_response_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_api_response_details_buyer_api_response_id_foreign` (`buyer_api_response_id`);

--
-- Indexes for table `buyer_details`
--
ALTER TABLE `buyer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_index` (`status`);

--
-- Indexes for table `cron_mappings`
--
ALTER TABLE `cron_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_site_masters`
--
ALTER TABLE `device_site_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain_details`
--
ALTER TABLE `domain_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain_index` (`type`,`last_active_date`,`status`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followup_api_responses`
--
ALTER TABLE `followup_api_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followup_histories`
--
ALTER TABLE `followup_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followup_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `followup_list`
--
ALTER TABLE `followup_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followup_list_index` (`user_bank_id`,`status`,`created_at`);

--
-- Indexes for table `followup_stages`
--
ALTER TABLE `followup_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followup_strategy_config`
--
ALTER TABLE `followup_strategy_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followup_vendor_pixel_firing`
--
ALTER TABLE `followup_vendor_pixel_firing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followup_vendor_pixel_firing_index` (`followup_visit_id`,`visitor_id`,`user_id`,`page_type`,`pixel_type`,`created_at`);

--
-- Indexes for table `followup_visit`
--
ALTER TABLE `followup_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ho_cake_visitors`
--
ALTER TABLE `ho_cake_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ho_cake_visitors_visitor_id_index` (`visitor_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `joint_account_details`
--
ALTER TABLE `joint_account_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_docs`
--
ALTER TABLE `lead_docs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ld_indx` (`user_id`,`tax_payer`,`created_at`);

--
-- Indexes for table `malware_docs`
--
ALTER TABLE `malware_docs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `malware_docs_index` (`user_id`);

--
-- Indexes for table `middleman_questionnaires`
--
ALTER TABLE `middleman_questionnaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mq_indx` (`live_id`,`crm_id`,`status`,`created_at`);

--
-- Indexes for table `middleman_questionnaire_options`
--
ALTER TABLE `middleman_questionnaire_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mqo_indx` (`questionnaire_id`,`option_target`,`live_id`,`crm_id`,`status`,`created_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_histories`
--
ALTER TABLE `otp_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_index` (`vertical_id`,`cake_vertical_id`);

--
-- Indexes for table `pdf_triggers`
--
ALTER TABLE `pdf_triggers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pdf_index` (`user_id`);

--
-- Indexes for table `postcode_lookup_result`
--
ALTER TABLE `postcode_lookup_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postcode_lookup_result_visitor_id_foreign` (`visitor_id`);

--
-- Indexes for table `postcode_lookup_search`
--
ALTER TABLE `postcode_lookup_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postcode_lookup_search_visitor_id_foreign` (`visitor_id`);

--
-- Indexes for table `postcode_validation`
--
ALTER TABLE `postcode_validation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postcode_validation_visitor_id_foreign` (`visitor_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `q_indx` (`bank_id`,`is_required`,`type`,`status`,`created_at`);

--
-- Indexes for table `questionnaire_options`
--
ALTER TABLE `questionnaire_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `op_indx` (`questionnaire_id`,`status`,`created_at`);

--
-- Indexes for table `queue_halt_table`
--
ALTER TABLE `queue_halt_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shares_user_id_foreign` (`user_id`);

--
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `signature_index` (`user_id`,`bank_id`,`type`,`status`,`created_at`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_scheduleds`
--
ALTER TABLE `sms_scheduleds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `split_info`
--
ALTER TABLE `split_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `split_info_buyer_id_foreign` (`buyer_id`),
  ADD KEY `split_info_index` (`domain_id`,`buyer_id`,`status`,`last_active_date`);

--
-- Indexes for table `split_uuid`
--
ALTER TABLE `split_uuid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `split_uuid_visitor_id_foreign` (`visitor_id`);

--
-- Indexes for table `sqsl_page_visits`
--
ALTER TABLE `sqsl_page_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sqsl_page_visits_visitor_id_index` (`visitor_id`);

--
-- Indexes for table `thrive_visitors`
--
ALTER TABLE `thrive_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thrive_visitors_visitor_id_index` (`visitor_id`);

--
-- Indexes for table `tracker_masters`
--
ALTER TABLE `tracker_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ukvd_data_lookup`
--
ALTER TABLE `ukvd_data_lookup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_domain_id_foreign` (`domain_id`),
  ADD KEY `users_visitor_id_foreign` (`visitor_id`),
  ADD KEY `users_created_at_index` (`created_at`);

--
-- Indexes for table `user_address_details`
--
ALTER TABLE `user_address_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_address_details_index` (`user_id`,`address_type`,`created_at`);

--
-- Indexes for table `user_banks`
--
ALTER TABLE `user_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_banks_index` (`user_id`,`bank_id`,`bank_account_id`,`created_at`);

--
-- Indexes for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bank_details_bank_id_foreign` (`bank_id`),
  ADD KEY `user_bank_details` (`user_id`,`bank_id`);

--
-- Indexes for table `user_extra_details`
--
ALTER TABLE `user_extra_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ext_details` (`user_id`,`created_at`);

--
-- Indexes for table `user_milestone_stats`
--
ALTER TABLE `user_milestone_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_milestone_stats_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_questionnaire_answers`
--
ALTER TABLE `user_questionnaire_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_questionnaire_answers_questionnaire_id_foreign` (`questionnaire_id`),
  ADD KEY `user_questionnaire_answers_questionnaire_option_id_foreign` (`questionnaire_option_id`),
  ADD KEY `answers_index` (`user_id`,`questionnaire_id`,`questionnaire_option_id`,`status`,`created_at`);

--
-- Indexes for table `user_questionnaire_answers_histories`
--
ALTER TABLE `user_questionnaire_answers_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_questionnaire_answers_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_questionnaire_meta`
--
ALTER TABLE `user_questionnaire_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_questionnaire_meta_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_questionnaire_stats`
--
ALTER TABLE `user_questionnaire_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_spouses_details`
--
ALTER TABLE `user_spouses_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_spouses_details_index` (`user_id`);

--
-- Indexes for table `validation_email_tracking`
--
ALTER TABLE `validation_email_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validation_phone_tracking`
--
ALTER TABLE `validation_phone_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_details_user_id_foreign` (`user_id`),
  ADD KEY `vehicle_details_visitor_id_foreign` (`visitor_id`),
  ADD KEY `vehicle_details_split_id_foreign` (`split_id`);

--
-- Indexes for table `vehicle_extra_details`
--
ALTER TABLE `vehicle_extra_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_pixel_firing`
--
ALTER TABLE `vendor_pixel_firing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_pixel_firing_user_id_foreign` (`user_id`);

--
-- Indexes for table `verticals`
--
ALTER TABLE `verticals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_split_id_foreign` (`split_id`),
  ADD KEY `visitors_tracker_master_id_foreign` (`tracker_master_id`);

--
-- Indexes for table `visitors_count`
--
ALTER TABLE `visitors_count`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_count_index` (`visitor_id`),
  ADD KEY `visitors_count_split_id_foreign` (`split_id`);

--
-- Indexes for table `visitors_extra_details`
--
ALTER TABLE `visitors_extra_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_extra_index` (`visitor_id`);

--
-- Indexes for table `visitors_journey`
--
ALTER TABLE `visitors_journey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adv_extra_index` (`visitor_id`);

--
-- Indexes for table `visitors_last_visit`
--
ALTER TABLE `visitors_last_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_visit_index` (`visitor_id`);

--
-- Indexes for table `visitors_slides`
--
ALTER TABLE `visitors_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_unqualifieds`
--
ALTER TABLE `visitor_unqualifieds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adtopia_visitors`
--
ALTER TABLE `adtopia_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_click_details`
--
ALTER TABLE `adv_click_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_info`
--
ALTER TABLE `adv_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_pixel_firing`
--
ALTER TABLE `adv_pixel_firing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_uuid`
--
ALTER TABLE `adv_uuid`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_visitors`
--
ALTER TABLE `adv_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_visitors_adtopia_details`
--
ALTER TABLE `adv_visitors_adtopia_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_visitors_count`
--
ALTER TABLE `adv_visitors_count`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_visitors_extra_details`
--
ALTER TABLE `adv_visitors_extra_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_visitors_page_history`
--
ALTER TABLE `adv_visitors_page_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adv_visitors_temp`
--
ALTER TABLE `adv_visitors_temp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affliate`
--
ALTER TABLE `affliate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_histories`
--
ALTER TABLE `api_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_details_reviews`
--
ALTER TABLE `bank_details_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blacklisted_items`
--
ALTER TABLE `blacklisted_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_api_responses`
--
ALTER TABLE `buyer_api_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_api_response_details`
--
ALTER TABLE `buyer_api_response_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_details`
--
ALTER TABLE `buyer_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cron_mappings`
--
ALTER TABLE `cron_mappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `device_site_masters`
--
ALTER TABLE `device_site_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `domain_details`
--
ALTER TABLE `domain_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followup_api_responses`
--
ALTER TABLE `followup_api_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followup_histories`
--
ALTER TABLE `followup_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `followup_list`
--
ALTER TABLE `followup_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followup_stages`
--
ALTER TABLE `followup_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followup_strategy_config`
--
ALTER TABLE `followup_strategy_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followup_vendor_pixel_firing`
--
ALTER TABLE `followup_vendor_pixel_firing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followup_visit`
--
ALTER TABLE `followup_visit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ho_cake_visitors`
--
ALTER TABLE `ho_cake_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `joint_account_details`
--
ALTER TABLE `joint_account_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_docs`
--
ALTER TABLE `lead_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `malware_docs`
--
ALTER TABLE `malware_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `middleman_questionnaires`
--
ALTER TABLE `middleman_questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `middleman_questionnaire_options`
--
ALTER TABLE `middleman_questionnaire_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `otp_histories`
--
ALTER TABLE `otp_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pdf_triggers`
--
ALTER TABLE `pdf_triggers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcode_lookup_result`
--
ALTER TABLE `postcode_lookup_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcode_lookup_search`
--
ALTER TABLE `postcode_lookup_search`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcode_validation`
--
ALTER TABLE `postcode_validation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `questionnaire_options`
--
ALTER TABLE `questionnaire_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `queue_halt_table`
--
ALTER TABLE `queue_halt_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signatures`
--
ALTER TABLE `signatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_config`
--
ALTER TABLE `site_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_scheduleds`
--
ALTER TABLE `sms_scheduleds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `split_info`
--
ALTER TABLE `split_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `split_uuid`
--
ALTER TABLE `split_uuid`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sqsl_page_visits`
--
ALTER TABLE `sqsl_page_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thrive_visitors`
--
ALTER TABLE `thrive_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_masters`
--
ALTER TABLE `tracker_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ukvd_data_lookup`
--
ALTER TABLE `ukvd_data_lookup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_address_details`
--
ALTER TABLE `user_address_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_banks`
--
ALTER TABLE `user_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_extra_details`
--
ALTER TABLE `user_extra_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_milestone_stats`
--
ALTER TABLE `user_milestone_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_questionnaire_answers`
--
ALTER TABLE `user_questionnaire_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_questionnaire_answers_histories`
--
ALTER TABLE `user_questionnaire_answers_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_questionnaire_meta`
--
ALTER TABLE `user_questionnaire_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_questionnaire_stats`
--
ALTER TABLE `user_questionnaire_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_spouses_details`
--
ALTER TABLE `user_spouses_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `validation_email_tracking`
--
ALTER TABLE `validation_email_tracking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `validation_phone_tracking`
--
ALTER TABLE `validation_phone_tracking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_extra_details`
--
ALTER TABLE `vehicle_extra_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_pixel_firing`
--
ALTER TABLE `vendor_pixel_firing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verticals`
--
ALTER TABLE `verticals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors_count`
--
ALTER TABLE `visitors_count`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors_extra_details`
--
ALTER TABLE `visitors_extra_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors_journey`
--
ALTER TABLE `visitors_journey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visitors_last_visit`
--
ALTER TABLE `visitors_last_visit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors_slides`
--
ALTER TABLE `visitors_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitor_unqualifieds`
--
ALTER TABLE `visitor_unqualifieds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adtopia_visitors`
--
ALTER TABLE `adtopia_visitors`
  ADD CONSTRAINT `adtopia_visitors_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_click_details`
--
ALTER TABLE `adv_click_details`
  ADD CONSTRAINT `adv_click_details_adv_id_foreign` FOREIGN KEY (`adv_id`) REFERENCES `adv_info` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `adv_click_details_adv_visitor_id_foreign` FOREIGN KEY (`adv_visitor_id`) REFERENCES `adv_visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_info`
--
ALTER TABLE `adv_info`
  ADD CONSTRAINT `adv_info_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domain_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `adv_info_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_pixel_firing`
--
ALTER TABLE `adv_pixel_firing`
  ADD CONSTRAINT `adv_pixel_firing_adv_visitor_id_foreign` FOREIGN KEY (`adv_visitor_id`) REFERENCES `adv_visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_visitors`
--
ALTER TABLE `adv_visitors`
  ADD CONSTRAINT `adv_visitors_adv_id_foreign` FOREIGN KEY (`adv_id`) REFERENCES `adv_info` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `adv_visitors_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domain_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `adv_visitors_tracker_id_foreign` FOREIGN KEY (`tracker_id`) REFERENCES `tracker_masters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_visitors_adtopia_details`
--
ALTER TABLE `adv_visitors_adtopia_details`
  ADD CONSTRAINT `adv_visitors_adtopia_details_adv_visitor_id_foreign` FOREIGN KEY (`adv_visitor_id`) REFERENCES `adv_visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_visitors_count`
--
ALTER TABLE `adv_visitors_count`
  ADD CONSTRAINT `adv_visitors_count_adv_visitor_id_foreign` FOREIGN KEY (`adv_visitor_id`) REFERENCES `adv_visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_visitors_extra_details`
--
ALTER TABLE `adv_visitors_extra_details`
  ADD CONSTRAINT `adv_visitors_extra_details_adv_visitor_id_foreign` FOREIGN KEY (`adv_visitor_id`) REFERENCES `adv_visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_visitors_page_history`
--
ALTER TABLE `adv_visitors_page_history`
  ADD CONSTRAINT `adv_visitors_page_history_adv_visitor_id_foreign` FOREIGN KEY (`adv_visitor_id`) REFERENCES `adv_visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adv_visitors_temp`
--
ALTER TABLE `adv_visitors_temp`
  ADD CONSTRAINT `adv_visitors_temp_adv_visitor_id_foreign` FOREIGN KEY (`adv_visitor_id`) REFERENCES `adv_visitors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `adv_visitors_temp_tracker_id_foreign` FOREIGN KEY (`tracker_id`) REFERENCES `tracker_masters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buyer_api_responses`
--
ALTER TABLE `buyer_api_responses`
  ADD CONSTRAINT `buyer_api_responses_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buyer_api_responses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buyer_api_response_details`
--
ALTER TABLE `buyer_api_response_details`
  ADD CONSTRAINT `buyer_api_response_details_buyer_api_response_id_foreign` FOREIGN KEY (`buyer_api_response_id`) REFERENCES `buyer_api_responses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followup_histories`
--
ALTER TABLE `followup_histories`
  ADD CONSTRAINT `followup_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ho_cake_visitors`
--
ALTER TABLE `ho_cake_visitors`
  ADD CONSTRAINT `ho_cake_visitors_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_docs`
--
ALTER TABLE `lead_docs`
  ADD CONSTRAINT `lead_docs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `middleman_questionnaire_options`
--
ALTER TABLE `middleman_questionnaire_options`
  ADD CONSTRAINT `middleman_questionnaire_options_questionnaire_id_foreign` FOREIGN KEY (`questionnaire_id`) REFERENCES `middleman_questionnaires` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_vertical_id_foreign` FOREIGN KEY (`vertical_id`) REFERENCES `verticals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postcode_lookup_result`
--
ALTER TABLE `postcode_lookup_result`
  ADD CONSTRAINT `postcode_lookup_result_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postcode_lookup_search`
--
ALTER TABLE `postcode_lookup_search`
  ADD CONSTRAINT `postcode_lookup_search_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postcode_validation`
--
ALTER TABLE `postcode_validation`
  ADD CONSTRAINT `postcode_validation_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questionnaire_options`
--
ALTER TABLE `questionnaire_options`
  ADD CONSTRAINT `questionnaire_options_questionnaire_id_foreign` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaires` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `split_info`
--
ALTER TABLE `split_info`
  ADD CONSTRAINT `split_info_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `split_info_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domain_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `split_uuid`
--
ALTER TABLE `split_uuid`
  ADD CONSTRAINT `split_uuid_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sqsl_page_visits`
--
ALTER TABLE `sqsl_page_visits`
  ADD CONSTRAINT `sqsl_page_visits_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thrive_visitors`
--
ALTER TABLE `thrive_visitors`
  ADD CONSTRAINT `thrive_visitors_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domain_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD CONSTRAINT `user_bank_details_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_bank_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_extra_details`
--
ALTER TABLE `user_extra_details`
  ADD CONSTRAINT `user_extra_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_milestone_stats`
--
ALTER TABLE `user_milestone_stats`
  ADD CONSTRAINT `user_milestone_stats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_questionnaire_answers`
--
ALTER TABLE `user_questionnaire_answers`
  ADD CONSTRAINT `user_questionnaire_answers_questionnaire_id_foreign` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaires` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_questionnaire_answers_questionnaire_option_id_foreign` FOREIGN KEY (`questionnaire_option_id`) REFERENCES `questionnaire_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_questionnaire_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_questionnaire_answers_histories`
--
ALTER TABLE `user_questionnaire_answers_histories`
  ADD CONSTRAINT `user_questionnaire_answers_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_questionnaire_meta`
--
ALTER TABLE `user_questionnaire_meta`
  ADD CONSTRAINT `user_questionnaire_meta_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_spouses_details`
--
ALTER TABLE `user_spouses_details`
  ADD CONSTRAINT `user_spouses_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD CONSTRAINT `vehicle_details_split_id_foreign` FOREIGN KEY (`split_id`) REFERENCES `split_info` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_details_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_pixel_firing`
--
ALTER TABLE `vendor_pixel_firing`
  ADD CONSTRAINT `vendor_pixel_firing_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_split_id_foreign` FOREIGN KEY (`split_id`) REFERENCES `split_info` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitors_tracker_master_id_foreign` FOREIGN KEY (`tracker_master_id`) REFERENCES `tracker_masters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors_count`
--
ALTER TABLE `visitors_count`
  ADD CONSTRAINT `visitors_count_split_id_foreign` FOREIGN KEY (`split_id`) REFERENCES `split_info` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitors_count_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors_extra_details`
--
ALTER TABLE `visitors_extra_details`
  ADD CONSTRAINT `visitors_extra_details_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors_journey`
--
ALTER TABLE `visitors_journey`
  ADD CONSTRAINT `visitors_journey_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors_last_visit`
--
ALTER TABLE `visitors_last_visit`
  ADD CONSTRAINT `visitors_last_visit_visitor_id_foreign` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE;
--
-- Database: `davis_project`
--
CREATE DATABASE IF NOT EXISTS `davis_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `davis_project`;

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`id`, `ip_address`, `uuid`, `survey_id`, `fingerprint`, `is_finished`, `created_at`, `updated_at`) VALUES
(2, NULL, '70fee264-f142-4cb6-8442-e2a393460335', 17, '6ue5CJusEr8eOykcQl4w', 1, '2021-06-19 04:31:26', '2021-06-19 04:32:52'),
(3, NULL, 'aaccd42a-1dbc-41b9-9030-7684adc4ab53', 17, '0VlxpyxJpmERXlRmnFzX', 1, '2021-06-19 04:33:55', '2021-06-19 04:36:01'),
(11, NULL, '35f30229-5f7f-4def-8e65-81d82778c4e6', 36, 'Xcfk5HwnRDAaiMg1czpE', 0, '2021-06-29 19:33:51', '2021-06-29 19:33:51'),
(17, NULL, 'bfbd647c-31ee-44c5-9d2c-c420c964f27b', 36, 'DVXUEIQNvKuXaQSBh3vd', 1, '2021-07-03 14:18:15', '2021-07-03 14:18:33'),
(244, NULL, '9dda1f58-ab8e-45d8-b25e-0ef5e86a39a3', 90, 'MAuSXGtZ21CnaZAf0oLF', 0, '2022-03-09 13:28:02', '2022-03-09 13:28:02'),
(247, NULL, '83dcee43-d816-47b9-bb18-7e7aec6a8da0', 47, 'L8sfhL4Ty4TIas5T2e7H', 0, '2022-05-11 14:25:24', '2022-05-11 14:25:24'),
(264, NULL, '2e2b89af-5213-4479-8071-a10604452f0c', 166, 'fK4G1KoW7sKzb4iW5F6g', 1, '2022-05-17 10:07:35', '2022-05-17 10:10:44'),
(266, NULL, 'a84e417d-8e67-474c-9909-18c1188c42eb', 166, 'gRWnIf1uAlqT5fTJkFSc', 1, '2022-05-17 10:12:39', '2022-05-17 10:17:23'),
(267, NULL, 'fa42bb37-c8e5-4655-9bf6-6d5d924b1cc7', 166, 'rfoVQNC62sPAVNvIxMzn', 0, '2022-05-17 10:17:27', '2022-05-17 10:17:27'),
(268, NULL, 'e2669826-498e-403e-ad98-eada3f024e1a', 47, 'NbJnMfsJS36Ili45wf3Z', 0, '2022-05-17 12:51:30', '2022-05-17 12:51:30'),
(278, '116.68.84.17', '5cf0f3fa-666b-40aa-a2ee-c95164074bb0', 47, 'fYPnbuiXMmxKrTsGJ6qd', 1, '2022-05-19 09:08:40', '2022-05-19 09:08:54'),
(283, '92.98.183.194', '1e8e47da-4ebc-4507-8923-bbbc87fd92e8', 187, 'S3MHuK8VjrMGtNpzyemZ', 1, '2022-05-23 15:48:29', '2022-05-23 16:22:40'),
(284, NULL, '98dc3506-f70c-4356-a1fd-2238bbe80232', 187, 'hiNVQj7IOlIudTjmOXe7', 0, '2022-05-23 15:49:11', '2022-05-23 15:49:11'),
(285, '92.98.183.194', '8800adde-7b70-43a0-96cc-90745cee0747', 187, '86GBJk3Ppiqe4mzzNeUc', 1, '2022-05-23 15:50:07', '2022-05-23 15:54:57'),
(292, NULL, 'b6f26e28-42d9-48fe-a4ee-d4d4d798d07a', 191, 'NHd78OjJDJ0yILoX9JnD', 0, '2022-05-26 11:35:29', '2022-05-26 11:35:29'),
(293, NULL, '935f79a0-ef03-4cd5-9204-a774fd274600', 191, 'ndTom74IrxrSRR8vl4Lw', 0, '2022-05-26 11:37:32', '2022-05-26 11:37:32'),
(294, NULL, '24a3c2bc-d5ed-4ea6-a097-1d61e1c1e10e', 191, '3kntP8NCNrxbZ3NoJ9GA', 0, '2022-05-26 11:52:19', '2022-05-26 11:52:19'),
(295, NULL, '4554a038-a673-4f0f-9868-102aebd2378f', 47, 'OE8Q43xOrz4fBvGWMWGL', 0, '2022-05-27 08:18:18', '2022-05-27 08:18:18'),
(297, '49.37.235.177', '8989bed0-6873-4992-bede-469a9aab862c', 192, 'CScL1j0UYtuOs2E4nq9o', 1, '2022-06-01 05:58:38', '2022-06-01 05:58:47'),
(299, '49.37.226.238', 'f076f25a-11dc-4b1d-9728-3bbf914de8fd', 206, 'deoNDtD9lt67RcqcWi3r', 1, '2022-06-15 05:55:41', '2022-06-15 05:56:01'),
(303, NULL, '8da70950-3883-45a1-8f1f-f8062db20d1b', 92, 'dIGPak1ihJK6AVBusb1G', 0, '2022-06-16 04:26:23', '2022-06-16 04:26:23'),
(307, NULL, '14f0e9bf-3c45-4fc5-8e02-a4b4bc084250', 218, '0Ul4NwvQ3VFAn0mzLgWO', 0, '2022-06-18 12:09:14', '2022-06-18 12:09:14'),
(314, '49.37.235.6', '9f93f96e-65db-4fe6-bea9-5eb41daaf6fd', 239, 'WnbdDs08Oww3y61HzNeX', 1, '2022-10-05 11:13:39', '2022-10-05 11:13:42'),
(315, '49.37.235.6', 'e964e3bb-0225-435a-b675-795bf2c9007b', 240, 'hU5yyJRNxaEs8XgXeK79', 1, '2022-10-05 11:17:40', '2022-10-05 11:17:48'),
(317, '103.140.16.68', 'd008c019-f95e-4d85-a7bb-196ae0ef2669', 241, '5SK9R0t26v8zYWz60Ul8', 1, '2022-10-06 07:59:38', '2022-10-06 08:15:01'),
(320, '49.37.235.48', '1f8f7edd-e774-4852-aa6d-e947440f48f5', 240, 'OveSWPsaCqxAlqeTI4kL', 1, '2022-10-10 05:26:43', '2022-10-10 05:26:54'),
(321, '49.37.235.48', 'faaa4acc-1cb0-4382-9e43-74bcf1fd1147', 240, 'MxRSjWbPoD7ZR7QjKd8r', 1, '2022-10-10 05:29:04', '2022-10-10 05:29:26'),
(322, '49.37.235.48', '45b52f41-b66d-4404-b38f-1cfaa943b422', 240, 'X05u4fXHfDqvpaAg9e6r', 1, '2022-10-10 05:40:27', '2022-10-10 05:40:36'),
(323, '49.37.235.48', 'd27b75d8-9eb3-4ee3-a9f3-d40f498f925d', 240, 'Xc3LCWKS6B1gtdXysBpC', 1, '2022-10-10 05:59:00', '2022-10-10 05:59:24'),
(324, '49.37.235.48', '7ae78a81-a54d-483f-9bca-efa57be9cd47', 240, 'KfqFvpwFuKSIhtLl3Sd4', 1, '2022-10-10 06:15:01', '2022-10-10 06:17:30'),
(325, '49.37.235.48', 'ab2db1b6-ef45-4394-a388-83edde793b79', 240, 'EczgxKX0RXp6OtkzilEj', 1, '2022-10-10 06:19:29', '2022-10-10 06:19:53'),
(326, NULL, '6729c7f5-e430-4287-b6a9-dd1aee533be4', 240, '3REH36pMmVpaoXOsk7oP', 0, '2022-10-10 06:22:28', '2022-10-10 06:22:28'),
(327, '49.37.235.48', '018a7fa2-66d5-4c29-b778-3ecd88dc82af', 240, 'hWvYuNhllNtHfcIMsxpE', 1, '2022-10-10 06:23:28', '2022-10-10 06:24:03'),
(328, NULL, 'd4d0778f-ebfa-4298-ae11-b7f88d20ce03', 240, 'bwVyIhANy52aoPWiivn3', 0, '2022-10-10 06:29:28', '2022-10-10 06:29:28'),
(329, NULL, '301d4911-16fb-4d42-be7b-8c369a34ebc8', 240, 'Odf7cc1ddrVRgcn0vRQU', 0, '2022-10-10 06:32:38', '2022-10-10 06:32:38'),
(333, '49.37.224.22', '6762c98e-6362-4dcf-ad11-e1f362387de4', 247, '1mA5nzAShlEUmr4l1RXB', 1, '2022-10-26 19:25:03', '2022-10-26 19:25:08'),
(334, NULL, '1a7739e3-5b68-444b-9aea-f7d0718880ac', 250, 'ZgcU0BJKPuSOWQSBGz1W', 0, '2022-10-26 19:33:23', '2022-10-26 19:33:23'),
(335, NULL, 'a5b562a3-e4b6-4456-abc1-2b92be717c8b', 47, '94GM2wRKHfhONAOtnYTn', 0, '2022-11-04 13:12:01', '2022-11-04 13:12:01'),
(336, '49.37.226.225', '9870a93c-fc60-480a-9e73-3571d5157a55', 251, 'orE8DHTxvGSDQ8gZ0nPI', 1, '2022-11-18 10:55:46', '2022-11-18 11:02:55'),
(337, NULL, '5d2b4375-4fc0-478a-90fb-ed5649f5382b', 255, 'qBdf5cqZkhlFUiKKGDoD', 0, '2023-01-12 03:55:16', '2023-01-12 03:55:16'),
(338, NULL, '3c25c97c-3afd-4892-a5ea-2fdcf3fdcfd7', 241, 'WlUawdBFS3fQcwFhtFQf', 0, '2023-01-30 08:20:22', '2023-01-30 08:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `name`, `code`, `description`, `version`, `created_at`, `updated_at`) VALUES
(1, 'ShareThis', 'sharethis', 'ShareThis module', '1.0', '2021-06-16 14:50:19', '2021-06-16 14:50:19'),
(2, 'StripeSubscription', 'stripesubscription', 'Stripe subscription module', '1.0', '2022-02-04 07:05:07', '2022-02-04 07:05:07'),
(3, 'OfflineSubscription', 'offlinesubscription', 'Offline Subscription module', '1.0', '2022-02-04 07:05:11', '2022-02-04 07:05:11'),
(4, 'PaypalSubscription', 'paypalsubscription', 'Paypal Subscription module', '1.0', '2022-02-04 07:05:14', '2022-02-04 07:05:14');

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
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '1', '2021-06-16 14:50:21', '2021-06-16 14:50:21'),
(2, 'Malaylam', 'ml', '1', '2022-08-23 15:57:52', '2022-08-23 15:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_00_000000_create_settings_table', 1),
(3, '2014_10_00_000001_add_group_column_on_settings_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2021_05_05_105516_create_surveys_table', 1),
(8, '2021_05_05_113404_create_questions_table', 1),
(9, '2021_05_06_041025_create_plans_table', 1),
(10, '2021_05_06_041038_alter_users_table', 1),
(11, '2021_05_06_042948_create_plan_options_table', 1),
(12, '2021_05_07_101727_alter_remove_field_from_surveys_table', 1),
(13, '2021_05_10_123640_alter_add_fields_to_surveys_table', 1),
(14, '2021_05_17_152816_create_attendees_table', 1),
(15, '2021_05_17_152817_create_responses_table', 1),
(16, '2021_05_19_001924_create_languages_table', 1),
(17, '2021_05_19_061512_create_extensions_table', 1),
(18, '2021_05_19_061631_add_extensions', 1),
(19, '2021_05_19_151744_create_subscriptions_table', 1),
(20, '2021_05_20_035420_add_field_to_surveys_table', 1),
(21, '2021_05_20_041239_add_stripe_plan_id_to_plans', 1),
(22, '2021_05_20_052102_create_notifications_table', 1),
(23, '2021_05_21_110231_add_field_to_users_table', 1),
(24, '2021_05_21_175643_create_transactions_table', 1),
(25, '2021_05_22_102611_remove_field_from_users_table', 1),
(26, '2021_05_22_103516_alter_add_field_to_users_table', 1),
(27, '2021_05_24_084718_add_notified_subscription_ended_to_subscriptions_table', 1),
(28, '2021_05_25_081629_seed_dummy_data', 1),
(29, '2021_05_25_095413_seed_english_to_languages_table', 1),
(30, '2021_06_03_175852_create_permission_tables', 1),
(31, '2021_06_03_181300_seed_roles', 1),
(32, '2021_06_04_055759_seed_admin_user', 1),
(33, '2021_06_04_060515_add_survey_templates', 1),
(34, '2021_06_11_075325_alter_table_surveys_add_notify_response', 1),
(35, '2021_06_26_090555_add_start_and_end_dates_to_surveys_table', 2),
(36, '2021_06_29_153651_add_background_image_to_surveys_table', 3),
(37, '2021_06_29_173418_add_image_to_questions_table', 3),
(38, '2021_06_29_180052_add_video_to_questions_table', 3),
(39, '2022_04_29_105431_add_invoice_transactions_table', 4),
(40, '2022_05_16_115120_add_email_to_attendees_table', 5),
(41, '2022_05_18_081343_remove_email_from_attendees_table', 6),
(42, '2022_05_18_081455_add_ip_address_to_attendees_table', 6),
(43, '2022_05_25_112743_add_language_to_surveys', 7),
(44, '2022_05_26_102643_remove_language_from_surveys', 8),
(45, '2022_05_26_102758_update_surveys_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 4),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
(2, 'App\\User', 43),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 55),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 61),
(2, 'App\\User', 62),
(2, 'App\\User', 63),
(2, 'App\\User', 64),
(2, 'App\\User', 65),
(2, 'App\\User', 66),
(2, 'App\\User', 67),
(2, 'App\\User', 68),
(2, 'App\\User', 70),
(2, 'App\\User', 71),
(2, 'App\\User', 72),
(2, 'App\\User', 73),
(2, 'App\\User', 74),
(2, 'App\\User', 75),
(2, 'App\\User', 76),
(2, 'App\\User', 77),
(2, 'App\\User', 78),
(2, 'App\\User', 79),
(2, 'App\\User', 80),
(2, 'App\\User', 82),
(2, 'App\\User', 83),
(2, 'App\\User', 85),
(2, 'App\\User', 87),
(2, 'App\\User', 89),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 92),
(2, 'App\\User', 93),
(2, 'App\\User', 94),
(2, 'App\\User', 95),
(2, 'App\\User', 96),
(2, 'App\\User', 97),
(2, 'App\\User', 98),
(2, 'App\\User', 99),
(2, 'App\\User', 100),
(2, 'App\\User', 101),
(2, 'App\\User', 102),
(2, 'App\\User', 103),
(2, 'App\\User', 104),
(2, 'App\\User', 105),
(2, 'App\\User', 106),
(2, 'App\\User', 107),
(2, 'App\\User', 108),
(2, 'App\\User', 109),
(2, 'App\\User', 110),
(2, 'App\\User', 111),
(2, 'App\\User', 112),
(2, 'App\\User', 113),
(2, 'App\\User', 114),
(2, 'App\\User', 115),
(2, 'App\\User', 116),
(2, 'App\\User', 117),
(2, 'App\\User', 118),
(2, 'App\\User', 119);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('005bdca5-94e4-4ce9-a0e5-38df47c78207', 'App\\Notifications\\NewUserNotification', 'App\\User', 75, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-04-16 00:57:55', '2022-04-16 00:57:55'),
('05f93881-5978-4a98-a1fc-8e50b98296d7', 'App\\Notifications\\NewUserNotification', 'App\\User', 96, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-29 12:06:52', '2022-08-29 12:06:52'),
('0600f94c-c428-4aa5-bcaa-81f4a46fff6c', 'App\\Notifications\\NewUserNotification', 'App\\User', 70, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-03-21 02:35:24', '2022-03-21 02:35:24'),
('0689984c-0434-4a0d-b975-efa9866111c4', 'App\\Notifications\\NewUserNotification', 'App\\User', 76, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-04-22 14:21:04', '2022-04-22 14:21:04'),
('06dd7d59-75dc-4cbb-a89d-f35b29a8ac12', 'App\\Notifications\\NewUserNotification', 'App\\User', 13, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-07-23 08:23:43', '2021-07-23 08:23:43'),
('08768158-876d-41d0-981a-03fc3e654ffe', 'App\\Notifications\\AdminNotification', 'App\\User', 70, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('0a1291b6-45ae-402c-9f1c-56a26916ffaf', 'App\\Notifications\\NewUserNotification', 'App\\User', 113, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-12-04 06:03:34', '2022-12-04 06:03:34'),
('0b814db2-55a5-4bc4-8a12-6016b65c2a6b', 'App\\Notifications\\NewUserNotification', 'App\\User', 108, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-10-24 18:24:00', '2022-10-24 18:24:00'),
('0b966287-4cec-4400-a87f-1dcdf6395497', 'App\\Notifications\\NewUserNotification', 'App\\User', 105, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-09-25 17:19:47', '2022-09-25 17:19:47'),
('0be25512-4e37-4f5e-b196-5d5ac5013236', 'App\\Notifications\\AdminNotification', 'App\\User', 77, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('0bfdf9c3-c24f-432f-91ea-b61d700d8a8a', 'App\\Notifications\\NewUserNotification', 'App\\User', 82, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', '2022-05-09 14:16:28', '2022-05-09 14:01:52', '2022-05-09 14:16:28'),
('1329584d-ea9d-4f88-b202-5c4bf75e2502', 'App\\Notifications\\NewUserNotification', 'App\\User', 57, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-09 23:05:05', '2022-02-09 23:05:05'),
('18bb6e72-daa1-4678-909c-b5eba51cf8b5', 'App\\Notifications\\AdminNotification', 'App\\User', 23, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('1b1bd6f3-c3db-4fbb-9ce1-a896a423da65', 'App\\Notifications\\NewUserNotification', 'App\\User', 23, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-09-04 15:19:59', '2021-09-04 15:19:59'),
('1b421f97-68ca-4660-9d2f-0581187b8c70', 'App\\Notifications\\NewUserNotification', 'App\\User', 90, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-07-14 01:37:35', '2022-07-14 01:37:35'),
('1c595f37-7665-48da-8063-5338226d5485', 'App\\Notifications\\AdminNotification', 'App\\User', 43, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('1cf03a6a-d3be-48b0-856f-10463e21f61d', 'App\\Notifications\\AdminNotification', 'App\\User', 5, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('1d9f82b4-be95-40d0-8cc7-ef3d29c8607d', 'App\\Notifications\\NewUserNotification', 'App\\User', 86, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-18 10:41:51', '2022-05-18 10:41:51'),
('1e02caef-771a-4e23-830b-cfcd702073d0', 'App\\Notifications\\NewUserNotification', 'App\\User', 62, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-23 20:46:23', '2022-02-23 20:46:23'),
('1f337fac-64f4-4811-9cb0-e0e625df59e3', 'App\\Notifications\\NewUserNotification', 'App\\User', 85, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', '2022-08-10 17:13:43', '2022-05-14 17:13:40', '2022-08-10 17:13:43'),
('1fe10515-7d12-4684-a1e4-ae349be85066', 'App\\Notifications\\AdminNotification', 'App\\User', 49, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('20cd308d-c87c-4be7-96c2-4cbc0c916345', 'App\\Notifications\\NewUserNotification', 'App\\User', 46, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-31 04:52:24', '2021-12-31 04:52:24'),
('21fc1837-4838-478d-b318-93185cfc7ae0', 'App\\Notifications\\NewUserNotification', 'App\\User', 64, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-24 06:29:34', '2022-02-24 06:29:34'),
('22000a86-d1b8-407f-b828-e43149e7605f', 'App\\Notifications\\AdminNotification', 'App\\User', 39, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('27caee03-d6f9-4815-9a73-3d46d245f872', 'App\\Notifications\\NewUserNotification', 'App\\User', 84, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-14 10:55:55', '2022-05-14 10:55:55'),
('295911ad-d84a-4336-a8e5-47a194d0233a', 'App\\Notifications\\AdminNotification', 'App\\User', 79, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('29c597af-a535-471e-a27c-e9dfe3038cbe', 'App\\Notifications\\NewUserNotification', 'App\\User', 21, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-08-20 15:35:37', '2021-08-20 15:35:37'),
('2ad77365-4226-473d-8723-5b2421eab6b6', 'App\\Notifications\\NewUserNotification', 'App\\User', 9, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-06-26 15:38:11', '2021-06-26 15:38:11'),
('2e2e4745-4016-4f3d-92b0-d488021c8a8b', 'App\\Notifications\\NewUserNotification', 'App\\User', 87, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-25 10:25:52', '2022-05-25 10:25:52'),
('2e4e9da2-ffe9-47ce-8859-877f2acd4603', 'App\\Notifications\\AdminNotification', 'App\\User', 28, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('2fdacd16-d9c6-4038-b42a-2fcf7d25206e', 'App\\Notifications\\NewUserNotification', 'App\\User', 25, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-09-17 06:57:21', '2021-09-17 06:57:21'),
('30546fed-26a7-4ce1-8aee-a22667cd45ee', 'App\\Notifications\\AdminNotification', 'App\\User', 7, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('317232fe-2536-4029-8c21-fe77cdd7ab22', 'App\\Notifications\\AdminNotification', 'App\\User', 10, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('32513262-1fe4-4da6-b9f9-c41988b75198', 'App\\Notifications\\NewUserNotification', 'App\\User', 5, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-06-22 11:53:34', '2021-06-22 11:53:34'),
('3505f788-c255-49b5-86cd-0e1df20fdaee', 'App\\Notifications\\NewUserNotification', 'App\\User', 38, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-06 17:46:25', '2021-12-06 17:46:25'),
('36988453-d5d5-45da-964f-fd03df24275d', 'App\\Notifications\\NewUserNotification', 'App\\User', 30, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-10-27 03:25:37', '2021-10-27 03:25:37'),
('37da3f8a-334e-47d1-b4da-2746a2b4a9c0', 'App\\Notifications\\AdminNotification', 'App\\User', 83, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('38cdf8fe-1202-46d6-8321-a11fd763db81', 'App\\Notifications\\NewUserNotification', 'App\\User', 72, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-03-28 14:18:06', '2022-03-28 14:18:06'),
('38e3fd11-eda3-47a8-8964-1dfe845b1863', 'App\\Notifications\\NewUserNotification', 'App\\User', 106, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-10-10 18:01:38', '2022-10-10 18:01:38'),
('3d43bd31-1a9c-4676-8ee9-b2868d6e6c89', 'App\\Notifications\\AdminNotification', 'App\\User', 27, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('3eacc98b-c54a-4446-ae59-d2c5331c1177', 'App\\Notifications\\NewUserNotification', 'App\\User', 80, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-09 14:01:32', '2022-05-09 14:01:32'),
('403edff0-7c0c-4ede-808f-6605bbad866c', 'App\\Notifications\\NewUserNotification', 'App\\User', 44, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-22 07:39:45', '2021-12-22 07:39:45'),
('415a2684-015f-4d7b-96de-693931cc48be', 'App\\Notifications\\NewUserNotification', 'App\\User', 55, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-03 23:13:02', '2022-02-03 23:13:02'),
('41ca1661-5ad5-4f76-b2ab-4fb5556d337d', 'App\\Notifications\\NewUserNotification', 'App\\User', 91, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-07-30 08:06:56', '2022-07-30 08:06:56'),
('4262349f-6afc-4b9d-8294-43b2e3bb4a6b', 'App\\Notifications\\AdminNotification', 'App\\User', 53, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('4337278d-57d8-4153-bf83-3cf8ca7d9ef2', 'App\\Notifications\\AdminNotification', 'App\\User', 64, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('43a2bd48-7a53-4dd1-92db-b4f3e138ba94', 'App\\Notifications\\NewUserNotification', 'App\\User', 42, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-18 12:01:55', '2021-12-18 12:01:55'),
('43f93ada-6192-44b8-810c-2ad75606ba4c', 'App\\Notifications\\AdminNotification', 'App\\User', 40, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('4412fd12-84e2-41c6-a471-d55d7f5ddb2a', 'App\\Notifications\\NewUserNotification', 'App\\User', 8, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-06-26 14:07:54', '2021-06-26 14:07:54'),
('4719ecdc-0561-4bc7-a35d-d8a9280de8ce', 'App\\Notifications\\AdminNotification', 'App\\User', 74, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('48538c20-d4cd-4cdf-a396-c9301bdeacfe', 'App\\Notifications\\AdminNotification', 'App\\User', 8, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('48e55bf8-0b75-4c25-8c17-a23a430e438b', 'App\\Notifications\\NewUserNotification', 'App\\User', 104, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-09-21 18:28:54', '2022-09-21 18:28:54'),
('496958fb-577f-459e-8021-789698ce9bd5', 'App\\Notifications\\NewUserNotification', 'App\\User', 58, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-16 14:37:44', '2022-02-16 14:37:44'),
('49b33e63-a529-4840-90a9-3c66591e5562', 'App\\Notifications\\AdminNotification', 'App\\User', 6, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', '2022-05-23 15:44:55', '2021-07-01 06:40:21', '2022-05-23 15:44:55'),
('49f943fb-7630-4987-a7f0-32135c46d52d', 'App\\Notifications\\AdminNotification', 'App\\User', 7, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('49fa9641-d171-4dde-8238-cbbc473e6887', 'App\\Notifications\\AdminNotification', 'App\\User', 33, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('4f926a62-05c9-4c2a-88aa-41ae4c38ea50', 'App\\Notifications\\NewUserNotification', 'App\\User', 7, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-06-23 12:03:19', '2021-06-23 12:03:19'),
('50536ee5-938a-418f-8341-ca4ae4340b05', 'App\\Notifications\\AdminNotification', 'App\\User', 10, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('510f9844-9e3c-4786-be59-21bbcc3ba9f8', 'App\\Notifications\\NewUserNotification', 'App\\User', 27, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-10-11 07:05:41', '2021-10-11 07:05:41'),
('5237bcc1-03b8-465f-8e5a-fc373b89f721', 'App\\Notifications\\AdminNotification', 'App\\User', 36, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('550b979a-3742-470d-9987-d46b3fe2cdf1', 'App\\Notifications\\NewUserNotification', 'App\\User', 16, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-07-30 14:41:40', '2021-07-30 14:41:40'),
('563c010d-e6ab-4629-b7d0-a852a2752e26', 'App\\Notifications\\AdminNotification', 'App\\User', 26, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('573bd227-192b-43aa-8311-5ec639e63755', 'App\\Notifications\\AdminNotification', 'App\\User', 13, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('585d0e4a-c355-444d-8a85-b021ef9aae64', 'App\\Notifications\\NewUserNotification', 'App\\User', 119, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2023-01-27 08:46:49', '2023-01-27 08:46:49'),
('58d3a303-5fc3-4095-a725-83071a83ee66', 'App\\Notifications\\NewUserNotification', 'App\\User', 118, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2023-01-27 07:02:45', '2023-01-27 07:02:45'),
('58ff93b1-7056-4e37-9f06-3b2848228d95', 'App\\Notifications\\NewUserNotification', 'App\\User', 61, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-23 11:19:44', '2022-02-23 11:19:44'),
('5990080a-7a70-4372-8a0d-3cf11c72fe72', 'App\\Notifications\\AdminNotification', 'App\\User', 11, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('5b303a20-7009-4dce-b2b1-e37c48dc4cfb', 'App\\Notifications\\AdminNotification', 'App\\User', 68, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('5b795af3-66f5-46bf-9f5f-f5b13847fba0', 'App\\Notifications\\NewUserNotification', 'App\\User', 67, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-03-07 11:50:46', '2022-03-07 11:50:46'),
('5d1112b8-dfd0-4a2f-83fb-3b4314f54967', 'App\\Notifications\\AdminNotification', 'App\\User', 32, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('5e537518-b4b9-4f09-805d-00231b9b9b7e', 'App\\Notifications\\AdminNotification', 'App\\User', 31, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('5e9da89d-6b95-4567-80e9-cb296b4b8f5c', 'App\\Notifications\\AdminNotification', 'App\\User', 18, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('60de341d-f8dd-47f5-abdd-77d3585d4e9a', 'App\\Notifications\\AdminNotification', 'App\\User', 89, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('615d8599-edf6-4702-bfd7-a67d5a7f61d0', 'App\\Notifications\\NewUserNotification', 'App\\User', 43, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-21 16:31:06', '2021-12-21 16:31:06'),
('62b6f1b7-c8ac-4750-9976-f919a9b53155', 'App\\Notifications\\NewUserNotification', 'App\\User', 51, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', '2022-01-11 13:56:18', '2022-01-11 13:50:52', '2022-01-11 13:56:18'),
('630f215d-f091-4046-ac56-55109be51253', 'App\\Notifications\\AdminNotification', 'App\\User', 48, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('63258566-58bf-40ea-807d-7ab2ff4db08f', 'App\\Notifications\\NewUserNotification', 'App\\User', 22, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-08-28 10:18:47', '2021-08-28 10:18:47'),
('66891e97-366f-4619-a6c9-a4b7ad7fc7e7', 'App\\Notifications\\NewUserNotification', 'App\\User', 73, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-04-02 19:21:07', '2022-04-02 19:21:07'),
('66988c27-5edc-457d-af4e-7d6333bca9f7', 'App\\Notifications\\NewUserNotification', 'App\\User', 54, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-01-31 03:40:30', '2022-01-31 03:40:30'),
('676f53bb-92bd-4ae0-99d3-3b40bebe77d1', 'App\\Notifications\\NewUserNotification', 'App\\User', 49, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-01-03 17:00:40', '2022-01-03 17:00:40'),
('6853eb71-9c50-4d70-a29a-724dd6ae9824', 'App\\Notifications\\AdminNotification', 'App\\User', 9, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('6b368be3-490c-4335-894b-071440ab6248', 'App\\Notifications\\AdminNotification', 'App\\User', 60, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('6c0d69ad-24c4-447c-bdf1-aced5bab322d', 'App\\Notifications\\NewUserNotification', 'App\\User', 110, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-11-07 13:41:37', '2022-11-07 13:41:37'),
('6c918e35-36b4-480b-bc15-29732f1626ba', 'App\\Notifications\\AdminNotification', 'App\\User', 66, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('6cc4fca0-4b9c-49b8-9a1b-8a352e0f1698', 'App\\Notifications\\NewUserNotification', 'App\\User', 20, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-08-18 13:11:10', '2021-08-18 13:11:10'),
('6ffa7437-1e2f-4778-b218-7efc5f1771b5', 'App\\Notifications\\NewUserNotification', 'App\\User', 93, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-15 12:24:59', '2022-08-15 12:24:59'),
('715748b3-426b-4f2f-9d01-2ce111f2c612', 'App\\Notifications\\NewUserNotification', 'App\\User', 35, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-11-16 22:59:00', '2021-11-16 22:59:00'),
('736ac3c2-2ec3-4575-ad12-97e0074c70b3', 'App\\Notifications\\NewUserNotification', 'App\\User', 15, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-07-30 11:52:04', '2021-07-30 11:52:04'),
('783b2e3f-b1bc-4717-b1d6-54c7c4619d90', 'App\\Notifications\\AdminNotification', 'App\\User', 80, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('78e4998c-1d86-43b5-9789-ac1598b7a511', 'App\\Notifications\\NewUserNotification', 'App\\User', 2, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', '2021-06-21 07:38:03', '2021-06-17 05:09:18', '2021-06-21 07:38:03'),
('79a695df-950e-4a49-b1dc-25a59c2332b4', 'App\\Notifications\\AdminNotification', 'App\\User', 5, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('7adddb87-c2da-4baa-a6ad-5638f2e04be6', 'App\\Notifications\\NewUserNotification', 'App\\User', 81, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-09 14:01:36', '2022-05-09 14:01:36'),
('7b1dce55-5a39-4cee-ab75-27efdca0e0c0', 'App\\Notifications\\AdminNotification', 'App\\User', 67, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('7b449abc-f4db-40c8-9484-670202436bd4', 'App\\Notifications\\NewUserNotification', 'App\\User', 114, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-12-18 16:27:50', '2022-12-18 16:27:50'),
('7b90e82b-a0c7-4431-a1e3-96b89ae2b8e0', 'App\\Notifications\\AdminNotification', 'App\\User', 54, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('7bc08021-282f-43cb-8d2b-be6a91c0b169', 'App\\Notifications\\AdminNotification', 'App\\User', 87, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('7c8c7377-3052-4679-b24c-8a431a1ef4f3', 'App\\Notifications\\AdminNotification', 'App\\User', 91, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('7dc434ea-6d65-43bf-ae88-345b55523566', 'App\\Notifications\\AdminNotification', 'App\\User', 56, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('7faa8329-09f3-455e-9f32-d47eb6ded460', 'App\\Notifications\\AdminNotification', 'App\\User', 19, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('80409195-f256-4e9d-9c03-a33fc2bd55f8', 'App\\Notifications\\AdminNotification', 'App\\User', 9, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('872e2726-08cd-4d03-8fd3-de2539624393', 'App\\Notifications\\AdminNotification', 'App\\User', 45, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('87c5c6da-f3e9-4eef-bdd7-0db9e4b8cebe', 'App\\Notifications\\AdminNotification', 'App\\User', 44, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('8935b10e-6d9d-49e0-abcc-cfe0b50d83a3', 'App\\Notifications\\NewUserNotification', 'App\\User', 65, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-24 08:12:22', '2022-02-24 08:12:22'),
('89a80f1a-8f69-4f6c-a46e-70e18d942899', 'App\\Notifications\\NewUserNotification', 'App\\User', 40, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-13 05:32:12', '2021-12-13 05:32:12'),
('8a97455a-4636-4548-bf01-4553965af482', 'App\\Notifications\\NewUserNotification', 'App\\User', 77, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-06 14:57:57', '2022-05-06 14:57:57'),
('8b85d8ef-2c4b-41f2-b151-693fd1d4208b', 'App\\Notifications\\AdminNotification', 'App\\User', 11, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('8b8ddcf5-f40b-431a-ad38-02c7135f7c89', 'App\\Notifications\\NewUserNotification', 'App\\User', 3, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', '2021-08-28 05:49:26', '2021-06-17 05:41:17', '2021-08-28 05:49:26'),
('8cbe1b79-37de-4937-a999-ed897843f511', 'App\\Notifications\\AdminNotification', 'App\\User', 4, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('8e1441d0-2140-47e7-94a5-46fb444155d0', 'App\\Notifications\\AdminNotification', 'App\\User', 35, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('94682181-fae7-48ea-ba47-4e74ed5b3d56', 'App\\Notifications\\NewUserNotification', 'App\\User', 50, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-01-09 18:51:31', '2022-01-09 18:51:31'),
('95b51192-bb95-4cb2-a673-1e315ae6704b', 'App\\Notifications\\AdminNotification', 'App\\User', 86, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('95ee5c15-8489-423c-9401-2f50a27835d0', 'App\\Notifications\\NewUserNotification', 'App\\User', 4, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-06-19 04:06:56', '2021-06-19 04:06:56'),
('9626f2c8-e826-4845-a8ff-bd2ab6da0aef', 'App\\Notifications\\AdminNotification', 'App\\User', 50, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('9663c7c2-f2c5-4528-8d7f-235d33e646db', 'App\\Notifications\\NewUserNotification', 'App\\User', 14, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-07-29 01:51:54', '2021-07-29 01:51:54'),
('96d36cee-7045-4c6e-bed6-6a50824b57e0', 'App\\Notifications\\NewUserNotification', 'App\\User', 102, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-09-05 14:48:28', '2022-09-05 14:48:28'),
('97674854-363f-4132-96cc-70bef9c4a6b6', 'App\\Notifications\\AdminNotification', 'App\\User', 24, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('99585108-8af7-4c59-a027-0b10b809c6d1', 'App\\Notifications\\NewUserNotification', 'App\\User', 99, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-29 12:06:58', '2022-08-29 12:06:58'),
('99a57a06-d34b-4c6a-8007-31ddc45ab662', 'App\\Notifications\\NewUserNotification', 'App\\User', 94, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-29 12:06:48', '2022-08-29 12:06:48'),
('99d5d512-4595-453a-a645-10415355f952', 'App\\Notifications\\AdminNotification', 'App\\User', 22, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('9b48f294-556f-4df8-9f52-afb883ec02e7', 'App\\Notifications\\NewUserNotification', 'App\\User', 6, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', '2023-01-14 05:26:41', '2021-06-23 07:54:36', '2023-01-14 05:26:41'),
('9be3d57c-35f3-4255-a872-48b60c71bd3f', 'App\\Notifications\\AdminNotification', 'App\\User', 3, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('9c3cfd70-6a66-4479-9c9e-de8f9f523394', 'App\\Notifications\\AdminNotification', 'App\\User', 2, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('9ca52913-c577-42d4-a7fc-c2eef17d68cd', 'App\\Notifications\\AdminNotification', 'App\\User', 4, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('9e4759bf-c0f3-4f3a-b5ea-92dccb3b7a6d', 'App\\Notifications\\AdminNotification', 'App\\User', 38, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('a0a7c1ad-f379-47d9-ad8c-24708a59cb34', 'App\\Notifications\\AdminNotification', 'App\\User', 47, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('a1c2a7d4-5ea6-4b59-be02-7e1ac59c457f', 'App\\Notifications\\NewUserNotification', 'App\\User', 26, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-10-05 02:16:26', '2021-10-05 02:16:26'),
('a2ad2cfa-5d1c-47cc-8499-5bed1c3eaf8d', 'App\\Notifications\\NewUserNotification', 'App\\User', 100, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-30 19:09:54', '2022-08-30 19:09:54'),
('a3e0b45a-61f9-4079-9131-963dc12a79bd', 'App\\Notifications\\AdminNotification', 'App\\User', 30, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('a4070efb-0112-4b81-a3b4-e81e9d0add23', 'App\\Notifications\\AdminNotification', 'App\\User', 41, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('a4d15169-b097-4048-a7b0-cc7f5ae2db37', 'App\\Notifications\\NewUserNotification', 'App\\User', 47, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-01-01 08:16:34', '2022-01-01 08:16:34'),
('a512045d-dd60-4785-b4fb-861aa98ae05e', 'App\\Notifications\\AdminNotification', 'App\\User', 15, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('a5b3e86c-55b9-4d81-82b8-6c6a9f73b4f1', 'App\\Notifications\\AdminNotification', 'App\\User', 73, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('a639bc27-b1fa-41e1-9f61-edc210f042ad', 'App\\Notifications\\NewUserNotification', 'App\\User', 53, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-01-23 00:17:38', '2022-01-23 00:17:38'),
('a80566f0-99c1-479b-91e6-4505c934a240', 'App\\Notifications\\AdminNotification', 'App\\User', 75, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('ab57ed8b-e774-4594-b3f2-1cfc4c12bbc4', 'App\\Notifications\\AdminNotification', 'App\\User', 21, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('ac4e5f19-d661-40fd-a64a-201d175b7420', 'App\\Notifications\\NewUserNotification', 'App\\User', 28, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-10-18 22:55:39', '2021-10-18 22:55:39'),
('acbbac64-70cc-4c57-8467-9c0867cfa71f', 'App\\Notifications\\NewUserNotification', 'App\\User', 117, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2023-01-27 06:51:33', '2023-01-27 06:51:33'),
('ad884851-709a-4777-9ede-531327c8741c', 'App\\Notifications\\AdminNotification', 'App\\User', 72, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('af11d3ae-fb47-4e06-ada7-aa248517ad1e', 'App\\Notifications\\NewUserNotification', 'App\\User', 36, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-11-21 22:31:11', '2021-11-21 22:31:11'),
('b075af55-a2af-4ce9-b40c-11dd3782b061', 'App\\Notifications\\AdminNotification', 'App\\User', 3, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', '2022-05-12 11:32:51', '2021-07-01 06:40:21', '2022-05-12 11:32:51'),
('b0767936-78a8-40d7-a760-ed3be686db59', 'App\\Notifications\\NewUserNotification', 'App\\User', 18, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-08-08 11:34:19', '2021-08-08 11:34:19'),
('b08dc4d8-a9f6-409e-9316-c375811c3a29', 'App\\Notifications\\NewUserNotification', 'App\\User', 33, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-11-08 21:52:00', '2021-11-08 21:52:00'),
('b095992b-503c-4b00-9581-1b0f2c0d2953', 'App\\Notifications\\AdminNotification', 'App\\User', 34, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('b102f475-2bd7-4a16-b5ed-6a9f81929176', 'App\\Notifications\\NewUserNotification', 'App\\User', 19, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-08-13 21:15:40', '2021-08-13 21:15:40'),
('b110cca5-8387-4e17-b888-d8a138de11e3', 'App\\Notifications\\NewUserNotification', 'App\\User', 115, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2023-01-04 23:35:04', '2023-01-04 23:35:04'),
('b2348248-7acf-42e0-ad27-b25d76c04a80', 'App\\Notifications\\AdminNotification', 'App\\User', 85, '{\"title\":\"hello\",\"body\":\"hello all\"}', '2022-08-10 17:13:43', '2022-08-10 17:12:21', '2022-08-10 17:13:43'),
('b3865a4b-0925-40bc-a517-75c850060a5a', 'App\\Notifications\\NewUserNotification', 'App\\User', 11, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-06-29 19:30:28', '2021-06-29 19:30:28'),
('b3866852-cb1e-4372-bf8d-d4a8a94eb1c6', 'App\\Notifications\\NewUserNotification', 'App\\User', 63, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-24 03:44:50', '2022-02-24 03:44:50'),
('b5cd3902-939f-44cb-ab02-8fd80980f2f5', 'App\\Notifications\\AdminNotification', 'App\\User', 61, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('b5dc0853-1919-4980-9eb3-3d5bf59d1e4d', 'App\\Notifications\\AdminNotification', 'App\\User', 65, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('b6572fc3-a5c4-4f1c-a89d-597a7d247d45', 'App\\Notifications\\AdminNotification', 'App\\User', 20, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('b69c33a2-4442-4d6a-bac6-b6292704e458', 'App\\Notifications\\NewUserNotification', 'App\\User', 59, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-17 14:39:44', '2022-02-17 14:39:44'),
('b6e86ddd-aaf4-4bd9-9b9f-98df5a6fcfb2', 'App\\Notifications\\NewUserNotification', 'App\\User', 116, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2023-01-24 15:11:33', '2023-01-24 15:11:33'),
('b7113f1f-67c1-4e84-be2a-c581ea4618a2', 'App\\Notifications\\NewUserNotification', 'App\\User', 74, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-04-10 07:58:44', '2022-04-10 07:58:44'),
('b922066e-5061-4040-8656-1aaa1012898e', 'App\\Notifications\\AdminNotification', 'App\\User', 78, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('b9d20c04-83ec-4df8-9ee8-9e674f81b7d0', 'App\\Notifications\\AdminNotification', 'App\\User', 16, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('bc2adf52-8e83-4957-9fb0-c180b6414704', 'App\\Notifications\\AdminNotification', 'App\\User', 55, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('bc943b5d-f9bd-438d-b9b0-277815796be8', 'App\\Notifications\\NewUserNotification', 'App\\User', 98, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-29 12:06:55', '2022-08-29 12:06:55'),
('bd125040-4695-4e28-b355-7d4df73ba624', 'App\\Notifications\\AdminNotification', 'App\\User', 90, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('bd175809-44eb-4007-973a-a0870c3dd2f3', 'App\\Notifications\\NewUserNotification', 'App\\User', 101, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-09-01 09:24:29', '2022-09-01 09:24:29'),
('bd32321b-f42e-48b3-91d0-3814e2ea7f6a', 'App\\Notifications\\NewUserNotification', 'App\\User', 17, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-08-01 03:35:52', '2021-08-01 03:35:52'),
('c050a15f-d9a2-4d3b-b6cb-326844e0a819', 'App\\Notifications\\AdminNotification', 'App\\User', 29, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('c23542da-0203-40dd-ad35-78ceb9ad01bf', 'App\\Notifications\\AdminNotification', 'App\\User', 25, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('c2c29684-bebf-40eb-9571-a5d0fbb7e779', 'App\\Notifications\\NewUserNotification', 'App\\User', 68, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-03-09 13:11:41', '2022-03-09 13:11:41'),
('c3a9f86c-225b-46e9-8a7e-d30067b70d1a', 'App\\Notifications\\AdminNotification', 'App\\User', 2, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', '2021-07-02 08:39:59', '2021-07-01 06:40:21', '2021-07-02 08:39:59'),
('c5d5b59f-21a5-4d68-9873-38c0681bcdcd', 'App\\Notifications\\AdminNotification', 'App\\User', 62, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('c6d5687f-5a6f-4d4a-bdbe-9ca2f859bb25', 'App\\Notifications\\NewUserNotification', 'App\\User', 52, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-01-13 15:30:14', '2022-01-13 15:30:14'),
('c7198365-3d62-480f-98d8-ba5bbc3206a3', 'App\\Notifications\\NewUserNotification', 'App\\User', 39, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-11 05:58:14', '2021-12-11 05:58:14'),
('c9456c71-abc9-428f-9e30-e5c980b3f87b', 'App\\Notifications\\NewUserNotification', 'App\\User', 66, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-26 07:33:55', '2022-02-26 07:33:55'),
('c951b0cb-cb43-47b0-93e0-3e668b33e59b', 'App\\Notifications\\NewUserNotification', 'App\\User', 41, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-17 01:40:40', '2021-12-17 01:40:40'),
('cafee729-1b77-45cc-af10-3af09601e041', 'App\\Notifications\\AdminNotification', 'App\\User', 14, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('cb5e9de1-aa0b-483b-8095-440047174f2c', 'App\\Notifications\\NewUserNotification', 'App\\User', 45, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-12-25 03:13:27', '2021-12-25 03:13:27'),
('cdb18cb5-c070-4590-9cfd-c5b09e5d1ac9', 'App\\Notifications\\AdminNotification', 'App\\User', 1, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('cdd41119-5d13-4f47-af51-67667d8e1fa9', 'App\\Notifications\\AdminNotification', 'App\\User', 1, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('ce4e9d22-42ed-401b-a1ed-e139664c8e6d', 'App\\Notifications\\NewUserNotification', 'App\\User', 97, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-29 12:06:53', '2022-08-29 12:06:53'),
('ceec8c5c-f836-401a-a08a-208cf552245c', 'App\\Notifications\\NewUserNotification', 'App\\User', 83, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-13 22:36:44', '2022-05-13 22:36:44'),
('d08c3ed3-1ee9-4769-b398-4e583270c2b7', 'App\\Notifications\\AdminNotification', 'App\\User', 59, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('d0c66df1-5e45-473b-a269-3105750ad522', 'App\\Notifications\\NewUserNotification', 'App\\User', 56, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-08 10:31:24', '2022-02-08 10:31:24'),
('d12fed87-8c5a-4d58-bf17-e29bdc1b767a', 'App\\Notifications\\AdminNotification', 'App\\User', 17, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('d322368f-3a9b-40a1-958b-9abb177a1c70', 'App\\Notifications\\NewUserNotification', 'App\\User', 10, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-06-27 23:35:00', '2021-06-27 23:35:00'),
('d433eac2-7399-4d0d-ac40-2b1e020dead3', 'App\\Notifications\\NewUserNotification', 'App\\User', 109, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-11-02 05:48:44', '2022-11-02 05:48:44'),
('d4981a48-927b-496a-897b-d04a6edad559', 'App\\Notifications\\NewUserNotification', 'App\\User', 37, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-11-23 03:04:37', '2021-11-23 03:04:37'),
('d547387d-5938-4868-b6a7-642f4f026472', 'App\\Notifications\\NewUserNotification', 'App\\User', 88, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', '2022-06-15 10:52:40', '2022-06-15 10:30:09', '2022-06-15 10:52:40'),
('d5a632bf-d6b9-4ece-ade1-457f1870e8f4', 'App\\Notifications\\NewUserNotification', 'App\\User', 12, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-07-14 20:10:32', '2021-07-14 20:10:32'),
('d6c6d0e2-2cd3-48f8-879b-9a4851080e28', 'App\\Notifications\\AdminNotification', 'App\\User', 46, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('d7521786-4c2e-44f3-b206-9f9e85bc422f', 'App\\Notifications\\NewUserNotification', 'App\\User', 32, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-11-07 09:34:27', '2021-11-07 09:34:27');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('d8411a09-f2fa-4c32-8ce3-48ad19e3d4c3', 'App\\Notifications\\NewUserNotification', 'App\\User', 31, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-11-01 14:26:13', '2021-11-01 14:26:13'),
('dac79428-3f59-4840-896d-11b0a9b0e8ed', 'App\\Notifications\\AdminNotification', 'App\\User', 8, '{\"title\":\"Have a look at our Trending Brands!\",\"body\":\"asdf\"}', NULL, '2021-07-01 06:40:21', '2021-07-01 06:40:21'),
('db32940c-c3f3-4abc-a187-44ae75f5b92d', 'App\\Notifications\\AdminNotification', 'App\\User', 58, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('dd65772a-7bf4-4aea-8bf9-d491dbe9571e', 'App\\Notifications\\NewUserNotification', 'App\\User', 60, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-02-22 12:07:24', '2022-02-22 12:07:24'),
('de0455f4-61b4-4d87-b7cd-f5aaeafc9d6f', 'App\\Notifications\\NewUserNotification', 'App\\User', 111, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-11-11 10:43:03', '2022-11-11 10:43:03'),
('de6402db-0230-4e82-b735-453d56f1a13b', 'App\\Notifications\\NewUserNotification', 'App\\User', 71, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-03-28 04:53:40', '2022-03-28 04:53:40'),
('e0f3d07d-eb98-4464-8568-0cc925a79eaf', 'App\\Notifications\\AdminNotification', 'App\\User', 12, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('e19e5628-fa9d-4ebf-98e7-33e22660dab2', 'App\\Notifications\\NewUserNotification', 'App\\User', 48, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-01-03 14:51:58', '2022-01-03 14:51:58'),
('e267a6af-fb0b-4f87-85b8-a48ae474cb1d', 'App\\Notifications\\NewUserNotification', 'App\\User', 103, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-09-13 05:18:21', '2022-09-13 05:18:21'),
('e32d8f08-4ae4-4f58-a111-a447265a15d1', 'App\\Notifications\\AdminNotification', 'App\\User', 82, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('e5579f59-6f04-4ebe-ad27-e679f577e4b4', 'App\\Notifications\\NewUserNotification', 'App\\User', 112, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-11-24 20:44:44', '2022-11-24 20:44:44'),
('e75fd369-e077-4638-8580-2e4e3d0e467e', 'App\\Notifications\\NewUserNotification', 'App\\User', 107, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-10-18 02:21:30', '2022-10-18 02:21:30'),
('e84fb0e6-c05c-4555-baf2-d578080f029b', 'App\\Notifications\\AdminNotification', 'App\\User', 52, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('ebffd72c-5766-480b-ba44-4d49c329d946', 'App\\Notifications\\AdminNotification', 'App\\User', 42, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('ec4d53a0-183c-4b92-b5da-73ce84088f15', 'App\\Notifications\\NewUserNotification', 'App\\User', 89, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-06-28 13:50:43', '2022-06-28 13:50:43'),
('ed8a3670-11dd-408a-aeb1-71110046876b', 'App\\Notifications\\AdminNotification', 'App\\User', 57, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('ef4fb7e3-5f3b-47b6-b4ba-ed50dbe8c597', 'App\\Notifications\\NewUserNotification', 'App\\User', 92, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-12 00:17:05', '2022-08-12 00:17:05'),
('f00fd549-9549-4120-ad86-abc69bc28958', 'App\\Notifications\\NewUserNotification', 'App\\User', 24, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-09-15 13:03:38', '2021-09-15 13:03:38'),
('f284ed38-1a24-4527-9340-33349acac7fa', 'App\\Notifications\\NewUserNotification', 'App\\User', 79, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-09 13:52:40', '2022-05-09 13:52:40'),
('f3508555-eaf2-40d8-93e0-8f4b631b8e4a', 'App\\Notifications\\AdminNotification', 'App\\User', 76, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('f46774c3-4565-4b4d-991c-726728a1f4d2', 'App\\Notifications\\AdminNotification', 'App\\User', 37, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('f4b38349-0dca-404a-b17c-c8ab1bb31242', 'App\\Notifications\\NewUserNotification', 'App\\User', 34, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-11-11 12:46:32', '2021-11-11 12:46:32'),
('f70d6a82-e299-4b0d-9407-6b2c7bea8663', 'App\\Notifications\\NewUserNotification', 'App\\User', 29, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2021-10-24 16:33:41', '2021-10-24 16:33:41'),
('f7f066c6-626b-4e33-b243-b77aed246f23', 'App\\Notifications\\AdminNotification', 'App\\User', 6, '{\"title\":\"hello\",\"body\":\"hello all\"}', '2023-01-14 05:26:47', '2022-08-10 17:12:21', '2023-01-14 05:26:47'),
('fa25e3ac-4821-4b7f-8160-2fcc1185af58', 'App\\Notifications\\NewUserNotification', 'App\\User', 78, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-05-09 13:52:29', '2022-05-09 13:52:29'),
('fcf6a1c7-c221-4755-a892-b1cccc9684f9', 'App\\Notifications\\NewUserNotification', 'App\\User', 95, '{\"title\":\"Registration completed successfully\",\"body\":\"Thank you for registering to the platform. Please subscribe to any of the plan to use the application\"}', NULL, '2022-08-29 12:06:49', '2022-08-29 12:06:49'),
('ff6f31a7-4e25-43f0-abf3-1efe6ba468f2', 'App\\Notifications\\AdminNotification', 'App\\User', 71, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21'),
('fffda1c0-73a4-468f-9870-09138885ce12', 'App\\Notifications\\AdminNotification', 'App\\User', 63, '{\"title\":\"hello\",\"body\":\"hello all\"}', NULL, '2022-08-10 17:12:21', '2022-08-10 17:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hamidcarmellaw9r5l7qi@gmail.com', '$2y$10$VS0yRLGmGLtFtYluK5MJEubKrXirAF2W7cGhD94GZxbxQyltwIU1.', '2021-09-04 15:20:34'),
('JamesEasterlings75@gmail.com', '$2y$10$hknitgBKq7UBuCMqWORITeNgnUhrE3Vgc6K84QlnYGCNh3bP3GroO', '2021-12-13 05:34:10'),
('akhilaptvm@gmail.com', '$2y$10$MiTIQTo8C05JMZC7eYEnROgoDlH4Dvv/YTSOiVQ7REDUm59gNcQVm', '2022-03-26 05:35:52'),
('akhil@netroxe.com', '$2y$10$Eta4UvqbTpj1NdsIDnFEc.2TCVtRo0SSvqiWQsY62DaWjPDDgNiRy', '2022-03-31 10:57:12'),
('pingrahulraj@gmail.com', '$2y$10$W.rkG1fVvmlez4CRMEdr0eUWt/xkN7/.mIa4wRYATbES8EfUKInB2', '2022-04-02 07:48:31'),
('davisthomas003@gmail.com', '$2y$10$EnRP0GkDyTmlTLnimlPLj.TLuGuFX8TVRW.1HQLFGH//UXvvk0Q3O', '2022-05-09 13:54:05'),
('deckowrwkirkbq@gmail.com', '$2y$10$KcMOPooBBWNVF5xo4nvkFuNCJcgP9mlFNNGs1Mdb.CtjWGR4SgKai', '2022-05-25 10:25:59'),
('shellinao9l6258d6t@outlook.com', '$2y$10$Y/rPVfEVYoIsTVvaKOEmH.ta47AFpzESQK3fS8qEzKHNEpoeOBKPW', '2022-07-14 01:37:51'),
('jerrardmi18uie85m@outlook.com', '$2y$10$LGsvbgTh37D6M6H0BlE4Keq2ce04FKOvGTsmpwXfuwgnBXOuhC18q', '2022-07-30 08:07:29'),
('kerin3i5ozk47e852@outlook.com', '$2y$10$ePGgYcBjSS56xYHf4VSbKeZzwuZn/875ZPWWwMpipn7TrGhtfRuF.', '2022-08-15 12:25:03'),
('angelise8ey4qo619@outlook.com', '$2y$10$zQcx17kzseAYbFfgZWSS2.2ZFQFDc0oMDhJtZz9ht1ViVzK/0at2K', '2022-09-01 09:24:34'),
('aanishaa502a8267r@outlook.com', '$2y$10$j6Am9LGeP0FDpH75PUDgx.fV17OqXaheLyGaSuVBJzSGGd4keuOkq', '2022-09-13 05:18:26'),
('gtivono2e4k1ugf1e1uo@outlook.com', '$2y$10$Zbbz2iY/xQ30wJpZOaj2iusz9fwQl/ygiSaHG4C9AqFCGw64NO/nS', '2022-09-21 18:29:00'),
('fkedrick4y2f4o6v@outlook.com', '$2y$10$fLtN6BWVuCV4uk/NJAchC.s20MbTBPsLPjC6.5Nd8gakHsVv0n0qm', '2022-09-25 17:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `description`, `stripe_plan_id`, `code`, `price`, `interval`, `created_at`, `updated_at`) VALUES
(1, 'Free', '10 surveys\r\n50 questions per survey\r\nCollect 100 responses per survey\r\nCustomize the survey color, text, etc\r\nAnalyze the survey responses\r\nPhone support and 24/7 email support', 'price_1KSJFCSHfP3ZZn05gWMKJLui', 'free', '0.00', 'yearly', '2021-05-25 02:40:11', '2022-02-12 10:54:34'),
(2, 'Plus', '50 surveys\r\n100 questions per survey\r\nCollect 500 responses per survey\r\nCustomize the survey color, text, etc\r\nAnalyze the survey responses\r\n24/7 email support', 'price_1KSJ1pSHfP3ZZn05U1gxFm4A', '2', '500.00', 'monthly', '2021-06-16 15:37:44', '2022-02-12 10:53:31'),
(3, 'Premium', '100 surveys\r\n500 questions per survey\r\nCollect 1000 responses per survey\r\nCustomize the survey color, text, etc\r\nAnalyze the survey responses\r\n24/7 email support', 'price_1KSJCJSHfP3ZZn05oFIKwDcx', '3', '2500.00', 'monthly', '2021-06-16 15:39:37', '2022-02-12 10:53:59'),
(4, 'Test Plan', 'Test Plan', '123', 'Test Plan', '10000.00', 'monthly', '2022-08-10 17:14:33', '2022-08-10 17:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `plan_options`
--

CREATE TABLE `plan_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `feature_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_options`
--

INSERT INTO `plan_options` (`id`, `plan_id`, `feature_code`, `limit`, `created_at`, `updated_at`) VALUES
(19, 2, 'survey_count', 50, '2022-02-12 10:53:31', '2022-02-12 10:53:31'),
(20, 2, 'question_count_per_survey', 100, '2022-02-12 10:53:31', '2022-02-12 10:53:31'),
(21, 2, 'response_count_per_survey', 500, '2022-02-12 10:53:31', '2022-02-12 10:53:31'),
(22, 3, 'survey_count', 100, '2022-02-12 10:53:59', '2022-02-12 10:53:59'),
(23, 3, 'question_count_per_survey', 500, '2022-02-12 10:53:59', '2022-02-12 10:53:59'),
(24, 3, 'response_count_per_survey', 1000, '2022-02-12 10:53:59', '2022-02-12 10:53:59'),
(28, 1, 'survey_count', 20, '2022-05-11 15:47:06', '2022-05-11 15:47:06'),
(29, 1, 'question_count_per_survey', 100, '2022-05-11 15:47:06', '2022-05-11 15:47:06'),
(30, 1, 'response_count_per_survey', 1000, '2022-05-11 15:47:06', '2022-05-11 15:47:06'),
(31, 4, 'survey_count', 10, '2022-08-10 17:14:33', '2022-08-10 17:14:33'),
(32, 4, 'question_count_per_survey', 10000, '2022-08-10 17:14:33', '2022-08-10 17:14:33'),
(33, 4, 'response_count_per_survey', 10000, '2022-08-10 17:14:33', '2022-08-10 17:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_branched` int(11) NOT NULL DEFAULT 0,
  `branched_qs_id` int(11) DEFAULT NULL,
  `brached_qs_order_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `survey_id`, `text`, `type`, `position`, `visibility`, `is_required`, `attributes`, `created_at`, `updated_at`, `image`, `video`, `is_branched`, `branched_qs_id`, `brached_qs_order_no`) VALUES
(1, 5, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2021-05-25 03:10:25', '2021-05-25 03:10:33', NULL, NULL, 0, NULL, NULL),
(2, 5, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2021-05-25 03:10:38', '2021-05-25 03:11:15', NULL, NULL, 0, NULL, NULL),
(3, 5, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2021-05-25 03:11:45', '2021-09-10 03:06:34', NULL, NULL, 0, NULL, NULL),
(4, 5, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2021-05-25 03:12:36', '2021-09-10 03:06:34', NULL, NULL, 0, NULL, NULL),
(5, 5, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2021-05-25 03:12:55', '2021-09-10 03:06:34', NULL, NULL, 0, NULL, NULL),
(6, 6, 'How friendly were the hotel staff members?', 'multiple-choices', 1, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely friendly \",\"Quite friendly \",\"Slightly friendly\",\"Not at all friendly\"]}', '2021-05-25 03:18:01', '2021-09-10 03:06:34', NULL, NULL, 0, NULL, NULL),
(7, 6, 'How polite were the hotel staff members?', 'multiple-choices', 2, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely polite\",\"Quite polite\",\"Slightly polite\",\"Not at all polite\"]}', '2021-05-25 03:19:44', '2021-09-10 03:06:34', NULL, NULL, 0, NULL, NULL),
(8, 6, 'How quick was the check-in process?', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely quick\",\"Quite quick\",\"Slightly quick\",\"Not at all quick\"]}', '2021-05-25 03:20:50', '2021-05-25 03:21:44', NULL, NULL, 0, NULL, NULL),
(9, 6, 'How affordable was your stay at our hotel?', 'multiple-choices', 4, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely affordable\",\"Slightly affordable\",\"Very affordable\",\"Not at all affordable\"]}', '2021-05-25 03:22:12', '2021-05-25 03:23:13', NULL, NULL, 0, NULL, NULL),
(10, 6, 'How likely is it that you would recommend our hotel to a friend or colleague?', 'rating', 5, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-05-25 03:23:30', '2021-05-25 03:23:35', NULL, NULL, 0, NULL, NULL),
(11, 6, 'What is your email address?', 'email', 6, 1, 1, '{\"choices\":[]}', '2021-05-25 03:23:47', '2021-05-25 03:23:53', NULL, NULL, 0, NULL, NULL),
(12, 6, 'Do you have any other comments, questions, or concerns?', 'long-text', 7, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-05-25 03:23:57', '2021-05-25 03:24:03', NULL, NULL, 0, NULL, NULL),
(13, 7, 'How likely are you to recommend this company as a workplace to friends or family?', 'rating', 1, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-05-25 03:25:30', '2021-05-25 03:25:33', NULL, NULL, 0, NULL, NULL),
(14, 7, 'How would you rate general working conditions?', 'rating', 2, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-05-25 03:25:44', '2021-05-25 03:25:47', NULL, NULL, 0, NULL, NULL),
(15, 7, 'To what extent do you feel supported by management, both professionally and personally?', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"I fee very supported\",\"I feel somewhat supported\",\"I don\'t feel especially supported\",\"I don\'t feel supported at all\"]}', '2021-05-25 03:25:56', '2021-05-25 03:26:44', NULL, NULL, 0, NULL, NULL),
(16, 7, 'Do you feel that policies and procedures are well-explained and clear?', 'yes-no', 4, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-05-25 03:26:54', '2021-05-25 03:26:57', NULL, NULL, 0, NULL, NULL),
(17, 7, 'Do you believe this an open and inclusive place of work?', 'yes-no', 5, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-05-25 03:27:08', '2021-05-25 03:27:11', NULL, NULL, 0, NULL, NULL),
(18, 7, 'If you could make this company a better place to work, what would you do differently?', 'long-text', 6, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-05-25 03:27:20', '2021-05-25 03:27:23', NULL, NULL, 0, NULL, NULL),
(19, 8, 'How often do you use this service/product?', 'multiple-choices', 1, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Almost always\",\"Often\",\"Sometimes\",\"Seldom\"]}', '2021-05-25 03:28:47', '2021-05-25 03:29:20', NULL, NULL, 0, NULL, NULL),
(20, 8, 'Does the product/service help you to achieve your goals?', 'yes-no', 2, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-05-25 03:29:22', '2021-05-25 03:29:31', NULL, NULL, 0, NULL, NULL),
(21, 8, 'How would you improve the product/service?', 'long-text', 3, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-05-25 03:29:39', '2021-05-25 03:29:42', NULL, NULL, 0, NULL, NULL),
(22, 8, 'Please rate the product/service in terms of the UI.', 'rating', 4, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-05-25 03:29:50', '2021-05-25 03:30:00', NULL, NULL, 0, NULL, NULL),
(23, 8, 'How old are you?', 'number', 5, 1, 1, '{\"choices\":[]}', '2021-05-25 03:30:14', '2021-05-25 03:30:17', NULL, NULL, 0, NULL, NULL),
(24, 8, 'What is your gender?', 'dropdown', 6, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[\"Male\",\"Female\",\"Transgender\",\" Prefer not to say \"]}', '2021-05-25 03:30:31', '2021-05-25 03:31:13', NULL, NULL, 0, NULL, NULL),
(25, 8, 'Any other comments do you want to share?', 'long-text', 7, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-05-25 03:31:25', '2021-05-25 03:31:34', NULL, NULL, 0, NULL, NULL),
(46, 17, 'Any other comments do you want to share?', 'long-text', 7, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-19 04:09:05', '2021-06-19 04:09:05', NULL, NULL, 0, NULL, NULL),
(47, 17, 'Name', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2021-06-19 04:25:39', '2021-06-19 04:26:10', NULL, NULL, 0, NULL, NULL),
(50, 17, 'Email', 'email', 2, 1, 1, '{\"choices\":[]}', '2021-06-19 04:27:23', '2021-06-19 04:27:58', NULL, NULL, 0, NULL, NULL),
(51, 17, 'Please rate your experience at our cafe in Al Barsha?', 'rating', 4, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-19 04:27:38', '2021-06-19 04:28:36', NULL, NULL, 0, NULL, NULL),
(52, 17, 'Contact Number', 'phone', 3, 1, 1, '{\"choices\":[]}', '2021-06-19 04:29:29', '2021-06-19 04:29:49', NULL, NULL, 0, NULL, NULL),
(53, 18, 'Untitled', 'short-text', 1, 1, 1, '{\"max_chars\":50}', '2021-06-19 04:40:31', '2021-06-19 04:40:31', NULL, NULL, 0, NULL, NULL),
(54, 17, 'Untitled', 'yes-no', 6, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-06-22 05:52:30', '2021-06-22 05:52:30', NULL, NULL, 0, NULL, NULL),
(59, 20, 'Untitled', 'dropdown', 1, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[]}', '2021-06-22 12:25:52', '2021-06-22 12:25:52', NULL, NULL, 0, NULL, NULL),
(60, 20, 'Untitled', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"choices\":[\"\",\"\"]}', '2021-06-22 13:13:43', '2021-06-22 13:13:43', NULL, NULL, 0, NULL, NULL),
(61, 20, 'Untitled', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"choices\":[\"\",\"\"]}', '2021-06-22 13:17:11', '2021-06-22 13:17:11', NULL, NULL, 0, NULL, NULL),
(62, 20, 'Untitled', 'email', 4, 1, 1, NULL, '2021-06-22 13:17:15', '2021-06-22 13:17:15', NULL, NULL, 0, NULL, NULL),
(63, 20, 'Untitled', 'yes-no', 5, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-06-22 13:17:23', '2021-06-22 13:17:23', NULL, NULL, 0, NULL, NULL),
(64, 20, 'Untitled', 'rating', 6, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-22 13:17:36', '2021-06-22 13:17:36', NULL, NULL, 0, NULL, NULL),
(65, 20, 'Untitled', 'phone', 7, 1, 1, NULL, '2021-06-22 13:17:48', '2021-06-22 13:17:48', NULL, NULL, 0, NULL, NULL),
(66, 21, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2021-06-22 13:50:20', '2021-06-22 13:50:20', NULL, NULL, 0, NULL, NULL),
(67, 21, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2021-06-22 13:50:20', '2021-06-22 13:50:20', NULL, NULL, 0, NULL, NULL),
(68, 21, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2021-06-22 13:50:20', '2021-06-22 13:50:20', NULL, NULL, 0, NULL, NULL),
(69, 21, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-22 13:50:20', '2021-06-22 13:50:20', NULL, NULL, 0, NULL, NULL),
(70, 21, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-22 13:50:20', '2021-06-22 13:50:20', NULL, NULL, 0, NULL, NULL),
(71, 22, 'How often do you use this service/product?', 'multiple-choices', 1, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Almost always\",\"Often\",\"Sometimes\",\"Seldom\"]}', '2021-06-22 14:06:11', '2021-06-22 14:06:11', NULL, NULL, 0, NULL, NULL),
(72, 22, 'Does the product/service help you to achieve your goals?', 'yes-no', 2, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-06-22 14:06:11', '2021-06-22 14:06:11', NULL, NULL, 0, NULL, NULL),
(73, 22, 'How would you improve the product/service?', 'long-text', 3, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-22 14:06:11', '2021-06-22 14:06:11', NULL, NULL, 0, NULL, NULL),
(74, 22, 'Please rate the product/service in terms of the UI.', 'rating', 4, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-22 14:06:11', '2021-06-22 14:06:11', NULL, NULL, 0, NULL, NULL),
(75, 22, 'How old are you?', 'number', 5, 1, 1, '{\"choices\":[]}', '2021-06-22 14:06:11', '2021-06-22 14:06:11', NULL, NULL, 0, NULL, NULL),
(76, 22, 'What is your gender?', 'dropdown', 6, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[\"Male\",\"Female\",\"Transgender\",\" Prefer not to say \"]}', '2021-06-22 14:06:11', '2021-06-22 14:06:11', NULL, NULL, 0, NULL, NULL),
(77, 22, 'Any other comments do you want to share?', 'long-text', 7, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-22 14:06:11', '2021-06-22 14:06:11', NULL, NULL, 0, NULL, NULL),
(78, 23, 'How friendly were the hotel staff members?', 'multiple-choices', 1, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely friendly \",\"Quite friendly \",\"Slightly friendly\",\"Not at all friendly\"]}', '2021-06-22 14:11:48', '2021-06-22 14:11:48', NULL, NULL, 0, NULL, NULL),
(79, 23, 'How polite were the hotel staff members?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely polite\",\"Quite polite\",\"Slightly polite\",\"Not at all polite\"]}', '2021-06-22 14:11:48', '2021-06-22 14:11:48', NULL, NULL, 0, NULL, NULL),
(80, 23, 'How quick was the check-in process?', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely quick\",\"Quite quick\",\"Slightly quick\",\"Not at all quick\"]}', '2021-06-22 14:11:48', '2021-06-22 14:11:48', NULL, NULL, 0, NULL, NULL),
(81, 23, 'How affordable was your stay at our hotel?', 'multiple-choices', 4, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely affordable\",\"Slightly affordable\",\"Very affordable\",\"Not at all affordable\"]}', '2021-06-22 14:11:48', '2021-06-22 14:11:48', NULL, NULL, 0, NULL, NULL),
(82, 23, 'How likely is it that you would recommend our hotel to a friend or colleague?', 'rating', 5, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-22 14:11:48', '2021-06-22 14:11:48', NULL, NULL, 0, NULL, NULL),
(83, 23, 'What is your email address?', 'email', 6, 1, 1, '{\"choices\":[]}', '2021-06-22 14:11:48', '2021-06-22 14:11:48', NULL, NULL, 0, NULL, NULL),
(84, 23, 'Do you have any other comments, questions, or concerns?', 'long-text', 7, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-22 14:11:48', '2021-06-22 14:11:48', NULL, NULL, 0, NULL, NULL),
(85, 24, 'How likely are you to recommend this company as a workplace to friends or family?', 'rating', 1, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-22 14:12:52', '2021-06-22 14:12:52', NULL, NULL, 0, NULL, NULL),
(86, 24, 'How would you rate general working conditions?', 'rating', 2, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-22 14:12:52', '2021-06-22 14:12:52', NULL, NULL, 0, NULL, NULL),
(87, 24, 'To what extent do you feel supported by management, both professionally and personally?', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"I fee very supported\",\"I feel somewhat supported\",\"I don\'t feel especially supported\",\"I don\'t feel supported at all\"]}', '2021-06-22 14:12:52', '2021-06-22 14:12:52', NULL, NULL, 0, NULL, NULL),
(88, 24, 'Do you feel that policies and procedures are well-explained and clear?', 'yes-no', 4, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-06-22 14:12:52', '2021-06-22 14:12:52', NULL, NULL, 0, NULL, NULL),
(89, 24, 'Do you believe this an open and inclusive place of work?', 'yes-no', 5, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-06-22 14:12:52', '2021-06-22 14:12:52', NULL, NULL, 0, NULL, NULL),
(90, 24, 'If you could make this company a better place to work, what would you do differently?', 'long-text', 6, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-22 14:12:52', '2021-06-22 14:12:52', NULL, NULL, 0, NULL, NULL),
(91, 25, 'Untitled', 'dropdown', 1, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[]}', '2021-06-23 05:15:40', '2021-06-23 05:15:40', NULL, NULL, 0, NULL, NULL),
(92, 26, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2021-06-23 07:54:56', '2021-06-23 07:54:56', NULL, NULL, 0, NULL, NULL),
(93, 26, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2021-06-23 07:54:56', '2021-06-23 07:54:56', NULL, NULL, 0, NULL, NULL),
(94, 26, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2021-06-23 07:54:56', '2021-06-23 07:54:56', NULL, NULL, 0, NULL, NULL),
(95, 26, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-23 07:54:56', '2021-06-23 07:54:56', NULL, NULL, 0, NULL, NULL),
(96, 26, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-23 07:54:56', '2021-06-23 07:54:56', NULL, NULL, 0, NULL, NULL),
(103, 34, 'Which pet you love  most.!', 'multiple-choices', 1, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"choices\":[\"Dog\",\"Cat\",\"Fish\",\"Bird\"]}', '2021-06-26 15:42:46', '2021-07-30 05:39:03', NULL, NULL, 1, NULL, NULL),
(104, 34, 'Enter Your email ID', 'email', 2, 1, 1, '{\"choices\":[]}', '2021-06-26 15:44:06', '2021-06-26 15:44:18', NULL, NULL, 0, NULL, NULL),
(105, 34, 'Write a short note on your pet', 'short-text', 3, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2021-06-26 15:44:22', '2021-06-26 15:45:05', NULL, NULL, 0, NULL, NULL),
(106, 34, 'Write a funny incident with your pet', 'long-text', 4, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2021-06-26 15:45:13', '2021-06-26 15:45:54', NULL, NULL, 0, NULL, NULL),
(107, 34, 'Will you sell your pet', 'yes-no', 5, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2021-06-26 15:45:59', '2021-06-26 15:46:16', NULL, NULL, 0, NULL, NULL),
(108, 34, 'Rate you experience with your pet', 'rating', 6, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2021-06-26 15:46:20', '2021-06-26 15:46:43', NULL, NULL, 0, NULL, NULL),
(109, 34, 'Enter the birthday of your pet', 'date', 7, 1, 1, '{\"date_format\":\"MMDDYYYY\",\"choices\":[]}', '2021-06-26 15:46:53', '2021-06-26 15:47:10', NULL, NULL, 0, NULL, NULL),
(110, 34, 'Enter your phone number', 'number', 8, 1, 1, '{\"choices\":[]}', '2021-06-26 15:47:38', '2021-06-26 15:47:50', NULL, NULL, 0, NULL, NULL),
(111, 34, 'How many people are there in your family', 'dropdown', 9, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[\"3\",\"4\",\"5\",\"6\"]}', '2021-06-26 15:47:57', '2021-06-26 15:52:39', NULL, NULL, 0, NULL, NULL),
(112, 36, 'Find the Brand name from Logo', 'image', 1, 1, 1, '{\"choices\":[]}', '2021-06-29 19:31:04', '2021-07-01 14:38:37', 'public/images/o1Xljv1H5WYIDA3qVVd3DdZuZiSO9DREKt8ILTdb.png', NULL, 0, NULL, NULL),
(113, 36, 'Do you think this News is Valid ?', 'video', 2, 1, 1, '{\"choices\":[]}', '2021-06-29 19:32:27', '2021-06-29 19:33:17', NULL, NULL, 0, NULL, NULL),
(130, 36, 'Video Question', 'video', 2, 1, 1, '{\"choices\":[]}', '2021-07-01 14:30:09', '2021-07-03 15:15:11', NULL, 'https://www.youtube.com/embed/KRO-eLIgjF4', 0, NULL, NULL),
(131, 36, 'Test Likter', 'likter', 4, 1, 1, '{\"choices\":[1,2,3,4,5,6]}', '2021-07-03 14:17:59', '2021-07-03 14:18:05', NULL, NULL, 0, NULL, NULL),
(135, 36, 'Untitled', 'video', 5, 1, 1, NULL, '2021-07-03 15:15:52', '2021-07-03 15:15:52', NULL, NULL, 0, NULL, NULL),
(239, 59, 'test', 'phone', 1, 1, 1, '{\"choices\":[],\"yes_no\":[]}', '2021-08-18 13:11:46', '21-08-18 13:24:52', NULL, NULL, 1, NULL, NULL),
(240, 59, 'Untitled', 'yes-no', 2, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":[]}', '2021-08-18 13:11:51', '2021-08-18 13:24:52', NULL, NULL, 0, NULL, NULL),
(564, 88, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-02-24 03:45:58', '2022-02-24 03:45:58', NULL, NULL, 0, NULL, NULL),
(565, 88, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-02-24 03:45:58', '2022-02-24 03:45:58', NULL, NULL, 0, NULL, NULL),
(566, 88, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-02-24 03:45:58', '2022-02-24 03:45:58', NULL, NULL, 0, NULL, NULL),
(567, 88, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-02-24 03:45:58', '2022-02-24 03:45:58', NULL, NULL, 0, NULL, NULL),
(568, 88, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-02-24 03:45:58', '2022-02-24 03:45:58', NULL, NULL, 0, NULL, NULL),
(569, 89, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-02-24 06:30:34', '2022-02-24 06:30:34', NULL, NULL, 0, NULL, NULL),
(570, 89, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-02-24 06:30:34', '2022-02-24 06:30:34', NULL, NULL, 0, NULL, NULL),
(571, 89, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-02-24 06:30:34', '2022-02-24 06:30:34', NULL, NULL, 0, NULL, NULL),
(572, 89, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-02-24 06:30:34', '2022-02-24 06:30:34', NULL, NULL, 0, NULL, NULL),
(573, 89, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-02-24 06:30:34', '2022-02-24 06:30:34', NULL, NULL, 0, NULL, NULL),
(574, 90, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-03-09 13:14:45', '2022-03-09 13:14:45', NULL, NULL, 0, NULL, NULL),
(575, 90, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-03-09 13:14:45', '2022-03-09 13:14:45', NULL, NULL, 0, NULL, NULL),
(576, 90, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-03-09 13:14:45', '2022-03-09 13:14:45', NULL, NULL, 0, NULL, NULL),
(577, 90, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-03-09 13:14:45', '2022-03-09 13:14:45', NULL, NULL, 0, NULL, NULL),
(578, 90, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-03-09 13:14:45', '2022-03-09 13:14:45', NULL, NULL, 0, NULL, NULL),
(585, 92, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-05 14:10:23', '2022-05-05 14:10:23', NULL, NULL, 0, NULL, NULL),
(586, 92, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-05-05 14:10:23', '2022-05-05 14:10:23', NULL, NULL, 0, NULL, NULL),
(587, 92, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-05-05 14:10:23', '2022-05-05 14:10:23', NULL, NULL, 0, NULL, NULL),
(588, 92, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-05-05 14:10:23', '2022-05-05 14:10:23', NULL, NULL, 0, NULL, NULL),
(589, 92, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-05-05 14:10:23', '2022-05-05 14:10:23', NULL, NULL, 0, NULL, NULL),
(590, 93, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-05 14:16:25', '2022-05-05 14:16:25', NULL, NULL, 0, NULL, NULL),
(591, 93, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-05-05 14:16:25', '2022-05-05 14:16:25', NULL, NULL, 0, NULL, NULL),
(592, 93, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-05-05 14:16:25', '2022-05-05 14:16:25', NULL, NULL, 0, NULL, NULL),
(593, 93, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-05-05 14:16:25', '2022-05-05 14:16:25', NULL, NULL, 0, NULL, NULL),
(594, 93, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-05-05 14:16:25', '2022-05-05 14:16:25', NULL, NULL, 0, NULL, NULL),
(595, 95, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-09 13:57:45', '2022-05-09 13:57:45', NULL, NULL, 0, NULL, NULL),
(596, 95, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-05-09 13:57:45', '2022-05-09 13:57:45', NULL, NULL, 0, NULL, NULL),
(597, 95, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-05-09 13:57:45', '2022-05-09 13:57:45', NULL, NULL, 0, NULL, NULL),
(598, 95, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-05-09 13:57:45', '2022-05-09 13:57:45', NULL, NULL, 0, NULL, NULL),
(599, 95, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-05-09 13:57:45', '2022-05-09 13:57:45', NULL, NULL, 0, NULL, NULL),
(632, 113, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-11 15:54:48', '2022-05-11 15:54:48', NULL, NULL, 0, NULL, NULL),
(633, 113, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-05-11 15:54:48', '2022-05-11 15:54:48', NULL, NULL, 0, NULL, NULL),
(634, 113, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-05-11 15:54:48', '2022-05-11 15:54:48', NULL, NULL, 0, NULL, NULL),
(635, 113, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-05-11 15:54:48', '2022-05-11 15:54:48', NULL, NULL, 0, NULL, NULL),
(636, 113, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-05-11 15:54:48', '2022-05-11 15:54:48', NULL, NULL, 0, NULL, NULL),
(689, 146, 'Untitled', 'number', 1, 1, 1, NULL, '2022-05-14 17:39:10', '2022-05-14 17:39:10', NULL, NULL, 0, NULL, NULL),
(690, 148, 'Uewqrewqntitled', 'date', 1, 1, 1, '{\"date_format\":\"MMDDYYYY\",\"choices\":[]}', '2022-05-14 17:46:16', '2022-05-14 17:46:43', NULL, NULL, 0, NULL, NULL),
(691, 148, 'Untitlqwerqwered', 'number', 2, 1, 1, '{\"choices\":[]}', '2022-05-14 17:46:46', '2022-05-14 17:46:51', NULL, NULL, 0, NULL, NULL),
(692, 148, 'Untitled', 'yes-no', 3, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"\",\"2\":\"\"}}', '2022-05-14 17:46:53', '2022-05-14 17:47:00', NULL, NULL, 0, NULL, NULL),
(733, 163, 'Untitled', 'static-text', 1, 1, 1, NULL, '2022-05-16 11:01:43', '2022-05-16 11:01:43', NULL, NULL, 0, NULL, NULL),
(734, 163, 'Untitled', 'phone', 2, 1, 1, NULL, '2022-05-16 11:01:45', '2022-05-16 11:01:45', NULL, NULL, 0, NULL, NULL),
(739, 166, 'Enter e-Mail ID', 'email', 1, 1, 1, NULL, '2022-05-17 09:00:46', '2022-05-17 09:00:46', NULL, NULL, 0, NULL, NULL),
(740, 166, 'Name', 'short-text', 2, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-17 09:02:53', '2022-05-17 09:02:58', NULL, NULL, 0, NULL, NULL),
(741, 166, 'Email Address', 'email', 3, 1, 1, '{\"choices\":[]}', '2022-05-17 09:03:02', '2022-05-17 09:03:30', NULL, NULL, 0, NULL, NULL),
(742, 166, 'Contact Number', 'phone', 4, 1, 1, '{\"choices\":[]}', '2022-05-17 09:03:09', '2022-05-17 09:03:20', NULL, NULL, 0, NULL, NULL),
(743, 166, 'Please enter your nationality', 'nationality', 5, 1, 1, '{\"choices\":[\"Afghan\",\"Albanian\",\"Algerian\",\"American\",\"Andorran\",\"Angolan\",\"Antiguans\",\"Argentinean\",\"Armenian\",\"Australian\",\"Austrian\",\"Azerbaijani\",\"Bahamian\",\"Bahraini\",\"Bangladeshi\",\"Barbadian\",\"Barbudans\",\"Batswana\",\"Belarusian\",\"Belgian\",\"Belizean\",\"Beninese\",\"Bhutanese\",\"Bolivian\",\"Bosnian\",\"Brazilian\",\"British\",\"Bruneian\",\"Bulgarian\",\"Burkinabe\",\"Burmese\",\"Burundian\",\"Cambodian\",\"Cameroonian\",\"Canadian\",\"Cape Verdean\",\"Central African\",\"Chadian\",\"Chilean\",\"Chinese\",\"Colombian\",\"Comoran\",\"Congolese\",\"Costa Rican\",\"Croatian\",\"Cuban\",\"Cypriot\",\"Czech\",\"Danish\",\"Djibouti\",\"Dominican\",\"Dutch\",\"East Timorese\",\"Ecuadorean\",\"Egyptian\",\"Emirian\",\"Equatorial Guinean\",\"Eritrean\",\"Estonian\",\"Ethiopian\",\"Fijian\",\"Filipino\",\"Finnish\",\"French\",\"Gabonese\",\"Gambian\",\"Georgian\",\"German\",\"Ghanaian\",\"Greek\",\"Grenadian\",\"Guatemalan\",\"Guinea-Bissauan\",\"Guinean\",\"Guyanese\",\"Haitian\",\"Herzegovinian\",\"Honduran\",\"Hungarian\",\"I-Kiribati\",\"Icelander\",\"Indian\",\"Indonesian\",\"Iranian\",\"Iraqi\",\"Irish\",\"Israeli\",\"Italian\",\"Ivorian\",\"Jamaican\",\"Japanese\",\"Jordanian\",\"Kazakhstani\",\"Kenyan\",\"Kittian and Nevisian\",\"Kuwaiti\",\"Kyrgyz\",\"Laotian\",\"Latvian\",\"Lebanese\",\"Liberian\",\"Libyan\",\"Liechtensteiner\",\"Lithuanian\",\"Luxembourger\",\"Macedonian\",\"Malagasy\",\"Malawian\",\"Malaysian\",\"Maldivan\",\"Malian\",\"Maltese\",\"Marshallese\",\"Mauritanian\",\"Mauritian\",\"Mexican\",\"Micronesian\",\"Moldovan\",\"Monacan\",\"Mongolian\",\"Moroccan\",\"Mosotho\",\"Motswana\",\"Mozambican\",\"Namibian\",\"Nauruan\",\"Nepalese\",\"New Zealander\",\"Nicaraguan\",\"Nigerian\",\"Nigerien\",\"North Korean\",\"Northern Irish\",\"Norwegian\",\"Omani\",\"Pakistani\",\"Palauan\",\"Panamanian\",\"Papua New Guinean\",\"Paraguayan\",\"Peruvian\",\"Polish\",\"Portuguese\",\"Qatari\",\"Romanian\",\"Russian\",\"Rwandan\",\"Saint Lucian\",\"Salvadoran\",\"Samoan\",\"San Marinese\",\"Sao Tomean\",\"Saudi\",\"Scottish\",\"Senegalese\",\"Serbian\",\"Seychellois\",\"Sierra Leonean\",\"Singaporean\",\"Slovakian\",\"Slovenian\",\"Solomon Islander\",\"Somali\",\"South African\",\"South Korean\",\"Spanish\",\"Sri Lankan\",\"Sudanese\",\"Surinamer\",\"Swazi\",\"Swedish\",\"Swiss\",\"Syrian\",\"Taiwanese\",\"Tajik\",\"Tanzanian\",\"Thai\",\"Togolese\",\"Tongan\",\"Trinidadian\\/Tobagonian\",\"Tunisian\",\"Turkish\",\"Tuvaluan\",\"Ugandan\",\"Ukrainian\",\"Uruguayan\",\"Uzbekistani\",\"Venezuelan\",\"Vietnamese\",\"Welsh\",\"Yemenite\",\"Zambian\",\"Zimbabwean\"]}', '2022-05-17 09:03:56', '2022-05-17 09:04:42', NULL, NULL, 0, NULL, NULL),
(744, 166, 'Suggestions (for us to improve)', 'long-text', 6, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2022-05-17 09:04:49', '2022-05-17 10:06:29', NULL, NULL, 0, NULL, NULL),
(751, 171, 'Enter e-Mail ID', 'email', 1, 1, 1, NULL, '2022-05-17 11:28:03', '2022-05-17 11:28:03', NULL, NULL, 0, NULL, NULL),
(752, 171, 'Untitledasfasdf', 'phone', 2, 1, 0, '{\"choices\":[]}', '2022-05-17 11:33:16', '2022-05-17 11:34:26', NULL, NULL, 0, NULL, NULL),
(753, 171, 'asdfas', 'long-text', 3, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2022-05-17 11:33:17', '2022-05-17 11:34:29', NULL, NULL, 0, NULL, NULL),
(754, 171, 'asdf', 'likter', 4, 1, 1, '{\"choices\":[1,2,3,4,5,6]}', '2022-05-17 11:33:20', '2022-05-17 11:34:32', NULL, NULL, 0, NULL, NULL),
(781, 186, 'Contact Number', 'phone', 1, 1, 1, '{\"choices\":[]}', '2022-05-23 15:38:37', '2022-05-23 15:38:46', NULL, NULL, 0, NULL, NULL),
(782, 186, 'Name', 'short-text', 2, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-23 15:38:50', '2022-05-23 15:38:55', NULL, NULL, 0, NULL, NULL),
(783, 186, 'Email address', 'email', 3, 1, 1, '{\"choices\":[]}', '2022-05-23 15:38:58', '2022-05-23 15:39:08', NULL, NULL, 0, NULL, NULL),
(785, 187, 'Name', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-23 15:45:07', '2022-05-23 15:45:12', NULL, NULL, 0, NULL, NULL),
(786, 187, 'Email', 'email', 2, 1, 1, '{\"choices\":[]}', '2022-05-23 15:45:19', '2022-05-23 15:45:31', NULL, NULL, 0, NULL, NULL),
(787, 187, 'Contact Number', 'short-text', 3, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-23 15:45:37', '2022-05-23 15:45:48', NULL, NULL, 0, NULL, NULL),
(788, 187, 'Please enter your nationality', 'nationality', 4, 1, 1, '{\"choices\":[\"Afghan\",\"Albanian\",\"Algerian\",\"American\",\"Andorran\",\"Angolan\",\"Antiguans\",\"Argentinean\",\"Armenian\",\"Australian\",\"Austrian\",\"Azerbaijani\",\"Bahamian\",\"Bahraini\",\"Bangladeshi\",\"Barbadian\",\"Barbudans\",\"Batswana\",\"Belarusian\",\"Belgian\",\"Belizean\",\"Beninese\",\"Bhutanese\",\"Bolivian\",\"Bosnian\",\"Brazilian\",\"British\",\"Bruneian\",\"Bulgarian\",\"Burkinabe\",\"Burmese\",\"Burundian\",\"Cambodian\",\"Cameroonian\",\"Canadian\",\"Cape Verdean\",\"Central African\",\"Chadian\",\"Chilean\",\"Chinese\",\"Colombian\",\"Comoran\",\"Congolese\",\"Costa Rican\",\"Croatian\",\"Cuban\",\"Cypriot\",\"Czech\",\"Danish\",\"Djibouti\",\"Dominican\",\"Dutch\",\"East Timorese\",\"Ecuadorean\",\"Egyptian\",\"Emirian\",\"Equatorial Guinean\",\"Eritrean\",\"Estonian\",\"Ethiopian\",\"Fijian\",\"Filipino\",\"Finnish\",\"French\",\"Gabonese\",\"Gambian\",\"Georgian\",\"German\",\"Ghanaian\",\"Greek\",\"Grenadian\",\"Guatemalan\",\"Guinea-Bissauan\",\"Guinean\",\"Guyanese\",\"Haitian\",\"Herzegovinian\",\"Honduran\",\"Hungarian\",\"I-Kiribati\",\"Icelander\",\"Indian\",\"Indonesian\",\"Iranian\",\"Iraqi\",\"Irish\",\"Israeli\",\"Italian\",\"Ivorian\",\"Jamaican\",\"Japanese\",\"Jordanian\",\"Kazakhstani\",\"Kenyan\",\"Kittian and Nevisian\",\"Kuwaiti\",\"Kyrgyz\",\"Laotian\",\"Latvian\",\"Lebanese\",\"Liberian\",\"Libyan\",\"Liechtensteiner\",\"Lithuanian\",\"Luxembourger\",\"Macedonian\",\"Malagasy\",\"Malawian\",\"Malaysian\",\"Maldivan\",\"Malian\",\"Maltese\",\"Marshallese\",\"Mauritanian\",\"Mauritian\",\"Mexican\",\"Micronesian\",\"Moldovan\",\"Monacan\",\"Mongolian\",\"Moroccan\",\"Mosotho\",\"Motswana\",\"Mozambican\",\"Namibian\",\"Nauruan\",\"Nepalese\",\"New Zealander\",\"Nicaraguan\",\"Nigerian\",\"Nigerien\",\"North Korean\",\"Northern Irish\",\"Norwegian\",\"Omani\",\"Pakistani\",\"Palauan\",\"Panamanian\",\"Papua New Guinean\",\"Paraguayan\",\"Peruvian\",\"Polish\",\"Portuguese\",\"Qatari\",\"Romanian\",\"Russian\",\"Rwandan\",\"Saint Lucian\",\"Salvadoran\",\"Samoan\",\"San Marinese\",\"Sao Tomean\",\"Saudi\",\"Scottish\",\"Senegalese\",\"Serbian\",\"Seychellois\",\"Sierra Leonean\",\"Singaporean\",\"Slovakian\",\"Slovenian\",\"Solomon Islander\",\"Somali\",\"South African\",\"South Korean\",\"Spanish\",\"Sri Lankan\",\"Sudanese\",\"Surinamer\",\"Swazi\",\"Swedish\",\"Swiss\",\"Syrian\",\"Taiwanese\",\"Tajik\",\"Tanzanian\",\"Thai\",\"Togolese\",\"Tongan\",\"Trinidadian\\/Tobagonian\",\"Tunisian\",\"Turkish\",\"Tuvaluan\",\"Ugandan\",\"Ukrainian\",\"Uruguayan\",\"Uzbekistani\",\"Venezuelan\",\"Vietnamese\",\"Welsh\",\"Yemenite\",\"Zambian\",\"Zimbabwean\"]}', '2022-05-23 15:45:55', '2022-05-23 15:46:06', NULL, NULL, 0, NULL, NULL),
(789, 187, 'Any suggestions for us to improve?', 'long-text', 5, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2022-05-23 15:46:10', '2022-05-23 15:46:38', NULL, NULL, 0, NULL, NULL),
(790, 189, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-23 15:58:02', '2022-05-23 15:58:02', NULL, NULL, 0, NULL, NULL),
(791, 189, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-05-23 15:58:02', '2022-05-23 15:58:02', NULL, NULL, 0, NULL, NULL),
(792, 189, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-05-23 15:58:02', '2022-05-23 15:58:02', NULL, NULL, 0, NULL, NULL),
(793, 189, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-05-23 15:58:02', '2022-05-23 15:58:02', NULL, NULL, 0, NULL, NULL),
(794, 189, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-05-23 15:58:02', '2022-05-23 15:58:02', NULL, NULL, 0, NULL, NULL),
(795, 189, 'upload here', 'file-upload', 6, 1, 1, '{\"choices\":[]}', '2022-05-23 16:07:22', '2022-05-23 16:08:26', NULL, NULL, 0, NULL, NULL),
(796, 187, 'Please rate your overall experience?', 'rating', 6, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2022-05-23 16:11:15', '2022-05-23 16:20:11', NULL, NULL, 0, NULL, NULL),
(798, 191, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-05-26 11:23:43', '2022-05-26 11:23:43', NULL, NULL, 0, NULL, NULL),
(799, 191, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-05-26 11:23:43', '2022-05-26 11:23:43', NULL, NULL, 0, NULL, NULL),
(800, 191, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-05-26 11:23:43', '2022-05-26 11:23:43', NULL, NULL, 0, NULL, NULL),
(801, 191, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-05-26 11:23:43', '2022-05-26 11:23:43', NULL, NULL, 0, NULL, NULL),
(802, 191, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-05-26 11:23:43', '2022-05-26 11:23:43', NULL, NULL, 0, NULL, NULL),
(805, 192, 'Your birth date', 'date', 2, 1, 1, '{\"date_format\":\"MMDDYYYY\",\"choices\":[]}', '2022-06-01 05:12:25', '2022-06-01 05:12:44', NULL, NULL, 0, NULL, NULL),
(807, 192, 'On a scale of one to five, how much would rate your boredom ?', 'rating', 2, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2022-06-01 06:18:20', '2022-06-01 06:20:41', NULL, NULL, 0, NULL, NULL),
(808, 192, 'Yes No', 'yes-no', 3, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"\",\"2\":\"\"}}', '2022-06-01 08:42:13', '2022-06-01 08:42:20', NULL, NULL, 0, NULL, NULL),
(809, 192, 'Short Text', 'short-text', 4, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-06-01 08:42:24', '2022-06-01 08:42:31', NULL, NULL, 0, NULL, NULL),
(810, 192, 'Email', 'email', 5, 1, 1, '{\"choices\":[]}', '2022-06-01 08:42:35', '2022-06-01 08:42:41', NULL, NULL, 0, NULL, NULL),
(812, 197, 'How friendly were the hotel staff members?', 'multiple-choices', 1, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely friendly \",\"Quite friendly \",\"Slightly friendly\",\"Not at all friendly\"]}', '2022-06-01 13:56:47', '2022-06-01 13:56:47', NULL, NULL, 0, NULL, NULL),
(813, 197, 'How polite were the hotel staff members?', 'multiple-choices', 2, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely polite\",\"Quite polite\",\"Slightly polite\",\"Not at all polite\"]}', '2022-06-01 13:56:47', '2022-06-01 13:56:47', NULL, NULL, 0, NULL, NULL),
(814, 197, 'How quick was the check-in process?', 'multiple-choices', 3, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely quick\",\"Quite quick\",\"Slightly quick\",\"Not at all quick\"]}', '2022-06-01 13:56:47', '2022-06-01 13:56:47', NULL, NULL, 0, NULL, NULL),
(815, 197, 'How affordable was your stay at our hotel?', 'multiple-choices', 4, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Extremely affordable\",\"Slightly affordable\",\"Very affordable\",\"Not at all affordable\"]}', '2022-06-01 13:56:47', '2022-06-01 13:56:47', NULL, NULL, 0, NULL, NULL),
(816, 197, 'How likely is it that you would recommend our hotel to a friend or colleague?', 'rating', 5, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2022-06-01 13:56:47', '2022-06-01 13:56:47', NULL, NULL, 0, NULL, NULL),
(817, 197, 'What is your email address?', 'email', 6, 1, 1, '{\"choices\":[]}', '2022-06-01 13:56:47', '2022-06-01 13:56:47', NULL, NULL, 0, NULL, NULL),
(818, 197, 'Do you have any other comments, questions, or concerns?', 'long-text', 7, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2022-06-01 13:56:47', '2022-06-01 13:56:47', NULL, NULL, 0, NULL, NULL),
(836, 206, 'Question 1', 'file-upload', 1, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-06-15 05:22:00', '2022-06-15 05:22:18', NULL, NULL, 0, NULL, NULL),
(837, 206, 'Question 2', 'date', 2, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":\"MMDDYYYY\",\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-06-15 05:22:20', '2022-06-15 05:22:24', NULL, NULL, 0, NULL, NULL),
(852, 92, 'Questfdgsdion', 'multiple-choices', 6, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"\",\"\"],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-06-16 04:25:49', '2022-06-16 04:25:58', NULL, NULL, 0, NULL, NULL),
(856, 218, 'Phone number', 'phone', 1, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-06-18 12:08:02', '2022-06-18 12:08:09', NULL, NULL, 0, NULL, NULL),
(858, 218, 'How are you?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"Good\",\"Bad\"],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-06-18 12:08:17', '2022-06-18 12:08:34', NULL, NULL, 0, NULL, NULL),
(859, 219, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2022-06-22 15:34:29', '2022-06-22 15:34:29', NULL, NULL, 0, NULL, NULL),
(860, 219, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2022-06-22 15:34:29', '2022-06-22 15:34:29', NULL, NULL, 0, NULL, NULL),
(861, 219, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2022-06-22 15:34:29', '2022-06-22 15:34:29', NULL, NULL, 0, NULL, NULL),
(862, 219, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2022-06-22 15:34:29', '2022-06-22 15:34:29', NULL, NULL, 0, NULL, NULL),
(863, 219, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2022-06-22 15:34:29', '2022-06-22 15:34:29', NULL, NULL, 0, NULL, NULL),
(870, 234, 'Question', 'nationality', 1, 1, 1, '{\"choices\":[\"Afghan\",\"Albanian\",\"Algerian\",\"American\",\"Andorran\",\"Angolan\",\"Antiguans\",\"Argentinean\",\"Armenian\",\"Australian\",\"Austrian\",\"Azerbaijani\",\"Bahamian\",\"Bahraini\",\"Bangladeshi\",\"Barbadian\",\"Barbudans\",\"Batswana\",\"Belarusian\",\"Belgian\",\"Belizean\",\"Beninese\",\"Bhutanese\",\"Bolivian\",\"Bosnian\",\"Brazilian\",\"British\",\"Bruneian\",\"Bulgarian\",\"Burkinabe\",\"Burmese\",\"Burundian\",\"Cambodian\",\"Cameroonian\",\"Canadian\",\"Cape Verdean\",\"Central African\",\"Chadian\",\"Chilean\",\"Chinese\",\"Colombian\",\"Comoran\",\"Congolese\",\"Costa Rican\",\"Croatian\",\"Cuban\",\"Cypriot\",\"Czech\",\"Danish\",\"Djibouti\",\"Dominican\",\"Dutch\",\"East Timorese\",\"Ecuadorean\",\"Egyptian\",\"Emirian\",\"Equatorial Guinean\",\"Eritrean\",\"Estonian\",\"Ethiopian\",\"Fijian\",\"Filipino\",\"Finnish\",\"French\",\"Gabonese\",\"Gambian\",\"Georgian\",\"German\",\"Ghanaian\",\"Greek\",\"Grenadian\",\"Guatemalan\",\"Guinea-Bissauan\",\"Guinean\",\"Guyanese\",\"Haitian\",\"Herzegovinian\",\"Honduran\",\"Hungarian\",\"I-Kiribati\",\"Icelander\",\"Indian\",\"Indonesian\",\"Iranian\",\"Iraqi\",\"Irish\",\"Israeli\",\"Italian\",\"Ivorian\",\"Jamaican\",\"Japanese\",\"Jordanian\",\"Kazakhstani\",\"Kenyan\",\"Kittian and Nevisian\",\"Kuwaiti\",\"Kyrgyz\",\"Laotian\",\"Latvian\",\"Lebanese\",\"Liberian\",\"Libyan\",\"Liechtensteiner\",\"Lithuanian\",\"Luxembourger\",\"Macedonian\",\"Malagasy\",\"Malawian\",\"Malaysian\",\"Maldivan\",\"Malian\",\"Maltese\",\"Marshallese\",\"Mauritanian\",\"Mauritian\",\"Mexican\",\"Micronesian\",\"Moldovan\",\"Monacan\",\"Mongolian\",\"Moroccan\",\"Mosotho\",\"Motswana\",\"Mozambican\",\"Namibian\",\"Nauruan\",\"Nepalese\",\"New Zealander\",\"Nicaraguan\",\"Nigerian\",\"Nigerien\",\"North Korean\",\"Northern Irish\",\"Norwegian\",\"Omani\",\"Pakistani\",\"Palauan\",\"Panamanian\",\"Papua New Guinean\",\"Paraguayan\",\"Peruvian\",\"Polish\",\"Portuguese\",\"Qatari\",\"Romanian\",\"Russian\",\"Rwandan\",\"Saint Lucian\",\"Salvadoran\",\"Samoan\",\"San Marinese\",\"Sao Tomean\",\"Saudi\",\"Scottish\",\"Senegalese\",\"Serbian\",\"Seychellois\",\"Sierra Leonean\",\"Singaporean\",\"Slovakian\",\"Slovenian\",\"Solomon Islander\",\"Somali\",\"South African\",\"South Korean\",\"Spanish\",\"Sri Lankan\",\"Sudanese\",\"Surinamer\",\"Swazi\",\"Swedish\",\"Swiss\",\"Syrian\",\"Taiwanese\",\"Tajik\",\"Tanzanian\",\"Thai\",\"Togolese\",\"Tongan\",\"Trinidadian\\/Tobagonian\",\"Tunisian\",\"Turkish\",\"Tuvaluan\",\"Ugandan\",\"Ukrainian\",\"Uruguayan\",\"Uzbekistani\",\"Venezuelan\",\"Vietnamese\",\"Welsh\",\"Yemenite\",\"Zambian\",\"Zimbabwean\"]}', '2022-08-31 06:18:17', '2022-08-31 06:18:17', NULL, NULL, 0, NULL, NULL),
(875, 237, 'Question', 'likter', 1, 1, 1, '{\"choices\":[1,2,3,4,5,6]}', '2022-09-05 12:24:01', '2022-09-05 12:24:01', NULL, NULL, 0, NULL, NULL),
(876, 239, 'Question 1', 'dropdown', 1, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":false,\"choices\":[\"option 1\",\"option 2\"],\"yes_no\":[\"\",\"\"],\"is_irrelevant\":[\"\",\"\"]}', '2022-10-05 11:12:50', '2022-10-05 11:13:12', NULL, NULL, 0, NULL, NULL),
(877, 240, 'whats your name?', 'multiple-choices', 1, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"vishnu\",\"Vishnu\"],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-05 11:17:05', '22-10-10 06:14:16', NULL, NULL, 1, NULL, NULL),
(882, 241, 'rate this service', 'rating', 4, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":\"DDMMYYYY\",\"alphabetical_order\":\"0\",\"choices\":[1,2,3,4,5],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 07:11:13', '2022-10-06 08:06:00', 'public/images/8oQlbwMO3SNk3WN4CgCvDzKxuGDzhRy1yFzQcv30.jpg', NULL, 0, NULL, NULL),
(883, 241, 'Likert Scale', 'likter', 5, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[1,2,3,4,5,6],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 07:11:21', '2022-10-06 08:04:24', NULL, NULL, 0, NULL, NULL),
(885, 241, 'static text', 'static-text', 7, 1, 0, '{\"choice_selection_count\":null,\"randomize_choice\":\"0\",\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":\"0\",\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 07:11:31', '2022-10-06 08:13:58', NULL, NULL, 1, NULL, NULL),
(886, 241, 'what is this image?', 'image', 8, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 07:11:41', '2022-10-06 08:05:23', 'public/images/ycD06yRGJp46GOMKnd0Xba8V1tQ9wajBrV3tRhFV.jpg', NULL, 0, NULL, NULL),
(889, 241, 'Multiple Choice', 'multiple-choices', 5, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"a\",\"b\",\"c\"],\"yes_no\":[\"\"],\"is_irrelevant\":[\"\"]}', '2022-10-06 08:05:27', '2022-10-06 08:05:40', 'public/images/klut4piSSnYIhGlBpCbw6g1SBPDoi5WOcJYxXv9F.jpg', NULL, 0, NULL, NULL),
(890, 241, 'Phone', 'phone', 6, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 08:06:03', '2022-10-06 08:06:07', 'public/images/Mz4QrvBvLTlv0vdn03yHieICNu76rIMUDw1uaEhd.jpg', NULL, 0, NULL, NULL),
(891, 241, 'Yes or no', 'yes-no', 7, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"885\",\"2\":\"\"},\"is_irrelevant\":{\"1\":\"\",\"2\":\"\"}}', '2022-10-06 08:06:13', '2022-10-06 08:06:40', 'public/images/IjPiccNywjvlZDN0aM9EQXQ4DQfBZZMTGPVlolvf.jpg', NULL, 0, NULL, NULL),
(892, 241, 'date', 'date', 8, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":\"MMDDYYYY\",\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 08:06:44', '2022-10-06 08:06:50', 'public/images/9ZMLIMmn2YhJMhrfaJVJowz1otQHAN5cMmn4Q50v.jpg', NULL, 0, NULL, NULL),
(893, 241, 'Number', 'number', 9, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 08:06:54', '2022-10-06 08:07:01', 'public/images/Vusvdj7obNnIXOVYFyEfD6B608sHsakEhy56DhV8.jpg', NULL, 0, NULL, NULL);
INSERT INTO `questions` (`id`, `survey_id`, `text`, `type`, `position`, `visibility`, `is_required`, `attributes`, `created_at`, `updated_at`, `image`, `video`, `is_branched`, `branched_qs_id`, `brached_qs_order_no`) VALUES
(894, 241, 'video?', 'video', 10, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 08:07:05', '2022-10-06 08:07:59', 'public/images/FLX5Yz47PMOZwJIpaX2kA4qv7LzkellYDoU49EB3.jpg', 'https://www.youtube.com/embed/Y2ptUZb-608', 0, NULL, NULL),
(895, 241, 'nationality?', 'nationality', 11, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"Afghan\",\"Albanian\",\"Algerian\",\"American\",\"Andorran\",\"Angolan\",\"Antiguans\",\"Argentinean\",\"Armenian\",\"Australian\",\"Austrian\",\"Azerbaijani\",\"Bahamian\",\"Bahraini\",\"Bangladeshi\",\"Barbadian\",\"Barbudans\",\"Batswana\",\"Belarusian\",\"Belgian\",\"Belizean\",\"Beninese\",\"Bhutanese\",\"Bolivian\",\"Bosnian\",\"Brazilian\",\"British\",\"Bruneian\",\"Bulgarian\",\"Burkinabe\",\"Burmese\",\"Burundian\",\"Cambodian\",\"Cameroonian\",\"Canadian\",\"Cape Verdean\",\"Central African\",\"Chadian\",\"Chilean\",\"Chinese\",\"Colombian\",\"Comoran\",\"Congolese\",\"Costa Rican\",\"Croatian\",\"Cuban\",\"Cypriot\",\"Czech\",\"Danish\",\"Djibouti\",\"Dominican\",\"Dutch\",\"East Timorese\",\"Ecuadorean\",\"Egyptian\",\"Emirian\",\"Equatorial Guinean\",\"Eritrean\",\"Estonian\",\"Ethiopian\",\"Fijian\",\"Filipino\",\"Finnish\",\"French\",\"Gabonese\",\"Gambian\",\"Georgian\",\"German\",\"Ghanaian\",\"Greek\",\"Grenadian\",\"Guatemalan\",\"Guinea-Bissauan\",\"Guinean\",\"Guyanese\",\"Haitian\",\"Herzegovinian\",\"Honduran\",\"Hungarian\",\"I-Kiribati\",\"Icelander\",\"Indian\",\"Indonesian\",\"Iranian\",\"Iraqi\",\"Irish\",\"Israeli\",\"Italian\",\"Ivorian\",\"Jamaican\",\"Japanese\",\"Jordanian\",\"Kazakhstani\",\"Kenyan\",\"Kittian and Nevisian\",\"Kuwaiti\",\"Kyrgyz\",\"Laotian\",\"Latvian\",\"Lebanese\",\"Liberian\",\"Libyan\",\"Liechtensteiner\",\"Lithuanian\",\"Luxembourger\",\"Macedonian\",\"Malagasy\",\"Malawian\",\"Malaysian\",\"Maldivan\",\"Malian\",\"Maltese\",\"Marshallese\",\"Mauritanian\",\"Mauritian\",\"Mexican\",\"Micronesian\",\"Moldovan\",\"Monacan\",\"Mongolian\",\"Moroccan\",\"Mosotho\",\"Motswana\",\"Mozambican\",\"Namibian\",\"Nauruan\",\"Nepalese\",\"New Zealander\",\"Nicaraguan\",\"Nigerian\",\"Nigerien\",\"North Korean\",\"Northern Irish\",\"Norwegian\",\"Omani\",\"Pakistani\",\"Palauan\",\"Panamanian\",\"Papua New Guinean\",\"Paraguayan\",\"Peruvian\",\"Polish\",\"Portuguese\",\"Qatari\",\"Romanian\",\"Russian\",\"Rwandan\",\"Saint Lucian\",\"Salvadoran\",\"Samoan\",\"San Marinese\",\"Sao Tomean\",\"Saudi\",\"Scottish\",\"Senegalese\",\"Serbian\",\"Seychellois\",\"Sierra Leonean\",\"Singaporean\",\"Slovakian\",\"Slovenian\",\"Solomon Islander\",\"Somali\",\"South African\",\"South Korean\",\"Spanish\",\"Sri Lankan\",\"Sudanese\",\"Surinamer\",\"Swazi\",\"Swedish\",\"Swiss\",\"Syrian\",\"Taiwanese\",\"Tajik\",\"Tanzanian\",\"Thai\",\"Togolese\",\"Tongan\",\"Trinidadian\\/Tobagonian\",\"Tunisian\",\"Turkish\",\"Tuvaluan\",\"Ugandan\",\"Ukrainian\",\"Uruguayan\",\"Uzbekistani\",\"Venezuelan\",\"Vietnamese\",\"Welsh\",\"Yemenite\",\"Zambian\",\"Zimbabwean\"],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 08:08:02', '2022-10-06 08:08:09', 'public/images/yWK2qDq4J6TMcrnCEiKiNwxTuRyR3Dixbc1AvDz2.jpg', NULL, 0, NULL, NULL),
(896, 241, 'file upload?', 'file-upload', 12, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-06 08:08:12', '2022-10-06 08:08:18', 'public/images/yYtA8vNcixOP1NFQFwuVH6sz1E2ajUJFFxMLe3zP.jpg', NULL, 0, NULL, NULL),
(897, 241, 'Radio ', 'radio', 13, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"d\",\"f\",\"g\",\"h\"],\"yes_no\":[\"\",\"\",\"\",\"\"],\"is_irrelevant\":[\"\",\"\",\"\",\"\"]}', '2022-10-06 08:08:21', '2022-10-06 08:08:39', 'public/images/4FAXjFaIvJi8MXFcRCPmMO14ShaaTWDoZPTEOpMJ.jpg', NULL, 0, NULL, NULL),
(898, 241, 'Question', 'short-text', 14, 1, 1, '{\"max_chars\":50}', '2022-10-06 08:13:31', '2022-10-06 08:13:31', NULL, NULL, 0, NULL, NULL),
(899, 241, 'Question', 'long-text', 15, 1, 1, '{\"max_chars\":200}', '2022-10-06 08:13:40', '2022-10-06 08:13:40', NULL, NULL, 0, NULL, NULL),
(900, 240, 'Likert Scale', 'likter', 2, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[1,2,3,4,5,6],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-10 05:25:33', '2022-10-10 05:26:35', NULL, NULL, 0, NULL, NULL),
(901, 240, 'Rating', 'rating', 3, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[1,2,3,4,5],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-10 05:57:28', '2022-10-10 05:57:42', NULL, NULL, 0, NULL, NULL),
(902, 240, 'Yes No', 'yes-no', 4, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"877\",\"2\":\"\"},\"is_irrelevant\":{\"1\":\"\",\"2\":\"\"}}', '2022-10-10 06:13:28', '2022-10-10 06:14:16', NULL, NULL, 0, NULL, NULL),
(904, 240, 'File Upload', 'file-upload', 5, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-10 06:22:58', '2022-10-10 06:23:17', NULL, NULL, 0, NULL, NULL),
(911, 245, 'Question', 'file-upload', 1, 1, 1, NULL, '2022-10-17 19:09:22', '2022-10-17 19:09:22', NULL, NULL, 0, NULL, NULL),
(915, 247, 'Modi Became PM in 2014?', 'yes-no', 1, 1, 0, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"\",\"2\":\"\"},\"is_irrelevant\":{\"1\":\"\",\"2\":\"\"}}', '2022-10-26 19:24:22', '22-10-26 19:24:54', NULL, NULL, 1, NULL, NULL),
(916, 247, 'IS Modi the PM?', 'yes-no', 2, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"915\",\"2\":\"\"},\"is_irrelevant\":{\"1\":\"\",\"2\":\"\"}}', '2022-10-26 19:24:43', '2022-10-26 19:24:54', NULL, NULL, 0, NULL, NULL),
(921, 250, 'Question', 'image', 1, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-10-26 19:34:49', '2022-10-26 19:35:10', 'public/images/d8UVnF5VTTZ2b8Gou9DyytfWRxL83vGC3GydLoqf.jpg', NULL, 0, NULL, NULL),
(927, 47, 'Question', 'image', 1, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-14 08:50:00', '2022-11-14 08:50:12', 'public/images/OzRridNyxFWpMqRcfPwp7WMWHlYcmz7IgkVrQtjP.jpg', NULL, 0, NULL, NULL),
(928, 251, 'Multiple Choices', 'multiple-choices', 1, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"a\",\"b\"],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:23:44', '2022-11-18 10:23:58', NULL, NULL, 0, NULL, NULL),
(929, 251, 'Phone', 'phone', 2, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:24:00', '2022-11-18 10:24:06', NULL, NULL, 0, NULL, NULL),
(930, 251, 'Email', 'email', 3, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:24:09', '2022-11-18 10:24:15', NULL, NULL, 0, NULL, NULL),
(931, 251, 'Short Text', 'short-text', 4, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":50,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:24:17', '2022-11-18 10:24:28', NULL, NULL, 0, NULL, NULL),
(932, 251, 'Long Text', 'long-text', 5, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":200,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:24:30', '2022-11-18 10:24:38', NULL, NULL, 0, NULL, NULL),
(933, 251, 'Yes No', 'yes-no', 6, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"\",\"2\":\"\"},\"is_irrelevant\":{\"1\":\"\",\"2\":\"\"}}', '2022-11-18 10:24:40', '2022-11-18 10:24:48', NULL, NULL, 0, NULL, NULL),
(934, 251, 'Rating', 'rating', 7, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[1,2,3,4,5],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:24:50', '2022-11-18 10:24:56', NULL, NULL, 0, NULL, NULL),
(935, 251, 'Likert', 'likter', 8, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[1,2,3,4,5,6],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:24:59', '2022-11-18 10:25:04', NULL, NULL, 0, NULL, NULL),
(936, 251, 'Date', 'date', 9, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":\"MMDDYYYY\",\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:25:08', '2022-11-18 10:25:14', NULL, NULL, 0, NULL, NULL),
(937, 251, 'Number', 'number', 10, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:25:17', '2022-11-18 10:25:22', NULL, NULL, 0, NULL, NULL),
(938, 251, 'Dropdown', 'dropdown', 11, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":false,\"choices\":[\"1\",\"2\"],\"yes_no\":[\"\",\"\"],\"is_irrelevant\":[\"\",\"\"]}', '2022-11-18 10:25:24', '2022-11-18 10:25:37', NULL, NULL, 0, NULL, NULL),
(939, 251, 'Static Text', 'static-text', 12, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:25:43', '2022-11-18 10:25:50', NULL, NULL, 0, NULL, NULL),
(940, 251, 'Image', 'image', 13, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:25:53', '2022-11-18 10:26:15', 'public/images/O6U8vsSgXLun8OE3o4vyl0d4uhH8EAvmGLId0zpm.jpg', NULL, 0, NULL, NULL),
(941, 251, 'Video', 'video', 14, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:26:18', '2022-11-18 10:26:54', 'public/images/H3PKQRCNl7bXB4cgFkzik1lXmZHEjexBd4zoEjGi.jpg', 'https://www.youtube.com/embed/LGgqyer-qr4', 0, NULL, NULL),
(942, 251, 'Nationality', 'nationality', 15, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"Afghan\",\"Albanian\",\"Algerian\",\"American\",\"Andorran\",\"Angolan\",\"Antiguans\",\"Argentinean\",\"Armenian\",\"Australian\",\"Austrian\",\"Azerbaijani\",\"Bahamian\",\"Bahraini\",\"Bangladeshi\",\"Barbadian\",\"Barbudans\",\"Batswana\",\"Belarusian\",\"Belgian\",\"Belizean\",\"Beninese\",\"Bhutanese\",\"Bolivian\",\"Bosnian\",\"Brazilian\",\"British\",\"Bruneian\",\"Bulgarian\",\"Burkinabe\",\"Burmese\",\"Burundian\",\"Cambodian\",\"Cameroonian\",\"Canadian\",\"Cape Verdean\",\"Central African\",\"Chadian\",\"Chilean\",\"Chinese\",\"Colombian\",\"Comoran\",\"Congolese\",\"Costa Rican\",\"Croatian\",\"Cuban\",\"Cypriot\",\"Czech\",\"Danish\",\"Djibouti\",\"Dominican\",\"Dutch\",\"East Timorese\",\"Ecuadorean\",\"Egyptian\",\"Emirian\",\"Equatorial Guinean\",\"Eritrean\",\"Estonian\",\"Ethiopian\",\"Fijian\",\"Filipino\",\"Finnish\",\"French\",\"Gabonese\",\"Gambian\",\"Georgian\",\"German\",\"Ghanaian\",\"Greek\",\"Grenadian\",\"Guatemalan\",\"Guinea-Bissauan\",\"Guinean\",\"Guyanese\",\"Haitian\",\"Herzegovinian\",\"Honduran\",\"Hungarian\",\"I-Kiribati\",\"Icelander\",\"Indian\",\"Indonesian\",\"Iranian\",\"Iraqi\",\"Irish\",\"Israeli\",\"Italian\",\"Ivorian\",\"Jamaican\",\"Japanese\",\"Jordanian\",\"Kazakhstani\",\"Kenyan\",\"Kittian and Nevisian\",\"Kuwaiti\",\"Kyrgyz\",\"Laotian\",\"Latvian\",\"Lebanese\",\"Liberian\",\"Libyan\",\"Liechtensteiner\",\"Lithuanian\",\"Luxembourger\",\"Macedonian\",\"Malagasy\",\"Malawian\",\"Malaysian\",\"Maldivan\",\"Malian\",\"Maltese\",\"Marshallese\",\"Mauritanian\",\"Mauritian\",\"Mexican\",\"Micronesian\",\"Moldovan\",\"Monacan\",\"Mongolian\",\"Moroccan\",\"Mosotho\",\"Motswana\",\"Mozambican\",\"Namibian\",\"Nauruan\",\"Nepalese\",\"New Zealander\",\"Nicaraguan\",\"Nigerian\",\"Nigerien\",\"North Korean\",\"Northern Irish\",\"Norwegian\",\"Omani\",\"Pakistani\",\"Palauan\",\"Panamanian\",\"Papua New Guinean\",\"Paraguayan\",\"Peruvian\",\"Polish\",\"Portuguese\",\"Qatari\",\"Romanian\",\"Russian\",\"Rwandan\",\"Saint Lucian\",\"Salvadoran\",\"Samoan\",\"San Marinese\",\"Sao Tomean\",\"Saudi\",\"Scottish\",\"Senegalese\",\"Serbian\",\"Seychellois\",\"Sierra Leonean\",\"Singaporean\",\"Slovakian\",\"Slovenian\",\"Solomon Islander\",\"Somali\",\"South African\",\"South Korean\",\"Spanish\",\"Sri Lankan\",\"Sudanese\",\"Surinamer\",\"Swazi\",\"Swedish\",\"Swiss\",\"Syrian\",\"Taiwanese\",\"Tajik\",\"Tanzanian\",\"Thai\",\"Togolese\",\"Tongan\",\"Trinidadian\\/Tobagonian\",\"Tunisian\",\"Turkish\",\"Tuvaluan\",\"Ugandan\",\"Ukrainian\",\"Uruguayan\",\"Uzbekistani\",\"Venezuelan\",\"Vietnamese\",\"Welsh\",\"Yemenite\",\"Zambian\",\"Zimbabwean\"],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:27:04', '2022-11-18 10:27:10', 'public/images/b0eQoFzwe26nGs5XIxmweR6CXsHQmshTwYPDLeoP.jpg', NULL, 0, NULL, NULL),
(943, 251, 'File Upload', 'file-upload', 16, 1, 1, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2022-11-18 10:27:12', '2022-11-18 10:27:19', 'public/images/gC7vrAo44TFVO7xsW5Hvtgcxee11wLIQKBeVYJGc.jpg', NULL, 0, NULL, NULL),
(944, 251, 'Radio', 'radio', 17, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"d\",\"f\"],\"yes_no\":[\"\",\"\"],\"is_irrelevant\":[\"\",\"\"]}', '2022-11-18 10:27:23', '2022-11-18 10:27:35', 'public/images/NiO2WDZdVCKQhRoO32Q2sMpJZYswh6iMF3CHo19A.jpg', NULL, 0, NULL, NULL),
(945, 253, 'Question', 'email', 1, 1, 1, NULL, '2022-12-09 06:40:51', '2022-12-09 06:40:51', NULL, NULL, 0, NULL, NULL),
(946, 255, 'How often do you use this service/product?', 'multiple-choices', 1, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Almost always\",\"Often\",\"Sometimes\",\"Seldom\"]}', '2023-01-12 03:51:50', '2023-01-12 03:51:50', NULL, NULL, 0, NULL, NULL),
(947, 255, 'Does the product/service help you to achieve your goals?', 'yes-no', 2, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"}}', '2023-01-12 03:51:50', '2023-01-12 03:51:50', NULL, NULL, 0, NULL, NULL),
(948, 255, 'How would you improve the product/service?', 'long-text', 3, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2023-01-12 03:51:50', '2023-01-12 03:51:50', NULL, NULL, 0, NULL, NULL),
(949, 255, 'Please rate the product/service in terms of the UI.', 'rating', 4, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2023-01-12 03:51:50', '2023-01-12 03:51:50', NULL, NULL, 0, NULL, NULL),
(950, 255, 'How old are you?', 'number', 5, 1, 1, '{\"choices\":[]}', '2023-01-12 03:51:50', '2023-01-12 03:51:50', NULL, NULL, 0, NULL, NULL),
(951, 255, 'What is your gender?', 'dropdown', 6, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[\"Male\",\"Female\",\"Transgender\",\" Prefer not to say \"]}', '2023-01-12 03:51:50', '2023-01-12 03:51:50', NULL, NULL, 0, NULL, NULL),
(952, 255, 'Any other comments do you want to share?', 'long-text', 7, 1, 1, '{\"max_chars\":200,\"choices\":[]}', '2023-01-12 03:51:50', '2023-01-12 03:51:50', NULL, NULL, 0, NULL, NULL),
(953, 256, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2023-01-14 05:31:59', '2023-01-14 05:31:59', NULL, NULL, 0, NULL, NULL),
(954, 256, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2023-01-14 05:31:59', '2023-01-14 05:31:59', NULL, NULL, 0, NULL, NULL),
(955, 256, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2023-01-14 05:31:59', '2023-01-14 05:31:59', NULL, NULL, 0, NULL, NULL),
(956, 256, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2023-01-14 05:31:59', '2023-01-14 05:31:59', NULL, NULL, 0, NULL, NULL),
(957, 256, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2023-01-14 05:31:59', '2023-01-14 05:31:59', NULL, NULL, 0, NULL, NULL),
(958, 258, 'Question', 'multiple-choices', 1, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"choices\":[\"\",\"\"]}', '2023-01-14 05:56:31', '2023-01-14 05:56:31', NULL, NULL, 0, NULL, NULL),
(959, 259, 'what is pohne? ', 'phone', 1, 1, 0, '{\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2023-01-14 06:38:49', '23-01-14 06:56:05', NULL, NULL, 1, NULL, NULL),
(960, 259, 'email\n', 'email', 3, 1, 0, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[],\"yes_no\":[],\"is_irrelevant\":[]}', '2023-01-14 06:39:59', '2023-01-14 06:56:05', NULL, NULL, 0, NULL, NULL),
(961, 259, 'multiple', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":0,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"tf\",\"uyf\",\"tsx\"],\"yes_no\":[\"\",\"\"],\"is_irrelevant\":[\"\",\"\"]}', '2023-01-14 06:43:04', '2023-01-14 06:56:05', NULL, NULL, 0, NULL, NULL),
(962, 259, 'Do you like apples', 'yes-no', 4, 1, 0, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"959\",\"2\":\"959\"},\"is_irrelevant\":{\"1\":\"1\",\"2\":\"\"}}', '2023-01-14 06:48:59', '2023-01-14 06:56:05', NULL, NULL, 0, NULL, NULL),
(963, 259, 'What is nationality', 'nationality', 5, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[\"Afghan\",\"Albanian\",\"Algerian\",\"American\",\"Andorran\",\"Angolan\",\"Antiguans\",\"Argentinean\",\"Armenian\",\"Australian\",\"Austrian\",\"Azerbaijani\",\"Bahamian\",\"Bahraini\",\"Bangladeshi\",\"Barbadian\",\"Barbudans\",\"Batswana\",\"Belarusian\",\"Belgian\",\"Belizean\",\"Beninese\",\"Bhutanese\",\"Bolivian\",\"Bosnian\",\"Brazilian\",\"British\",\"Bruneian\",\"Bulgarian\",\"Burkinabe\",\"Burmese\",\"Burundian\",\"Cambodian\",\"Cameroonian\",\"Canadian\",\"Cape Verdean\",\"Central African\",\"Chadian\",\"Chilean\",\"Chinese\",\"Colombian\",\"Comoran\",\"Congolese\",\"Costa Rican\",\"Croatian\",\"Cuban\",\"Cypriot\",\"Czech\",\"Danish\",\"Djibouti\",\"Dominican\",\"Dutch\",\"East Timorese\",\"Ecuadorean\",\"Egyptian\",\"Emirian\",\"Equatorial Guinean\",\"Eritrean\",\"Estonian\",\"Ethiopian\",\"Fijian\",\"Filipino\",\"Finnish\",\"French\",\"Gabonese\",\"Gambian\",\"Georgian\",\"German\",\"Ghanaian\",\"Greek\",\"Grenadian\",\"Guatemalan\",\"Guinea-Bissauan\",\"Guinean\",\"Guyanese\",\"Haitian\",\"Herzegovinian\",\"Honduran\",\"Hungarian\",\"I-Kiribati\",\"Icelander\",\"Indian\",\"Indonesian\",\"Iranian\",\"Iraqi\",\"Irish\",\"Israeli\",\"Italian\",\"Ivorian\",\"Jamaican\",\"Japanese\",\"Jordanian\",\"Kazakhstani\",\"Kenyan\",\"Kittian and Nevisian\",\"Kuwaiti\",\"Kyrgyz\",\"Laotian\",\"Latvian\",\"Lebanese\",\"Liberian\",\"Libyan\",\"Liechtensteiner\",\"Lithuanian\",\"Luxembourger\",\"Macedonian\",\"Malagasy\",\"Malawian\",\"Malaysian\",\"Maldivan\",\"Malian\",\"Maltese\",\"Marshallese\",\"Mauritanian\",\"Mauritian\",\"Mexican\",\"Micronesian\",\"Moldovan\",\"Monacan\",\"Mongolian\",\"Moroccan\",\"Mosotho\",\"Motswana\",\"Mozambican\",\"Namibian\",\"Nauruan\",\"Nepalese\",\"New Zealander\",\"Nicaraguan\",\"Nigerian\",\"Nigerien\",\"North Korean\",\"Northern Irish\",\"Norwegian\",\"Omani\",\"Pakistani\",\"Palauan\",\"Panamanian\",\"Papua New Guinean\",\"Paraguayan\",\"Peruvian\",\"Polish\",\"Portuguese\",\"Qatari\",\"Romanian\",\"Russian\",\"Rwandan\",\"Saint Lucian\",\"Salvadoran\",\"Samoan\",\"San Marinese\",\"Sao Tomean\",\"Saudi\",\"Scottish\",\"Senegalese\",\"Serbian\",\"Seychellois\",\"Sierra Leonean\",\"Singaporean\",\"Slovakian\",\"Slovenian\",\"Solomon Islander\",\"Somali\",\"South African\",\"South Korean\",\"Spanish\",\"Sri Lankan\",\"Sudanese\",\"Surinamer\",\"Swazi\",\"Swedish\",\"Swiss\",\"Syrian\",\"Taiwanese\",\"Tajik\",\"Tanzanian\",\"Thai\",\"Togolese\",\"Tongan\",\"Trinidadian\\/Tobagonian\",\"Tunisian\",\"Turkish\",\"Tuvaluan\",\"Ugandan\",\"Ukrainian\",\"Uruguayan\",\"Uzbekistani\",\"Venezuelan\",\"Vietnamese\",\"Welsh\",\"Yemenite\",\"Zambian\",\"Zimbabwean\"],\"yes_no\":[],\"is_irrelevant\":[]}', '2023-01-14 07:20:59', '2023-01-14 07:21:39', NULL, NULL, 0, NULL, NULL),
(964, 259, 'How woulud you rate your exp ', 'rating', 6, 1, 1, '{\"choice_selection_count\":null,\"randomize_choice\":null,\"max_chars\":null,\"date_format\":null,\"alphabetical_order\":null,\"choices\":[1,2,3,4,5],\"yes_no\":[],\"is_irrelevant\":[]}', '2023-01-14 07:53:47', '2023-01-14 07:54:43', NULL, NULL, 0, NULL, NULL),
(965, 259, 'Question', 'image', 7, 1, 1, NULL, '2023-01-14 07:56:52', '2023-01-14 07:56:52', NULL, NULL, 0, NULL, NULL),
(966, 259, 'Question', 'dropdown', 8, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[]}', '2023-01-14 07:57:23', '2023-01-14 07:57:23', NULL, NULL, 0, NULL, NULL),
(967, 259, 'Question', 'image', 9, 1, 1, NULL, '2023-01-14 07:57:35', '2023-01-14 07:57:35', NULL, NULL, 0, NULL, NULL),
(968, 259, 'Question', 'dropdown', 10, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[]}', '2023-01-14 07:58:22', '2023-01-14 07:58:22', NULL, NULL, 0, NULL, NULL),
(969, 259, 'Question', 'video', 11, 1, 1, NULL, '2023-01-14 07:58:25', '2023-01-14 07:58:25', NULL, NULL, 0, NULL, NULL),
(970, 259, 'Question', 'dropdown', 12, 1, 1, '{\"alphabetical_order\":false,\"randomize\":false,\"choices\":[]}', '2023-01-14 07:59:27', '2023-01-14 07:59:27', NULL, NULL, 0, NULL, NULL),
(971, 259, 'Question', 'likter', 13, 1, 1, '{\"choices\":[1,2,3,4,5,6]}', '2023-01-14 08:12:52', '2023-01-14 08:12:52', NULL, NULL, 0, NULL, NULL),
(972, 259, 'Question', 'likter', 14, 1, 1, '{\"choices\":[1,2,3,4,5,6]}', '2023-01-14 08:15:24', '2023-01-14 08:15:24', NULL, NULL, 0, NULL, NULL),
(973, 257, 'Question', 'yes-no', 1, 1, 1, '{\"choices\":{\"1\":\"Yes\",\"2\":\"No\"},\"yes_no\":{\"1\":\"\",\"2\":\"\"},\"is_irrelevant\":{\"1\":\"\",\"2\":\"\"}}', '2023-01-17 18:11:51', '2023-01-17 18:11:51', NULL, NULL, 0, NULL, NULL),
(974, 257, 'Question', 'rating', 2, 1, 1, '{\"choices\":[1,2,3,4,5]}', '2023-01-17 18:12:06', '2023-01-17 18:12:06', NULL, NULL, 0, NULL, NULL),
(975, 263, 'What is your name?', 'short-text', 1, 1, 1, '{\"max_chars\":50,\"choices\":[]}', '2023-01-27 07:27:08', '2023-01-27 12:57:08', NULL, NULL, 0, NULL, NULL),
(976, 263, 'How well does our website meet your needs?', 'multiple-choices', 2, 1, 1, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Well\",\"Good\",\"Very well\",\"Not so well\"]}', '2023-01-27 07:27:08', '2023-01-27 12:57:08', NULL, NULL, 0, NULL, NULL),
(977, 263, 'How easy was it to find what you were looking for on our website?', 'multiple-choices', 3, 1, 0, '{\"choice_selection_count\":1,\"randomize_choice\":false,\"choices\":[\"Very easy\",\"Somewhat easy\",\"Not so easy\"]}', '2023-01-27 07:27:08', '2023-01-27 12:57:08', NULL, NULL, 0, NULL, NULL),
(978, 263, 'How likely is it that you would recommend our website to a friend or colleague?', 'rating', 4, 1, 0, '{\"choices\":[1,2,3,4,5]}', '2023-01-27 07:27:08', '2023-01-27 12:57:08', NULL, NULL, 0, NULL, NULL),
(979, 263, 'Do you have any other comments about how we can improve our website?', 'long-text', 5, 1, 0, '{\"max_chars\":200,\"choices\":[]}', '2023-01-27 07:27:08', '2023-01-27 12:57:08', NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attendee_id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `attendee_id`, `survey_id`, `question_id`, `response`, `created_at`, `updated_at`) VALUES
(7, 2, 17, 47, 'Tony', '2021-06-19 04:32:52', NULL),
(8, 2, 17, 50, 'j.tonygeorge@gmail.com', '2021-06-19 04:32:52', NULL),
(9, 2, 17, 52, '+971509878765', '2021-06-19 04:32:52', NULL),
(10, 2, 17, 51, '4', '2021-06-19 04:32:52', NULL),
(11, 2, 17, 46, 'there is room fro improvement', '2021-06-19 04:32:52', NULL),
(12, 3, 17, 47, 'Test', '2021-06-19 04:36:01', NULL),
(13, 3, 17, 50, 'test@test.com', '2021-06-19 04:36:01', NULL),
(14, 3, 17, 52, '0129986280719', '2021-06-19 04:36:01', NULL),
(15, 3, 17, 51, '4', '2021-06-19 04:36:01', NULL),
(16, 3, 17, 46, 'none', '2021-06-19 04:36:01', NULL),
(51, 17, 36, 112, 'test', '2021-07-03 14:18:33', NULL),
(52, 17, 36, 113, 'test', '2021-07-03 14:18:33', NULL),
(53, 17, 36, 130, 'test', '2021-07-03 14:18:33', NULL),
(54, 17, 36, 131, '5', '2021-07-03 14:18:33', NULL),
(705, 264, 166, 739, 'tonyj@gmail.com', '2022-05-17 10:10:44', NULL),
(706, 264, 166, 740, 'Tony George', '2022-05-17 10:10:44', NULL),
(707, 264, 166, 741, 'tonyj@gmail.com', '2022-05-17 10:10:44', NULL),
(708, 264, 166, 742, '2326598562324', '2022-05-17 10:10:44', '2022-05-17 10:12:10'),
(709, 264, 166, 743, 'Ukrainian', '2022-05-17 10:10:44', '2022-05-17 10:12:10'),
(710, 264, 166, 744, 'none', '2022-05-17 10:10:44', NULL),
(711, 266, 166, 739, 'rose@kil.il', '2022-05-17 10:17:23', NULL),
(712, 266, 166, 740, 'Tony George', '2022-05-17 10:17:23', NULL),
(713, 266, 166, 741, 'rose@kil.il', '2022-05-17 10:17:23', NULL),
(714, 266, 166, 742, '326598875421', '2022-05-17 10:17:23', NULL),
(715, 266, 166, 743, 'Andorran', '2022-05-17 10:17:23', NULL),
(716, 266, 166, 744, 'none', '2022-05-17 10:17:23', NULL),
(730, 285, 187, 785, 'dj', '2022-05-23 15:54:57', NULL),
(731, 285, 187, 786, 'darryl.tjoseph@gmail.com', '2022-05-23 15:54:57', NULL),
(732, 285, 187, 787, '9902088976', '2022-05-23 15:54:57', NULL),
(733, 285, 187, 788, 'Russian', '2022-05-23 15:54:57', NULL),
(734, 285, 187, 789, 'no', '2022-05-23 15:54:57', NULL),
(735, 283, 187, 785, 'Darryl', '2022-05-23 16:22:40', NULL),
(736, 283, 187, 786, 'darryl.tjoseph@gmail.com', '2022-05-23 16:22:40', NULL),
(737, 283, 187, 787, '9902088986', '2022-05-23 16:22:40', NULL),
(738, 283, 187, 788, 'American', '2022-05-23 16:22:40', NULL),
(739, 283, 187, 789, 'No', '2022-05-23 16:22:40', NULL),
(740, 283, 187, 796, '5', '2022-05-23 16:22:40', NULL),
(741, 297, 192, 805, '2022-06-30', '2022-06-01 05:58:47', NULL),
(743, 299, 206, 837, '2022-06-14', '2022-06-15 05:56:01', NULL),
(744, 299, 206, 836, '/useruploads/1655272561-1037317908.jpg', '2022-06-15 05:56:01', NULL),
(753, 314, 239, 876, 'option 1', '2022-10-05 11:13:42', NULL),
(754, 315, 240, 877, 'Vishnu', '2022-10-05 11:17:48', NULL),
(755, 317, 241, 882, '2', '2022-10-06 08:15:01', NULL),
(756, 317, 241, 883, '3', '2022-10-06 08:15:01', NULL),
(757, 317, 241, 889, 'a', '2022-10-06 08:15:01', NULL),
(758, 317, 241, 890, '20105565665', '2022-10-06 08:15:01', NULL),
(759, 317, 241, 891, 'Yes', '2022-10-06 08:15:01', NULL),
(760, 317, 241, 885, 'true', '2022-10-06 08:15:01', NULL),
(761, 317, 241, 886, 'n', '2022-10-06 08:15:01', NULL),
(762, 317, 241, 892, '2022-10-13', '2022-10-06 08:15:01', NULL),
(763, 317, 241, 893, '10', '2022-10-06 08:15:01', NULL),
(764, 317, 241, 894, 'sdfa', '2022-10-06 08:15:01', NULL),
(765, 317, 241, 895, 'Batswana', '2022-10-06 08:15:01', NULL),
(766, 317, 241, 897, 'g', '2022-10-06 08:15:01', NULL),
(767, 317, 241, 898, 'sadf', '2022-10-06 08:15:01', NULL),
(768, 317, 241, 899, 'asdf', '2022-10-06 08:15:01', NULL),
(769, 317, 241, 896, '/useruploads/1665044101-928507169.jpg', '2022-10-06 08:15:01', NULL),
(770, 320, 240, 877, 'Vishnu', '2022-10-10 05:26:54', NULL),
(771, 320, 240, 900, '5', '2022-10-10 05:26:54', NULL),
(772, 321, 240, 877, 'Vishnu', '2022-10-10 05:29:26', NULL),
(773, 321, 240, 900, '5', '2022-10-10 05:29:26', NULL),
(774, 322, 240, 877, 'vishnu', '2022-10-10 05:40:36', NULL),
(775, 322, 240, 900, '4', '2022-10-10 05:40:36', NULL),
(776, 323, 240, 877, 'Vishnu', '2022-10-10 05:59:24', NULL),
(777, 323, 240, 900, '4', '2022-10-10 05:59:24', NULL),
(778, 323, 240, 901, '4', '2022-10-10 05:59:24', NULL),
(779, 324, 240, 900, '3', '2022-10-10 06:17:30', NULL),
(780, 324, 240, 901, '5', '2022-10-10 06:17:30', NULL),
(781, 324, 240, 902, 'Yes', '2022-10-10 06:17:30', NULL),
(782, 324, 240, 877, 'vishnu', '2022-10-10 06:17:30', NULL),
(783, 325, 240, 900, '2', '2022-10-10 06:19:53', NULL),
(784, 325, 240, 901, '2', '2022-10-10 06:19:53', NULL),
(785, 325, 240, 902, 'Yes', '2022-10-10 06:19:53', NULL),
(786, 325, 240, 877, 'vishnu', '2022-10-10 06:19:53', NULL),
(787, 327, 240, 900, '1', '2022-10-10 06:24:03', NULL),
(788, 327, 240, 901, '1', '2022-10-10 06:24:03', NULL),
(789, 327, 240, 902, 'No', '2022-10-10 06:24:03', NULL),
(790, 327, 240, 904, '/useruploads/1665383043-2043986565.jpg', '2022-10-10 06:24:03', NULL),
(797, 333, 247, 916, 'Yes', '2022-10-26 19:25:08', NULL),
(798, 333, 247, 915, 'Yes', '2022-10-26 19:25:08', NULL),
(799, 336, 251, 928, 'a', '2022-11-18 11:02:55', NULL),
(800, 336, 251, 929, '21354789', '2022-11-18 11:02:55', NULL),
(801, 336, 251, 930, 'test@test.com', '2022-11-18 11:02:55', NULL),
(802, 336, 251, 931, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '2022-11-18 11:02:55', NULL),
(803, 336, 251, 932, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus tempus urna, sit amet placerat ex accumsan et. Nunc vehicula bibendum purus, et vestibulum quam venenatis ac.', '2022-11-18 11:02:55', NULL),
(804, 336, 251, 933, 'Yes', '2022-11-18 11:02:55', NULL),
(805, 336, 251, 934, '1', '2022-11-18 11:02:55', NULL),
(806, 336, 251, 935, '1', '2022-11-18 11:02:55', NULL),
(807, 336, 251, 936, '2022-11-18', '2022-11-18 11:02:55', NULL),
(808, 336, 251, 937, '123', '2022-11-18 11:02:55', NULL),
(809, 336, 251, 938, '1', '2022-11-18 11:02:55', NULL),
(810, 336, 251, 939, 'true', '2022-11-18 11:02:55', NULL),
(811, 336, 251, 940, 'Lorem ipsum dolor sit amet', '2022-11-18 11:02:55', NULL),
(812, 336, 251, 941, 'Lorem ipsum dolor', '2022-11-18 11:02:55', NULL),
(813, 336, 251, 942, 'Barbadian', '2022-11-18 11:02:55', NULL),
(814, 336, 251, 944, 'f', '2022-11-18 11:02:55', NULL),
(815, 336, 251, 943, 'storage/public/useruploads/1668769375-993060626.jpg', '2022-11-18 11:02:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2021-06-16 14:50:21', '2021-06-16 14:50:21'),
(2, 'company', 'web', '2021-06-16 14:50:21', '2021-06-16 14:50:21'),
(3, 'customer', 'web', '2021-06-16 14:50:21', '2021-06-16 14:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `created_at`, `updated_at`, `group`) VALUES
(1, 'sharethis_status', '1', '2021-06-16 14:54:09', '2021-06-16 14:54:09', 'default'),
(2, 'sharethis_property', NULL, '2021-06-16 14:54:09', '2021-06-16 14:54:09', 'default'),
(3, 'currency', 'INR', '2021-06-16 14:56:03', '2021-06-16 14:56:03', 'default'),
(4, 'envato_purchase_code', '626995e9-fc4c-4e70-9e5a-ca2092c81893', '2022-02-04 07:05:03', '2022-02-04 07:05:03', 'default'),
(5, 'offlinesubscription_status', '1', '2022-02-04 07:07:25', '2022-02-04 07:07:25', 'default'),
(6, 'offlinesubscription_title', 'Pay Via Bank', '2022-02-04 07:07:25', '2022-02-04 07:07:25', 'default'),
(7, 'offlinesubscription_instructions', 'Bank Account Details', '2022-02-04 07:07:25', '2022-02-04 07:07:25', 'default'),
(8, 'stripesubscription_status', '1', '2022-02-04 07:07:43', '2022-02-04 07:07:43', 'default'),
(9, 'stripesubscription_title', 'Pay With Stripe', '2022-02-04 07:07:43', '2022-02-04 07:07:43', 'default'),
(10, 'stripesubscription_publishable_key', 'pk_test_51KR7pCSHfP3ZZn05M3WlVZHhaAPdoJFvVMsjZra32DDIWxij4CYubIakaYYbzgefPvDNeqr577GdA0P5aavCEQZT00QRsBEutF', '2022-02-04 07:07:43', '2022-02-11 13:36:53', 'default'),
(11, 'stripesubscription_secret_key', 'sk_test_51KR7pCSHfP3ZZn05HODmD0SIbDc08D7gw5vDFJ7UkEgSugHxXZD5Bfx6axF8pV2lwUr72ZpNANgHvOCwla2XcRJa00N1SCH1lE', '2022-02-04 07:07:43', '2022-02-11 13:36:53', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_subscription_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `notified_subscription_ended` tinyint(4) NOT NULL DEFAULT 0,
  `notified_subscription_ending_soon` tinyint(4) NOT NULL DEFAULT 0,
  `canceled_at` datetime DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `payment_method`, `stripe_id`, `stripe_subscription_id`, `starts_at`, `ends_at`, `notified_subscription_ended`, `notified_subscription_ending_soon`, `canceled_at`, `metadata`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, '2021-06-16 14:50:21', '2022-06-16 14:50:21', 0, 0, NULL, NULL, '2021-06-16 14:50:21', '2021-06-16 14:50:21'),
(2, 2, 3, '', '', '', '2022-03-18 17:00:37', '2023-03-18 17:00:37', 0, 0, NULL, NULL, '2021-06-17 05:09:44', '2022-03-18 17:00:37'),
(3, 3, 1, '', '', '', '2022-08-30 10:16:00', '2023-08-30 10:16:00', 0, 0, NULL, NULL, '2021-06-17 05:41:21', '2022-08-30 10:16:00'),
(4, 4, 1, '', '', '', '2023-01-12 03:51:32', '2024-01-12 03:51:32', 0, 0, NULL, NULL, '2021-06-19 04:07:19', '2023-01-12 03:51:32'),
(5, 5, 1, NULL, NULL, NULL, '2021-06-22 11:55:46', '2022-06-22 11:55:46', 0, 0, NULL, NULL, '2021-06-22 11:55:46', '2021-06-22 11:55:46'),
(6, 6, 1, '', '', '', '2023-01-14 05:29:40', '2024-01-14 05:29:40', 0, 0, NULL, NULL, '2021-06-23 07:54:39', '2023-01-14 05:29:40'),
(7, 7, 1, NULL, NULL, NULL, '2021-06-23 12:03:27', '2022-06-23 12:03:27', 0, 0, NULL, NULL, '2021-06-23 12:03:27', '2021-06-23 12:03:27'),
(8, 8, 1, NULL, NULL, NULL, '2021-06-26 14:08:16', '2022-06-26 14:08:16', 0, 0, NULL, NULL, '2021-06-26 14:08:16', '2021-06-26 14:08:16'),
(9, 9, 1, NULL, NULL, NULL, '2021-06-26 15:38:16', '2022-06-26 15:38:16', 0, 0, NULL, NULL, '2021-06-26 15:38:16', '2021-06-26 15:38:16'),
(10, 11, 1, NULL, NULL, NULL, '2021-06-29 19:30:30', '2022-06-29 19:30:30', 0, 0, NULL, NULL, '2021-06-29 19:30:30', '2021-06-29 19:30:30'),
(11, 20, 1, NULL, NULL, NULL, '2021-08-18 13:11:16', '2022-08-18 13:11:16', 0, 0, NULL, NULL, '2021-08-18 13:11:16', '2021-08-18 13:11:16'),
(13, 61, 1, NULL, NULL, NULL, '2022-02-23 11:19:52', '2023-02-23 11:19:52', 0, 0, NULL, NULL, '2022-02-23 11:19:52', '2022-02-23 11:19:52'),
(14, 63, 1, NULL, NULL, NULL, '2022-02-24 03:45:16', '2023-02-24 03:45:16', 0, 0, NULL, NULL, '2022-02-24 03:45:16', '2022-02-24 03:45:16'),
(15, 64, 1, NULL, NULL, NULL, '2022-02-24 06:29:42', '2023-02-24 06:29:42', 0, 0, NULL, NULL, '2022-02-24 06:29:42', '2022-02-24 06:29:42'),
(16, 66, 3, NULL, NULL, NULL, '2022-08-30 00:00:00', '2023-02-01 00:00:00', 0, 0, NULL, NULL, '2022-02-26 07:34:01', '2022-08-22 17:46:55'),
(17, 68, 1, NULL, NULL, NULL, '2022-03-09 13:11:45', '2023-03-09 13:11:45', 0, 0, NULL, NULL, '2022-03-09 13:11:45', '2022-03-09 13:11:45'),
(18, 78, 1, NULL, NULL, NULL, '2022-05-09 13:52:42', '2023-05-09 13:52:42', 0, 0, NULL, NULL, '2022-05-09 13:52:42', '2022-05-09 13:52:42'),
(19, 79, 1, NULL, NULL, NULL, '2022-05-09 13:52:43', '2023-05-09 13:52:43', 0, 0, NULL, NULL, '2022-05-09 13:52:43', '2022-05-09 13:52:43'),
(20, 80, 1, NULL, NULL, NULL, '2022-05-09 14:01:35', '2023-05-09 14:01:35', 0, 0, NULL, NULL, '2022-05-09 14:01:35', '2022-05-09 14:01:35'),
(22, 82, 1, NULL, NULL, NULL, '2022-05-09 14:01:58', '2023-05-09 14:01:58', 0, 0, NULL, NULL, '2022-05-09 14:01:58', '2022-05-09 14:01:58'),
(24, 85, 3, NULL, NULL, NULL, '2022-08-22 00:00:00', '2023-01-31 00:00:00', 0, 0, NULL, NULL, '2022-05-14 17:13:59', '2022-08-22 17:54:20'),
(27, 116, 1, NULL, NULL, NULL, '2023-01-24 15:13:55', '2024-01-24 15:13:55', 0, 0, NULL, NULL, '2023-01-24 15:13:55', '2023-01-24 15:13:55'),
(28, 118, 2, NULL, NULL, NULL, '2023-01-27 13:00:06', '2024-01-27 13:00:06', 0, 0, NULL, NULL, '2023-01-27 07:30:06', '2023-01-27 07:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `goodbye_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_password` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT 0,
  `question_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responses_count` int(11) NOT NULL DEFAULT 0,
  `questions_count` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_new_responses` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_type` int(11) DEFAULT NULL,
  `title_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `user_id`, `uuid`, `title`, `language`, `goodbye_text`, `require_password`, `password`, `redirect_url`, `logo`, `visibility`, `created_at`, `updated_at`, `is_template`, `question_color`, `answer_color`, `button_color`, `button_text_color`, `background_color`, `responses_count`, `questions_count`, `description`, `welcome_message`, `notify_new_responses`, `start_date`, `end_date`, `background_image`, `background_type`, `title_color`) VALUES
(5, 1, 'ffbb623f-70ac-467e-887a-bcf152ffaba5', 'Website feedback survey template', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-05-24 21:39:07', '2021-05-25 03:39:44', 1, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(6, 1, '3481f36c-61d9-4bd4-99b5-4bf8841e34e2', 'Hotel feedback survey template', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-05-24 21:45:28', '2021-05-25 03:40:09', 1, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 7, NULL, 'We\'d love to hear your thoughts on our Hotel. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'b4fc3802-8453-4597-aa68-151348029b98', 'Company satisfaction survey template', 'en', 'Thanks a lot for your feedback. Your answers will help us grow and improve.', 0, NULL, NULL, NULL, 1, '2021-05-24 21:54:11', '2021-05-25 03:40:36', 1, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 6, NULL, 'We\'d love to hear your thoughts on our company. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(8, 1, '92fc791e-ace8-49d6-94ed-5a99c7c6a70a', 'Client satisfaction survey template', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-05-24 21:58:27', '2021-05-25 03:40:55', 1, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 7, NULL, 'We\'d love to hear your thoughts on ours team. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(17, 4, '25619feb-5360-4c4e-b45e-9d4148a82a6f', 'Starbucks Survey', 'en', 'Thank you for the time, our customer service shall get back to you soon.', 0, NULL, NULL, NULL, 0, '2021-06-19 04:09:05', '2021-06-22 06:02:46', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(0, 182, 95)', 'rgb(255, 255, 255)', '#F9F3F3', 2, 6, NULL, 'We\'d love to hear your thoughts on our team. We value your feedback.', 1, NULL, NULL, NULL, NULL, NULL),
(18, 4, 'b3a5156a-48de-491a-8a89-c16edcc54599', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2021-06-19 04:39:56', '2021-06-19 04:40:31', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, NULL, NULL, NULL, NULL, NULL),
(19, 4, '3729d240-52dc-459e-9bf6-2d4c6795e48d', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2021-06-19 05:09:53', '2021-06-19 05:09:53', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, NULL, NULL, NULL, NULL, NULL),
(20, 5, '373c5be1-b968-43bd-8cf9-7d226c87114b', 'Market Study - Apartments at Vaikom', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2021-06-22 11:59:23', '2021-06-22 13:17:48', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 7, NULL, 'Welcome to our survey.', 0, NULL, NULL, NULL, NULL, NULL),
(21, 5, 'c622effd-55d5-49df-82fd-b95d6a5fa414', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-06-22 13:50:20', '2021-06-22 13:50:20', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(22, 5, '9ed45177-27a0-476e-9706-d77392cc71ce', 'Client satisfaction survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-06-22 14:06:11', '2021-06-22 14:06:11', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 7, NULL, 'We\'d love to hear your thoughts on ours team. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(23, 5, '4153d93d-ef5a-4e4d-a38f-e050597effa5', 'Hotel feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-06-22 14:11:48', '2021-06-22 14:11:48', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 7, NULL, 'We\'d love to hear your thoughts on our Hotel. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(24, 5, 'e1647f4d-cb7a-490c-b66d-6104163cc468', 'Company satisfaction survey template (copy)', 'en', 'Thanks a lot for your feedback. Your answers will help us grow and improve.', 0, NULL, NULL, NULL, 1, '2021-06-22 14:12:52', '2021-06-22 14:12:52', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 6, NULL, 'We\'d love to hear your thoughts on our company. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(25, 4, '0290ce05-77b4-4725-a0df-3747539abc87', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2021-06-23 05:15:01', '2021-06-23 05:15:40', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, NULL, NULL, NULL, NULL, NULL),
(26, 6, '299d3963-1402-4cf8-ba74-2ec780c7a2e7', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-06-23 07:54:56', '2021-06-23 07:54:56', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(28, 7, '03748153-abed-430b-bad7-494838328cb8', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2021-06-23 12:05:10', '2021-06-23 12:05:10', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, NULL, NULL, NULL, NULL, NULL),
(31, 8, '329635fd-0d43-44ee-aedb-0dae1e4e63e8', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, '/images/1624716583.png', 0, '2021-06-26 14:08:32', '2021-06-26 14:09:43', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2021-06-10', '2021-06-30', NULL, NULL, NULL),
(32, 8, '4b3221c7-c078-426b-bb49-783be14c3ad1', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, '/images/1624717900.png', 0, '2021-06-26 14:30:44', '2021-06-26 14:31:40', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2021-06-26', '2021-07-26', NULL, NULL, NULL),
(34, 9, 'dbce8e9c-4d33-412c-9d3e-c3f2518162a7', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2021-06-26 15:39:01', '2021-06-26 15:47:57', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 9, NULL, 'Welcome to our survey.', 0, '2021-06-26', '2021-07-26', NULL, NULL, NULL),
(36, 11, '382541b6-c470-4ae0-b3b1-84ff4bf033b5', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-06-29 19:30:35', '2021-07-03 15:15:52', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 1, 5, NULL, 'Welcome to our survey.', 0, '2021-06-29', '2021-07-29', NULL, NULL, NULL),
(47, 3, '8ef0266f-be83-4bd0-a427-54321a73a0c5', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2021-07-13 06:42:28', '2022-11-14 08:50:00', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 1, 1, NULL, 'Welcome to our survey.', 0, '2021-07-13', NULL, NULL, NULL, '#F7089C'),
(59, 20, '539f34ee-5589-4692-b6be-8966ce979f04', 'test', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2021-08-18 13:11:28', '2021-08-18 13:11:51', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 2, NULL, 'Welcome to our survey.', 0, '2021-08-18', '2021-09-18', '#ff0000', 1, NULL),
(83, 61, '84e3ef79-b3bb-4fbf-a81f-fa67b15af265', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-02-23 11:24:23', '2022-02-23 11:24:23', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-02-23', '2022-03-23', NULL, NULL, NULL),
(88, 63, 'cec54cc9-040d-4b1e-a0d8-f1a7aac8049d', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-02-24 03:45:58', '2022-02-24 03:45:58', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(89, 64, 'f0d72cf6-98f4-4064-8383-6ea2b0e69962', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-02-24 06:30:34', '2022-02-24 06:30:34', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(90, 68, 'bc5a231d-b298-44d4-9c0a-9aae58b5e7a2', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, '/images/1646832448-1008610414.jpg', 1, '2022-03-09 13:14:45', '2022-03-09 13:27:28', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, '2022-03-08', '2022-03-24', '/images/1646832448-1825297949.jpg', 3, NULL),
(92, 2, '7614fa99-c51a-4304-916e-bb0b3ba77187', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-05-05 14:10:23', '2022-06-16 04:25:49', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 6, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(93, 2, '890fcc3d-ac76-4697-8d34-fbb5cf8ae9dd', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-05-05 14:16:25', '2022-05-05 14:16:25', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(95, 4, '3e53190f-428b-48ad-8529-1c6c144581b3', 'Emirates Customer Satisfaction', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-05-09 13:57:45', '2022-05-09 13:59:04', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 1, '2022-05-08', '2022-09-09', '/images/1652104744-2014221427.png', 3, NULL),
(112, 2, '350e4413-0e85-4733-b8e1-0620be83d6f8', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-11 15:54:18', '2022-05-11 15:54:18', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-05-11', '2022-06-11', NULL, NULL, NULL),
(113, 2, '4da2e7a3-7dc1-4f05-ab68-957ddea7136e', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-05-11 15:54:48', '2022-05-11 15:54:48', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(114, 2, '9b5eaa8d-c22a-4e09-8690-231866d30831', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-11 15:56:15', '2022-05-11 15:56:15', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-05-11', '2022-06-11', NULL, NULL, NULL),
(131, 2, '35d16c12-cda9-4a06-8294-5c4d4a059700', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-14 16:49:40', '2022-05-14 16:49:40', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-05-14', '2022-06-14', NULL, NULL, NULL),
(132, 2, '580c9227-63a9-427b-9756-3bf9b470d916', 'Untitled (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-14 16:50:38', '2022-05-14 16:50:38', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-02-23', '2022-03-23', NULL, NULL, NULL),
(146, 2, '785b514d-4ca7-4631-af3e-1f073fda2ec5', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-14 17:39:05', '2022-05-14 17:39:10', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, '2022-05-14', '2022-06-14', NULL, NULL, NULL),
(148, 2, '5afb152d-7d7e-467e-9d40-5f6f01dde02f', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-14 17:46:10', '2022-05-14 17:46:53', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 3, NULL, 'Welcome to our survey.', 0, '2022-05-14', '2022-06-14', NULL, NULL, NULL),
(163, 2, '72f5c2d1-c687-4597-b541-d57a17b5a2f2', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-16 11:01:39', '2022-05-16 11:02:08', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 2, NULL, 'Welcome to our survey.', 0, '2022-05-16', '2022-06-16', NULL, NULL, '#964949'),
(166, 78, 'b944e779-9272-4eec-a4dd-faf3d4113d9a', 'Emirates Customer Service Feedback', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, '/images/1652778152-1831580491.png', 1, '2022-05-17 09:00:46', '2022-05-17 10:18:36', 0, '#E10000', 'rgb(10, 10, 10)', 'rgb(8, 8, 8)', 'rgb(255, 255, 255)', '#FBFBFB', 3, 6, NULL, 'Welcome to our survey.', 1, '2022-05-17', '2022-08-30', '/images/1652778152-1819268764.webp', 3, '#ED0000'),
(171, 82, '46586b1f-99be-4760-9970-2050d9e37ffa', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-17 11:28:03', '2022-05-17 11:33:20', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 4, NULL, 'Welcome to our survey.', 0, '2022-05-17', '2022-06-17', NULL, NULL, NULL),
(186, 78, 'c20563c6-892f-412b-9b7f-4e939682d45c', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-05-23 15:38:20', '2022-05-23 15:39:29', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 3, NULL, 'Welcome to our survey.', 0, '2022-05-23', '2022-06-23', NULL, NULL, NULL),
(187, 78, '97ce37d9-e767-47ed-aede-72c7a84ddd9b', 'McDonald\'s World Tour Contest', 'en', 'Our customer service team shall be contacting you soon.\r\n\r\nRegards,\r\nMcDonald\'s Customer Service', 0, NULL, NULL, NULL, 1, '2022-05-23 15:40:30', '2022-05-23 16:27:34', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 2, 6, NULL, 'Thank you for taking time to participate in our contest', 1, '2022-05-23', '2022-12-16', '#ffc72c', 1, '#FF0000'),
(189, 6, 'de0f38e4-fdf7-4315-9574-f8b91ac694ba', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-05-23 15:58:02', '2022-05-23 16:07:22', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 6, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(191, 6, '41fbccc7-bd88-46ac-92f1-7358b154a911', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-05-26 11:23:43', '2022-05-26 11:41:48', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(204, 41, 41)', '#1E1010', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, '#CC1F1F'),
(192, 3, 'ec74de05-b431-4f39-a1e3-eca48d3f4a44', 'Test 001', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, '/images/1654060292-1926797979.jpg', 1, '2022-06-01 05:10:00', '2022-06-01 08:45:13', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#F5EFEF', 1, 5, NULL, 'Welcome to our survey.', 0, '2022-06-01', NULL, 'the-background-292720_1280.png', 2, '#D52222'),
(197, 3, '8f5f3cbf-01a8-4f03-abcc-ffdf0aeb6117', 'Hotel feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-06-01 13:56:47', '2022-06-01 13:56:47', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 7, NULL, 'We\'d love to hear your thoughts on our Hotel. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(206, 3, 'a9c923a2-5cd6-4ac2-9bb8-2e85333a6b94', 'Test Questions', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-06-15 04:59:32', '2022-06-15 05:56:01', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 1, 2, NULL, 'Welcome to our survey.', 0, '2022-06-15', '2022-07-15', NULL, NULL, NULL),
(218, 3, '3a3ab7e4-0af8-4f10-9ad6-70302f1dc367', 'Language Test', 'ml', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-06-18 12:07:12', '2022-06-18 12:09:03', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#17A839', 0, 2, NULL, 'Welcome to our survey.', 0, '2022-06-18', '2022-07-18', '#4ec1bf', 1, '#465BD9'),
(219, 82, 'e1fdf0f0-2e0a-40a5-93b2-d1540f7864ca', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-06-22 15:34:29', '2022-06-22 15:34:29', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(232, 3, '5291ab6d-c756-470b-a77c-3a40ddd56244', 'dr drive', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-08-31 06:10:32', '2022-08-31 06:10:58', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-08-31', '2022-10-01', NULL, NULL, NULL),
(234, 3, 'e3c05a9f-ff72-44b3-be9d-b104ade72d90', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-08-31 06:15:38', '2022-08-31 06:18:17', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, '2022-08-31', '2022-10-01', NULL, NULL, NULL),
(236, 2, 'a6d62f3e-db1e-4daf-a092-c1b8532c62f4', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-09-05 12:22:39', '2022-09-05 12:22:39', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-09-05', '2022-10-05', NULL, NULL, NULL),
(237, 2, '9b39f1a9-1aab-4ef0-a7ab-3b7506a8b7ae', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-09-05 12:23:30', '2022-09-05 12:24:01', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, '2022-09-05', '2022-10-05', NULL, NULL, NULL),
(239, 3, '950ee8c3-9667-4e4a-8c0e-40d0326efb3b', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-10-05 11:12:37', '2022-10-05 11:13:42', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 1, 1, NULL, 'Welcome to our survey.', 0, '2022-10-05', '2022-11-05', NULL, NULL, NULL),
(240, 3, '49ad11f8-17ce-4062-8be9-1e2da6d821ee', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-10-05 11:16:44', '2022-10-10 06:24:03', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 8, 5, NULL, 'Welcome to our survey.', 0, '2022-10-05', '2022-11-05', NULL, NULL, NULL),
(241, 2, '63eb5c2d-612e-48ad-bbf9-1342311f2fbf', 'ABC survey', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-10-06 07:09:35', '2022-10-06 08:15:01', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 1, 15, NULL, 'Welcome to our survey.', 0, '2022-10-06', '2022-11-06', NULL, NULL, '#B87E7E'),
(245, 85, '3d5cfb00-43c0-4c64-bb30-b0f98163053f', 'image', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-10-17 19:09:09', '2022-10-17 19:09:22', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, '2022-10-17', '2022-11-17', NULL, NULL, NULL),
(247, 85, '739d8ecf-d6e1-4cf0-88f0-b47017b3f48b', 'Yes or No Branching', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-10-26 19:24:02', '2022-10-26 19:25:08', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 1, 2, NULL, 'Welcome to our survey.', 0, '2022-10-26', '2022-11-26', NULL, NULL, NULL),
(248, 85, '9e9c1a7f-f1fc-4799-89b1-077b91f8178d', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-10-26 19:27:28', '2022-10-26 19:27:28', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-10-26', '2022-11-26', NULL, NULL, NULL),
(250, 85, '20801352-8121-4198-ab87-31a35191b085', 'image upload test', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2022-10-26 19:32:25', '2022-10-26 19:34:49', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, '2022-10-26', '2022-11-26', NULL, NULL, NULL),
(251, 3, 'c6d551ca-319b-4a23-aa15-19f53dec4bd3', 'Test 2022', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, 'storage/public/images/1668768740-1829014052.jpg', 1, '2022-11-18 10:07:35', '2022-11-18 11:02:55', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 1, 17, NULL, 'Welcome to our survey.', 0, '2022-11-18', '2022-12-18', 'storage/public/images/1668768928-384380128.png', 3, NULL),
(252, 2, 'e13db9b5-e4b7-4d54-9611-fb11dbc2514f', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-12-09 06:36:58', '2022-12-09 06:36:58', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-12-09', '2023-01-09', NULL, NULL, NULL),
(253, 2, 'a1519223-2115-4994-881d-12af6f00b475', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-12-09 06:40:33', '2022-12-09 06:40:51', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, '2022-12-09', '2023-01-09', NULL, NULL, NULL),
(254, 3, 'acb63071-0b0c-4f98-80e3-932e6787289b', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2022-12-20 13:03:51', '2022-12-20 13:03:51', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2022-12-20', '2023-01-20', NULL, NULL, NULL),
(255, 4, '5eac77dd-fb92-490a-9161-6fc09bf7daff', 'Client satisfaction survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, 'storage/public/images/1673495592-1339672195.png', 1, '2023-01-12 03:51:50', '2023-01-12 03:54:58', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 7, NULL, 'We\'d love to hear your thoughts on ours team. We value your feedback.', 1, '2023-01-12', '2023-03-16', '#ffffff', 1, '#000000'),
(256, 6, 'c1343b04-153b-467b-923a-7f9d842a6838', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2023-01-14 05:31:59', '2023-01-14 05:31:59', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(257, 6, 'd1ead07d-a614-4a45-9daf-6d82ebb03f17', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-14 05:34:06', '2023-01-17 18:12:06', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 2, NULL, 'Welcome to our survey.', 0, '2023-01-14', '2023-02-14', NULL, NULL, NULL),
(258, 6, 'd04c7751-9d4e-4059-9cdf-fe2f2331f788', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-14 05:51:06', '2023-01-14 05:56:31', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 1, NULL, 'Welcome to our survey.', 0, '2023-01-14', '2023-02-14', NULL, NULL, NULL),
(259, 6, 'ea5cbd64-0d03-4bf2-bff1-7186a68f648d', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-14 05:57:53', '2023-01-14 08:15:24', 0, '#8FE5B2', 'rgb(63, 113, 97)', 'rgb(57, 207, 231)', 'rgb(158, 34, 34)', '#B062CE', 0, 14, NULL, 'Welcome to our survey.', 0, '2023-01-14', '2023-02-14', NULL, NULL, '#EB2222'),
(260, 2, '9716f977-ac9c-48e1-8f85-db71a94018d6', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-24 15:20:27', '2023-01-24 15:20:27', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-24', '2023-02-24', NULL, NULL, NULL),
(261, 2, 'fd238cba-b3c2-4ed4-b2c8-666b2e093f10', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 07:13:39', '2023-01-27 07:13:39', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(262, 2, 'a41773e1-204e-43c9-960b-8d7f5adfe455', 'Untitldasdased', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 07:16:15', '2023-01-27 07:21:09', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, '#5F4848'),
(263, 2, '0c7f0193-3ff4-4781-be5d-4311639440b5', 'Website feedback survey template (copy)', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 1, '2023-01-27 07:27:08', '2023-01-27 07:27:08', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 5, NULL, 'We\'d love to hear your thoughts on our website. We value your feedback.', 0, NULL, NULL, NULL, NULL, NULL),
(264, 2, '5c9f557b-626d-4d0d-b697-387b2f5b1506', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 08:56:07', '2023-01-27 08:56:07', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(265, 2, '462d69f7-aa35-448f-a742-122c9415c7ba', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 09:00:35', '2023-01-27 09:00:35', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(266, 2, 'a4057aa9-1087-430f-912a-a7cdc211ac85', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 09:01:15', '2023-01-27 09:01:15', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(267, 2, '73e0f6f0-8ada-4c39-9488-4272e048e784', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 09:01:23', '2023-01-27 09:01:23', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(268, 2, '9acdc3be-8492-4c9f-a9f4-262ff646d1a7', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 09:01:48', '2023-01-27 09:01:48', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(269, 2, '51865d6a-39c6-4a7e-a40e-145fd2fbe8ce', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 09:05:05', '2023-01-27 09:05:05', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(270, 2, 'b9bf01cc-7821-47b6-becd-8dfff1cb63d1', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-27 09:07:57', '2023-01-27 09:07:57', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-27', '2023-02-27', NULL, NULL, NULL),
(271, 2, '3ad492c8-ee1b-443f-8c8b-a564e33b678e', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-30 05:47:35', '2023-01-30 05:47:35', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-30', '2023-03-02', NULL, NULL, NULL),
(272, 2, '91e5fac5-3710-41b3-b2e9-e5e360ec9489', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-30 07:25:13', '2023-01-30 07:25:13', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-30', '2023-03-02', NULL, NULL, NULL),
(273, 2, '84c735b1-c527-4c85-9c66-a274fcd94234', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-30 07:25:18', '2023-01-30 07:25:18', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-30', '2023-03-02', NULL, NULL, NULL),
(274, 2, '831367ae-0dc1-4c36-98e2-977afb177bd4', 'Untitled', 'en', 'Thank you for taking the time to complete this survey.', 0, NULL, NULL, NULL, 0, '2023-01-30 08:20:05', '2023-01-30 08:20:05', 0, '#303532', 'rgb(0, 0, 0)', 'rgb(23, 162, 184)', 'rgb(255, 255, 255)', '#FBFBFB', 0, 0, NULL, 'Welcome to our survey.', 0, '2023-01-30', '2023-03-02', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `plan_id`, `invoice_id`, `amount`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, 500, 'pending', NULL, '2022-02-14 12:51:52', '2022-02-14 12:51:52'),
(2, 3, 2, NULL, 500, 'pending', NULL, '2022-04-28 10:07:52', '2022-04-28 10:07:52'),
(3, 3, 3, NULL, 2500, 'approved', 'test', '2022-08-22 17:50:18', '2022-08-22 17:55:02'),
(4, 85, 2, NULL, 500, 'approved', 'test pament', '2022-08-22 18:00:59', '2022-08-22 18:01:14'),
(5, 118, 2, NULL, 500, 'approved', NULL, '2023-01-27 07:30:46', '2023-01-27 10:30:46'),
(6, 118, 3, NULL, 500, 'approved', 'test', '2023-01-27 07:32:28', '2023-01-27 07:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `plan_id`, `language_id`, `address`) VALUES
(1, 'Admin', 'admin@demo.com', '2023-01-27 00:20:21', '$2y$10$rYT2Y/MJhfK/lhxhpayZaeTMLs94ePU9efaIoMwvJ0vMJ3Tq0ZMWW', NULL, '2021-06-16 14:50:21', '2021-06-16 14:50:21', NULL, NULL, NULL),
(2, 'davis', 'davisthomas003@gmail.com', '2022-05-14 16:49:35', '$2y$10$rYT2Y/MJhfK/lhxhpayZaeTMLs94ePU9efaIoMwvJ0vMJ3Tq0ZMWW', NULL, '2021-06-17 05:09:18', '2022-05-14 16:49:35', 3, NULL, NULL),
(3, 'Rahul R', 'pingrahulraj@gmail.com', '2022-05-13 12:37:44', '$2y$10$GSyJuXUcvd4VJ2/XIAwSjur2RozRBIapDaM/Lz3jHSFXfnFbI7JA.', NULL, '2021-06-17 05:41:17', '2022-05-13 12:37:44', NULL, NULL, NULL),
(4, 'Tony George', 'j.tonygeorge@gmail.com', '2023-01-12 03:51:11', '$2y$10$SEHGqKR20H/WCo3q3S/pu.Xzca8oRyiYDHKlrW.o9Xpahzp7MzaUy', 'zHW8IJlgCwLZo4W4WDCDmJniu8QxVDheJMSo4ENa3fR2EXhnbfc45WM62WRm', '2021-06-19 04:06:56', '2023-01-12 03:51:11', NULL, NULL, NULL),
(5, 'Tommy', 'tommy.joseph@segbyte.com', NULL, '$2y$10$OMaaRzkk2Tr1Ar2aVGaKHujHnCHRvaZDXknR6HG3xsBfZObMMVcvq', NULL, '2021-06-22 11:53:34', '2021-06-22 11:53:34', NULL, NULL, NULL),
(6, 'darryl', 'darryl.tjoseph@gmail.com', '2022-05-23 15:44:37', '$2y$10$GCbxbMNMPl2O4swvQlvCCuI6PJZ.Ma1Raeu/0nlahiNM/RcpWDq5i', 'K62gHluqlyqB8K7sk3vP8rfx4ggZFSXDC4ERyPEwHFrA88V5HLa5zSY4IgkL', '2021-06-23 07:54:36', '2023-01-14 05:25:02', NULL, NULL, NULL),
(7, 'Ajeet Kumar', 'nextrahost1@gmail.com', NULL, '$2y$10$nXKTeaECMr42rKBniPe2xO2YE08lerGI3OUcDP0bCSOvOEN7F7m7C', NULL, '2021-06-23 12:03:19', '2021-06-23 12:03:19', NULL, NULL, NULL),
(8, 'Demo', 'demo@demo.com', NULL, '$2y$10$i1w0LNztqhTgOqTZAaVrauweWonvKVvApPKgK9UbzvmcLwLgIF2si', NULL, '2021-06-26 14:07:53', '2021-06-26 14:07:53', NULL, NULL, NULL),
(9, 'Hari', 'hari@deienami.com', NULL, '$2y$10$XOKw0mdgaNGTyFGkOlcpIOxZ3Sx9OYjvto/Pm3tZ7G8b/aXmZs90u', NULL, '2021-06-26 15:38:11', '2021-06-26 15:38:11', NULL, NULL, NULL),
(10, 'KHkvERrTtfIu', 'amyfetter35@gmail.com', NULL, '$2y$10$BKPUwLIBFmrksFjJOIz5b.nqhflW1Abm27UaO/X0SCjT5rXukLKAa', NULL, '2021-06-27 23:35:00', '2021-06-27 23:35:00', NULL, NULL, NULL),
(11, 'Shibu', 'shibu@gmail.com', NULL, '$2y$10$p2IbUCdccTHt/LydjpI/ie74apYRyokAcpHqK87FS0LCwuptsKztC', NULL, '2021-06-29 19:30:28', '2021-06-29 19:30:28', NULL, NULL, NULL),
(12, 'FflRHGgOWTNDkPx', 'edwardshashim1@gmail.com', NULL, '$2y$10$1cvJp6n1QiWEw6.0.h/wZOBXqHeFaNit/kTNr.SYdqe/hYpiit15C', NULL, '2021-07-14 20:10:32', '2021-07-14 20:10:32', NULL, NULL, NULL),
(13, 'dpkeoYJBwtLum', 'kidefiesm@gmail.com', NULL, '$2y$10$ikTGLddQKyJYJyo/c9sHeu/wAYv/QH/8l2xq.8QFImz9gFqksXMZm', NULL, '2021-07-23 08:23:43', '2021-07-23 08:23:43', NULL, NULL, NULL),
(14, 'Davidbes', 'elregersistlo@mail.com', NULL, '$2y$10$HWyG595GzU0ButvP6DBxh.vJGFEpRblbRn4LQ8cA33PcmFwuRe.tO', NULL, '2021-07-29 01:51:54', '2021-07-29 01:51:54', NULL, NULL, NULL),
(15, 'Stevenania', 'freesunsidistben@mail.com', NULL, '$2y$10$1Z08BmJh42X3W6ZHJ5uqS.mLsrKv5ipnHFaLT8XPN2jtCcWlxxVXS', NULL, '2021-07-30 11:52:04', '2021-07-30 11:52:04', NULL, NULL, NULL),
(16, 'mFQMKXHPcUA', 'hp7162256@gmail.com', NULL, '$2y$10$hXRdgjJycODY0il3Bt3eB.bFT6CIJQG5l0qlQO8pmSCcXSgF2nv5u', NULL, '2021-07-30 14:41:40', '2021-07-30 14:41:40', NULL, NULL, NULL),
(17, 'Thomasbiame', 'diinordnusworkstat@mail.com', NULL, '$2y$10$s5iNwJ.m6Jy0WicSD16sXeS.LbvxSQ8gTrKcUVhV3lZjpZ3mMOWVy', NULL, '2021-08-01 03:35:52', '2021-08-01 03:35:52', NULL, NULL, NULL),
(18, 'Anthonyspady', 'theilaropjobspop@mail.com', NULL, '$2y$10$i7mAD7nkOcil./wH/kZF6eGBFQ2dMQfFn/jV2x5eUFybi4baKqDBm', NULL, '2021-08-08 11:34:19', '2021-08-08 11:34:19', NULL, NULL, NULL),
(19, 'AJByeKnIaoNm', 'josephwiggins8774@gmail.com', NULL, '$2y$10$4QrRQmMJPwH9nKCfAgddEecn/HVKt8ENcQlOBkILqxMYoKZnLbHUC', NULL, '2021-08-13 21:15:40', '2021-08-13 21:15:40', NULL, NULL, NULL),
(20, 'syam', 'syam@in.netroxe.com', NULL, '$2y$10$zX5XiXT9sxlM6rXo8pfDJeI3ImFPa01smsqmr35kK45ift5BHwR5G', NULL, '2021-08-18 13:11:10', '2021-08-18 13:11:10', NULL, NULL, NULL),
(21, 'qPbTVIFeB', 'bs9213587@gmail.com', NULL, '$2y$10$jJCWQOp3prfSeKPmkXguoemb8haL2LLNEGuMJRC.IWeLwzNOBgRBq', NULL, '2021-08-20 15:35:37', '2021-08-20 15:35:37', NULL, NULL, NULL),
(22, 'StVEcnFrdIMl', 'joannawalsh72@gmail.com', NULL, '$2y$10$469e3.a5/vPxEAqEGOFcL.Klk.j32BoJHzlg4l2g/bM7hu9hR0k8G', NULL, '2021-08-28 10:18:47', '2021-08-28 10:18:47', NULL, NULL, NULL),
(23, 'heqjExmznJficSGy', 'hamidcarmellaw9r5l7qi@gmail.com', NULL, '$2y$10$9s0quVcqVAjSO3LOZhYY9OovsBWcySkHp/ivfbvWxxSa18KdE1kju', NULL, '2021-09-04 15:19:58', '2021-09-04 15:19:58', NULL, NULL, NULL),
(24, 'prohas', 'glukhina.1998@mail.ru', NULL, '$2y$10$CQwdpYFauwfaQTDBFG45XeL59X89Rh.Fp9p1uVllyArwGLTLop36S', NULL, '2021-09-15 13:03:38', '2021-09-15 13:03:38', NULL, NULL, NULL),
(25, 'MLPUKtGqOkWZc', 'darlasularq720t7q4608@gmail.com', NULL, '$2y$10$uQgFoQ1LWhyaIx0RhNFxmeUER2h8HXdUMQX5kCTcKGwU8I2X9done', NULL, '2021-09-17 06:57:21', '2021-09-17 06:57:21', NULL, NULL, NULL),
(26, 'Samanta Pfeffer', 'Ed46@yahoo.com', NULL, '$2y$10$rYqGNfWCZw0.VSz/QUdHDuCN.riv7Q0iym2sGp2gJhgthI97WUzCy', NULL, '2021-10-05 02:16:26', '2021-10-05 02:16:26', NULL, NULL, NULL),
(27, 'GypuSFKmqQRBhtwZ', 'magdaiahrptu03@gmail.com', NULL, '$2y$10$cZb4hswaYMhHvPiVkNf/cud1TI55jfNFJHWZ4EDeLU04EI8d/7lty', NULL, '2021-10-11 07:05:41', '2021-10-11 07:05:41', NULL, NULL, NULL),
(28, 'zgOCYtEe', 'aloysiaxhqfl32@gmail.com', NULL, '$2y$10$5HjqXK68vnGPfx9u6a01auKI5gLTt7CbzV.AWtUTzJC5Dg3VVg./i', NULL, '2021-10-18 22:55:39', '2021-10-18 22:55:39', NULL, NULL, NULL),
(29, 'Beverly Douglas', 'melanie.schnidrig@hotmail.ca', NULL, '$2y$10$Cg5TuuoIiLp6Y8cRu08yDe4NWSsZL8QOjVVQtOBuKN4XZ/ZYQ3bru', NULL, '2021-10-24 16:33:41', '2021-10-24 16:33:41', NULL, NULL, NULL),
(30, 'MlUbQhwHejYiD', 'elnorafsirv04@gmail.com', NULL, '$2y$10$XJFYCrOlTUZGikR70tEKVed2OvznqOutCR4.OAniezNFb.LAS76Vm', NULL, '2021-10-27 03:25:36', '2021-10-27 03:25:36', NULL, NULL, NULL),
(31, 'Guillermo Stark', 'rvplifestyle@gmail.com', NULL, '$2y$10$UH6I32XM4HpOAlvuHMtp7.3wNhwyhAO3YZ59xWh6jpNOL.lmDbMK6', NULL, '2021-11-01 14:26:13', '2021-11-01 14:26:13', NULL, NULL, NULL),
(32, 'MGqUiYypkKQwghNz', 'donaldfreeman7746@gmail.com', NULL, '$2y$10$DH3PsVs6xPIIlPGDKher9.R8ymKTjn4mQWeMfVaC5k7D3I9EjZge6', NULL, '2021-11-07 09:34:27', '2021-11-07 09:34:27', NULL, NULL, NULL),
(33, 'Juanita Zieme IV', 'joecoolnow@yahoo.com', NULL, '$2y$10$zfJXLa/7Mtg9ZZzBTqlOjuWFcW4D6oDuTlD3N4GOGeFpmqWqHX6wu', NULL, '2021-11-08 21:52:00', '2021-11-08 21:52:00', NULL, NULL, NULL),
(34, 'Irvin Beahan', 'splajer12@yahoo.com', NULL, '$2y$10$ako0CA2dVsOQpI90QDPxluVy//oLyukPYOEb31JsTcV00mHeDkwtS', NULL, '2021-11-11 12:46:32', '2021-11-11 12:46:32', NULL, NULL, NULL),
(35, 'Margie Schmeler', 'steve.j.collett@gmail.com', NULL, '$2y$10$7Kt1ht1fmmgfkbbWTOkm/e.S9L89jp6V6GV1/S7y/nLvxcvVoLFsa', NULL, '2021-11-16 22:58:59', '2021-11-16 22:58:59', NULL, NULL, NULL),
(36, 'zXkRnfhgBvVN', 'DesireeAllenK@gmail.com', NULL, '$2y$10$d6f6L5RaD0xt2131Z0zXp.XKe7Vl0BQt73y.g5z45z3pF5Dubc8lm', NULL, '2021-11-21 22:31:10', '2021-11-21 22:31:10', NULL, NULL, NULL),
(37, 'Otis Langosh', 'rosentyler@hotmail.com', NULL, '$2y$10$3HkAyFZDtkk468wg5nmMe.ocPc8sdUQQEfevqN9xOxwRP2eyNW9C.', NULL, '2021-11-23 03:04:37', '2021-11-23 03:04:37', NULL, NULL, NULL),
(38, 'Willis Keeling DDS', 'renardgilmore@gmail.com', NULL, '$2y$10$gzlvEK7eWcHmA1HxVvsS/.gTy7nV/.wX7rKOTjLQq/DfpR46nD7iW', NULL, '2021-12-06 17:46:25', '2021-12-06 17:46:25', NULL, NULL, NULL),
(39, 'Mr. Edmund Reinger', 'judyxykam@gmail.com', NULL, '$2y$10$3kFWWVs35J34wNXAyQDN/uzQjeBBe7vD0q03wJ3pWrjWs8tQYpEk2', NULL, '2021-12-11 05:58:14', '2021-12-11 05:58:14', NULL, NULL, NULL),
(40, 'gFLphNbC', 'JamesEasterlings75@gmail.com', NULL, '$2y$10$QSXngybabsZw6aEFctNh8OU7cgigG6cDRV7AFCxS1NIBWjdsx9TXi', NULL, '2021-12-13 05:32:12', '2021-12-13 05:32:12', NULL, NULL, NULL),
(41, 'Herman Mante', 'ddeancasey@aol.com', NULL, '$2y$10$yCN.6HivUK3DUo7.eucgC.JRUdR9C8N/c.rKnlQIkDcSRYBkHtq0K', NULL, '2021-12-17 01:40:40', '2021-12-17 01:40:40', NULL, NULL, NULL),
(42, 'Rick Predovic', 'nikellashkalb98@gmail.com', NULL, '$2y$10$VmOmWz2ZRJL/z7h6rH.AounkFyIOLilMeQaci8U5Omqw2I6GHGOAm', NULL, '2021-12-18 12:01:55', '2021-12-18 12:01:55', NULL, NULL, NULL),
(43, 'Leon Ullrich', 'info@autobahnfahrschule.com', NULL, '$2y$10$n4vCX7oLoRLzhoP9BYP4PeRuiNA/pvXlFHm9iLIRv4jt/LNDHgPYO', NULL, '2021-12-21 16:31:06', '2021-12-21 16:31:06', NULL, NULL, NULL),
(44, 'Nelson O\'Conner', 'wawalclark@aol.com', NULL, '$2y$10$Jl.FkToy6JuF8N22GjzY2ucwoXJ3LNkp.dw.jump7uV6Ysx2JOrhi', NULL, '2021-12-22 07:39:45', '2021-12-22 07:39:45', NULL, NULL, NULL),
(45, 'Ms. Sabina Bode', 'abbydarnae@gmail.com', NULL, '$2y$10$Ri2dpgwF.JVGQZNIWf9rEeYHJKoo98F.2tYIQC6UHbix8I4TQ2EHS', NULL, '2021-12-25 03:13:27', '2021-12-25 03:13:27', NULL, NULL, NULL),
(46, 'Betty Watsica Sr.', 'umeshernandez@gmail.com', NULL, '$2y$10$XCsOBxRNZE9MBhQ3V1DLOO.0UCBBvTy7.JsM252mgzPXcw/k6BfwC', NULL, '2021-12-31 04:52:24', '2021-12-31 04:52:24', NULL, NULL, NULL),
(47, 'Vito Upton', 'charleboismathieu@gmail.com', NULL, '$2y$10$sexTU6lCO2h22kuuSl8mbOEqkyv2Cqolyfx0cnlbYjvZZEu08rSxu', NULL, '2022-01-01 08:16:34', '2022-01-01 08:16:34', NULL, NULL, NULL),
(48, 'Eddie Balistreri', 'kristysmith216@yahoo.com', NULL, '$2y$10$NWbmhC79ilL3DhZJn5ApW.ur2GNEQ3NfRml.zbqLHlhz5EKv0sBDi', NULL, '2022-01-03 14:51:57', '2022-01-03 14:51:57', NULL, NULL, NULL),
(49, 'DmlZqaQytXd', 'belsie068@gmail.com', NULL, '$2y$10$O3Ter/ijbXdxKe8u9uJqqOJOrA.IH2NX3XWRyv.5/qnVkgcWi6R5G', NULL, '2022-01-03 17:00:40', '2022-01-03 17:00:40', NULL, NULL, NULL),
(50, 'Melissa Douglas', 'ldiamond201@gmail.com', NULL, '$2y$10$hceknSKZ2cYV0jZZ.6jZrexcjXv/52a6q5DXAYvkTOF2isWiNLy.i', NULL, '2022-01-09 18:51:31', '2022-01-09 18:51:31', NULL, NULL, NULL),
(52, 'wjBXgfMDCU', 'TraversRees@gmail.com', NULL, '$2y$10$ivJygaDa.QxNwzLu4R9D5OQmKTXxTw4/2W4iXrBZdH6PLaZto8pOq', NULL, '2022-01-13 15:30:14', '2022-01-13 15:30:14', NULL, NULL, NULL),
(53, 'mxUaPtpIKZdG', 'cummingsmosley659929@gmail.com', NULL, '$2y$10$1gH9rHmcmVk1CtNXnN3J5OzQzZy.B/OagDmXcYYRT3nFBPM6IqyFm', NULL, '2022-01-23 00:17:38', '2022-01-23 00:17:38', NULL, NULL, NULL),
(54, 'xdYfePkR', 'barkermurphy586705@gmail.com', NULL, '$2y$10$O2JHwVtGpQz.5uQFNwF.qeDaGoJJXxItOIiGQjmkOKAZ8dJjj53Va', NULL, '2022-01-31 03:40:30', '2022-01-31 03:40:30', NULL, NULL, NULL),
(55, 'Mrs. Pearl Carroll', 'lancecblick@yahoo.com', NULL, '$2y$10$xa6a14IWYK46wtExQnkaheq1Cjl.LiYlQEv1PMYTpIjFiExc1UeDS', NULL, '2022-02-03 23:13:02', '2022-02-03 23:13:02', NULL, NULL, NULL),
(56, 'wcybMWVCnTO', 'eskelinenftbirth@gmail.com', NULL, '$2y$10$Fl4qOfVAPHWCkHUagGVkZurVdTV6q6zcCrapg8aVIheEPITzx4K/a', NULL, '2022-02-08 10:31:24', '2022-02-08 10:31:24', NULL, NULL, NULL),
(57, 'Emanuel Dicki', 'vicv@rcn.com', NULL, '$2y$10$ZvVKerjN51D4eIGQVdbEReUU8Rw0gIixPS4LiuTqwFRoiQcEaMzRy', NULL, '2022-02-09 23:05:05', '2022-02-09 23:05:05', NULL, NULL, NULL),
(58, 'vdrXRgblJx', 'jgreenfhgf@gmail.com', NULL, '$2y$10$kr3UxkAITOiLzhQf0ZGbbeLxzIHQqM8.JYk5g/EF7xm5uki3uJLVy', NULL, '2022-02-16 14:37:44', '2022-02-16 14:37:44', NULL, NULL, NULL),
(59, 'Kevin Heller', 'trettind@yahoo.com', NULL, '$2y$10$25DU0cuOkuHJHftq4DFJG.EWU578tA8Fi0.QBMI1gLR8P6QaTOByG', NULL, '2022-02-17 14:39:44', '2022-02-17 14:39:44', NULL, NULL, NULL),
(60, 'Madyson Bogan', 'madball911@gmail.com', NULL, '$2y$10$Fthst6LEJxS/ygaE4OT9OeOTIqW/2b52gUfQcTC8dv.jCFW2XD5qi', NULL, '2022-02-22 12:07:24', '2022-02-22 12:07:24', NULL, NULL, NULL),
(61, 'ebin', 'ebin.esvee@gmail.com', NULL, '$2y$10$I5wkiz0MAbSBm1mxF/aROOk6QehhXRbfdHLTsUZZq4mAkL345JTUq', NULL, '2022-02-23 11:19:44', '2022-02-23 11:19:44', NULL, NULL, NULL),
(62, 'Myrtle Hessel MD', 'bergernlake@gmail.com', NULL, '$2y$10$NvqbfWT9OqVubE4f8yvbMuV2UbqCQsZW7eaSTN1neOLis7MsvOXx2', NULL, '2022-02-23 20:46:23', '2022-02-23 20:46:23', NULL, NULL, NULL),
(63, 'Davis', 'davis@gmail.com', NULL, '$2y$10$aLw3ykVtHaKELkQw3WEg/.3OdlB0twR.vU.LJN8pwfhG76R/T8gQ6', NULL, '2022-02-24 03:44:50', '2022-02-24 03:44:50', NULL, NULL, NULL),
(64, 'Darryl', 'riya.arch09@gmail.com', NULL, '$2y$10$5Nei//Cl/R5ZLdh.raAtpOWocMNFcrgU2bLi0RjQ1IGiAHqzSAJh.', NULL, '2022-02-24 06:29:34', '2022-02-24 06:30:15', NULL, NULL, NULL),
(65, 'Kristie Becker', 'mfkrope@aol.com', NULL, '$2y$10$ejc4NTR0.QbBE7OV0lLUS.BVw9hJ8CiXQcpmeEwVhTI7cLNBd8Iaa', NULL, '2022-02-24 08:12:22', '2022-02-24 08:12:22', NULL, NULL, NULL),
(66, 'Prashanth', 'prashanth@segbyte.com', NULL, '$2y$10$nZGUd/oSO0xVBz2dU0/P5unT7eJ2wAKwhj6ZIoMFDpCOUDQWtVAiO', NULL, '2022-02-26 07:33:55', '2022-02-26 07:33:55', NULL, NULL, NULL),
(67, 'nZFsGYcQdHNUxijf', 'jsaidku@gmail.com', NULL, '$2y$10$JFBRCXJLVXSknRr4e6UA/OAJc7c5AeGejr.mRRj/Uj2iSdMKJTr1G', NULL, '2022-03-07 11:50:45', '2022-03-07 11:50:45', NULL, NULL, NULL),
(68, 'Darryl', 'darrylt.joseph@hotmail.com', NULL, '$2y$10$RwG0BR9VhPBRYBJFF.M15.r4rUMON8/G/Qc/BTpuKWtkdzz9gM/z.', NULL, '2022-03-09 13:11:41', '2022-03-09 13:11:41', NULL, NULL, NULL),
(69, 'Akhil AP', 'akhilaptvm@gmail.com', NULL, '$2y$10$HnDL54a6GiWrR24YKnchLuVuTJsyKmmbya4ZEW6qMxa1I4wUYuQly', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'ritZOAFHCKdXQ', 'mitchellxjjxf@gmail.com', NULL, '$2y$10$pQpSzCXW8Xdf./j4.CCGX.ZIpULRwl1QseogMr0l7y9L/7eNVHJGe', NULL, '2022-03-21 02:35:24', '2022-03-21 02:35:24', NULL, NULL, NULL),
(71, 'rydGQmagnobRuD', 'asiki3896@gmail.com', NULL, '$2y$10$ADL8joa43rfB1Ntb7LaljuYss4YSLvKD1tVo.RSGUjCJqmzPw3bv2', NULL, '2022-03-28 04:53:39', '2022-03-28 04:53:39', NULL, NULL, NULL),
(72, 'Akhil', 'akhil@netroxe.com', NULL, '$2y$10$SP59hjAgEmjSF8ovNu6c4uF7CZrWQdwuypZewJKmIC9QSVJ780Ym2', NULL, '2022-03-28 14:18:06', '2022-03-28 14:18:06', NULL, NULL, NULL),
(73, 'ctCLaAmDTI', 'rkellyg81@gmail.com', NULL, '$2y$10$Qmf1FIf7ZGM9opbh0guFJulfrIy9XU7PFUQ5KemLlXcBHvz3Jlz3q', NULL, '2022-04-02 19:21:07', '2022-04-02 19:21:07', NULL, NULL, NULL),
(74, 'YiWmlaJqNUOxRZ', 'ririefikrianiririefikriani429@gmail.com', NULL, '$2y$10$UvAlODD9rrQ/8dxq25AUj.X5.TgpOemkcPasIZR9Gv1JRwZ/t.106', NULL, '2022-04-10 07:58:44', '2022-04-10 07:58:44', NULL, NULL, NULL),
(75, 'yJZeRXajduiUW', 'vatangullu4@gmail.com', NULL, '$2y$10$CiWJ01KweOnSZfqHcZxDi./YcHaVg1P7PAyWbzoqXDQOvbPh7dMCW', NULL, '2022-04-16 00:57:55', '2022-04-16 00:57:55', NULL, NULL, NULL),
(76, 'oUpEsLtwSuen', 'astaturgeln@gmail.com', NULL, '$2y$10$0I3O0CBds7JE.yxfw.K8RunrV9rtV9nAM7mSKzabhClqzzpu0YjZ6', NULL, '2022-04-22 14:21:04', '2022-04-22 14:21:04', NULL, NULL, NULL),
(77, 'dCgryPkecbnxXD', 'Aekaterinaodorothyic8977@gmail.com', NULL, '$2y$10$E1qJrkb6m/1TtpQ1/W7qP.oEVc/OX3..Q7JQ78ggiBiTVpDI65vpi', NULL, '2022-05-06 14:57:57', '2022-05-06 14:57:57', NULL, NULL, NULL),
(78, 'Tony', 'jezmikhtrading@gmail.com', '2022-05-17 09:00:37', '$2y$10$wp7UIYRlIjDaXZ.Vaxa9E.jP8hUXTgtfwbRZsTT.KYcxJQOsmTLJu', NULL, '2022-05-09 13:52:29', '2022-05-17 09:00:37', NULL, NULL, NULL),
(79, 'Darryl', 'darryltommy@me.com', NULL, '$2y$10$hjhs8uxIw5hCKOiDVayOLugzQm.j0rP.5v38KvZ7Pl54t7qz5nifq', NULL, '2022-05-09 13:52:40', '2022-05-09 13:52:40', NULL, NULL, NULL),
(80, 'Davis G', 'davisg@g.com', NULL, '$2y$10$SMkgmx3SCSOiDkaPt1MM/.4N6IZJYg.ilFkZqcJHUpRg4H9NMZBaS', NULL, '2022-05-09 14:01:32', '2022-05-09 14:01:32', NULL, NULL, NULL),
(82, 'Abhiram', 'davis@mcbirdtechnologies.com', '2022-05-14 17:16:42', '$2y$10$2UzUtJ5.8I/zNS0YQIwOKOZWKDUIx8EeZGUK75tHmfki1x/rUUEVi', NULL, '2022-05-09 14:01:52', '2022-05-14 17:16:42', NULL, NULL, NULL),
(83, 'RnYWMuCjJtyps', 'facehosre006@gmail.com', NULL, '$2y$10$RPiyTm4AfBOieLgGcEvpDOiVUDX/7/N2ju//eC71LmyysucVsb3U6', NULL, '2022-05-13 22:36:43', '2022-05-13 22:36:43', NULL, NULL, NULL),
(85, 'Prashanth', 'radikkals@gmail.com', '2022-05-14 17:13:54', '$2y$10$QLNziOlZGz43XL3jwqNp1uVqxoC2j0HmLJ7CWbRiimb8CjDnyLDpK', 'xj83sz6ZRFfOWhsDu6PLFxfX20bNBIgfY4SEV9UdnFpURNYyKCx734o5DMtF', '2022-05-14 17:13:39', '2022-10-02 16:56:35', NULL, 1, NULL),
(87, 'WtgRBYdlbHN', 'deckowrwkirkbq@gmail.com', NULL, '$2y$10$WQRpNSe997nH6USD2.huCeZCi1dT77ouaRuBoM1dJK/YaRiYW7n.q', NULL, '2022-05-25 10:25:50', '2022-05-25 10:25:50', NULL, NULL, NULL),
(89, 'IQwsvYSyxtM', 'shoshaneu0d47a808x@outlook.com', NULL, '$2y$10$xS1IQcULJEDTazf0cLm1yO1WtuWMn9H5fDXeJe9ucXp8SXjXQCh1O', NULL, '2022-06-28 13:50:42', '2022-06-28 13:50:42', NULL, NULL, NULL),
(90, 'ROAUQspIeiLdjz', 'shellinao9l6258d6t@outlook.com', NULL, '$2y$10$FjaFyFbxGF2PXSzeHH3.O.V2qAN02Hrri.5DbqRoQDhe4Q7hJOWoi', NULL, '2022-07-14 01:37:35', '2022-07-14 01:37:35', NULL, NULL, NULL),
(91, 'qZWiEDHL', 'jerrardmi18uie85m@outlook.com', NULL, '$2y$10$7Tpo.DMWQ1xIQOAGFd5yXOVWB8Ma4nBHBI9e/KoSuL0./HXu9MXHq', NULL, '2022-07-30 08:06:55', '2022-07-30 08:06:55', NULL, NULL, NULL),
(92, 'Затруднительно знакомиться с девушками? Забудь об этом! Подберем тебе подходящую https://apple.com', 'likax9yev@mail.ru', NULL, '$2y$10$fAU.r145RGB203.xfkBVReVyobNkBk72g2JIRfdPYHITrY3nV2XKq', NULL, '2022-08-12 00:17:04', '2022-08-12 00:17:04', NULL, NULL, NULL),
(93, 'GwnXogyC', 'kerin3i5ozk47e852@outlook.com', NULL, '$2y$10$WQWAxfb9fdXYelv9oyViHeLyTnHixLY.9Hau0crhXUdt6GFZWYAFO', NULL, '2022-08-15 12:24:59', '2022-08-15 12:24:59', NULL, NULL, NULL),
(94, 'Victoria Dickinson', 'Erica388_Hagenes_1987@alabamahomenetwoks.com', NULL, '$2y$10$EimUHTRiE3XZy62GRL0/iuGVsWnPUCm667Ug43M2MTUpTOnywgu0m', NULL, '2022-08-29 12:06:48', '2022-08-29 12:06:48', NULL, NULL, NULL),
(95, 'Cindy Jones', 'Britney327_Bergstrom_2007@alabamahomenetwoks.com', NULL, '$2y$10$YGHOSUu9ulwQ35neDsvAvOT6c3it0kchqkMbL3btiNByJOuRtr7CC', NULL, '2022-08-29 12:06:49', '2022-08-29 12:06:49', NULL, NULL, NULL),
(96, 'Leah Schowalter', 'Arch746_Kemmer_1996@alabamahomenetwoks.com', NULL, '$2y$10$odXGxWrZ/x9GCF5xeo18ruxCv.UyRp3/1NIi2KbW/r7O0pyXU4ooe', NULL, '2022-08-29 12:06:52', '2022-08-29 12:06:52', NULL, NULL, NULL),
(97, 'Daisy Rohan V', 'Aniya935_Schimmel1985@alabamahomenetwoks.com', NULL, '$2y$10$io1tph8p.OSHgZjJb3pfhuyV08nKgUM8lumZke83qIxR3102X3sk2', NULL, '2022-08-29 12:06:53', '2022-08-29 12:06:53', NULL, NULL, NULL),
(98, 'Elena Lemke', 'Verner815Hilpert.1963@alabamahomenetwoks.com', NULL, '$2y$10$e0iSkgpikbnOTZDUOIV6UOtqXB3Arg7hYrSsHlN8/kIaDIw4WmKAe', NULL, '2022-08-29 12:06:55', '2022-08-29 12:06:55', NULL, NULL, NULL),
(99, 'Ms. Sherri Bartoletti', 'Easter677Bergnaum_1972@alabamahomenetwoks.com', NULL, '$2y$10$I.E4Q5NWoEjeJTFbO.BVDege3EURVeGx2paBwv6BBFg9E8tX1cCya', NULL, '2022-08-29 12:06:58', '2022-08-29 12:06:58', NULL, NULL, NULL),
(100, 'Stephanie Pfeffer', 'kwechlo@gmail.com', NULL, '$2y$10$wp3.4j4febTxq/gfjDax0e9HW4hjRWJS6bktuinttHQondR.CIW.S', NULL, '2022-08-30 19:09:54', '2022-08-30 19:09:54', NULL, NULL, NULL),
(101, 'PMghupowtRdjDN', 'angelise8ey4qo619@outlook.com', NULL, '$2y$10$08/5I4p5gJCJsMpznMU7Je/5zy6vJyLfiv/T3rKkllikD3RlT8Y02', NULL, '2022-09-01 09:24:28', '2022-09-01 09:24:28', NULL, NULL, NULL),
(102, 'IPOJDmtxskKj', 'aaideay5u40586sv@outlook.com', NULL, '$2y$10$FHM2E1ShjYtLOmCfE6bkHed8xDGv6/NyrJ9T9HhQZwKOeG8QthLzS', NULL, '2022-09-05 14:48:28', '2022-09-05 14:48:28', NULL, NULL, NULL),
(103, 'OwVrkAQItZsT', 'aanishaa502a8267r@outlook.com', NULL, '$2y$10$ESmiOHM2PCYzs2y7k5CHEOVAH1HJjA4Gdi7X2fjHcOBeZK1oxZydO', NULL, '2022-09-13 05:18:20', '2022-09-13 05:18:20', NULL, NULL, NULL),
(104, 'lMPKkvxeFR', 'gtivono2e4k1ugf1e1uo@outlook.com', NULL, '$2y$10$JIF8A6u6ov5SetNCWrhL4eCmO4TxU4bR9doOO8y3ZjUrCfYtED002', NULL, '2022-09-21 18:28:53', '2022-09-21 18:28:53', NULL, NULL, NULL),
(105, 'hGLoOtTwdsi', 'fkedrick4y2f4o6v@outlook.com', NULL, '$2y$10$QBRERwXZk/2R2ESW.Vl/f.f4Lw4tSpfKK17VMIL3/mUSJs6/F.Ys6', NULL, '2022-09-25 17:19:46', '2022-09-25 17:19:46', NULL, NULL, NULL),
(106, 'RKAndqcCJSZhULHN', 'vlosipov75k@outlook.com', NULL, '$2y$10$.sVlihYF8iOooPD2TJkZ8O3rdnEebv8PJyE/UGPfleQeKsUul3N1S', NULL, '2022-10-10 18:01:37', '2022-10-10 18:01:37', NULL, NULL, NULL),
(107, 'ioRdVutnyDgv', 'aleksandrvesys@outlook.com', NULL, '$2y$10$sxiAUdX3ih1WHh7ey9rFsOZGECukK31lFK3HiqYGYiQBRSrJT.7pu', NULL, '2022-10-18 02:21:30', '2022-10-18 02:21:30', NULL, NULL, NULL),
(108, 'AFuIdCkQf', 'artyomlogq5t@outlook.com', NULL, '$2y$10$6FG.jUOmOzdiGITOTOQN1eQgIo2l/lcCmZ3b/cZKO0KrkDOSmvQpm', NULL, '2022-10-24 18:23:59', '2022-10-24 18:23:59', NULL, NULL, NULL),
(109, 'rVmBgkFs', 'teresaanita0fw@hotmail.com', NULL, '$2y$10$1H4SbC1Yr5jSRo/hTVO9V.0dPYURBBNw/fDCsdPTChELXa0icxcz.', NULL, '2022-11-02 05:48:44', '2022-11-02 05:48:44', NULL, NULL, NULL),
(110, 'iNTOkHJKjdBZy', 'trudierose3v@outlook.com', NULL, '$2y$10$6aiOy4dsdB4tVO7.OYPVdOM.Xwd1Jjx0ZlNXw5jVNRRU..v0YLZIi', NULL, '2022-11-07 13:41:37', '2022-11-07 13:41:37', NULL, NULL, NULL),
(111, 'NufhedjiwidjwjdwihdisjadhuijdaodejguhweikabfdJIDHWIAUFAWFAWHFAAJDIHIjifheifjeifhwodjssfhuiifiwswhdusfi forms.segbyte.com', 'g.e.ral.dk.umsert@gmail.com', NULL, '$2y$10$6rq9zuS2hAUTbA5jtgQoXe2tbBZTAlaOw0qPNfSkpVvv02UptUQiG', NULL, '2022-11-11 10:43:02', '2022-11-11 10:43:02', NULL, NULL, NULL),
(112, 'LeubkFBntMGcSOCE', 'hirboneruq@outlook.com', NULL, '$2y$10$NiVSWpO5cRUjZnZwyKY5K.t4UZnpwF2E8r1vxvv3oRS15OFG.N7o.', NULL, '2022-11-24 20:44:44', '2022-11-24 20:44:44', NULL, NULL, NULL),
(113, 'gpShCoxyTWKuVNeM', 'padwehipox@outlook.com', NULL, '$2y$10$XGflhmxfv8/xz5.J615ah.G1oD0W1C7TyKYBhu52bW/v0nhlsG6Uq', NULL, '2022-12-04 06:03:33', '2022-12-04 06:03:33', NULL, NULL, NULL),
(114, 'MuzcwxFXPGyoR', 'ramnunuxas@outlook.com', NULL, '$2y$10$sWPAwnpIL92T34F0v/It8.Jl2AkVJjJBxIJqwsp8O7WB34vDzaObq', NULL, '2022-12-18 16:27:49', '2022-12-18 16:27:49', NULL, NULL, NULL),
(115, 'gZHQYtVzxRKTPC', 'idenoldo1975@outlook.com', NULL, '$2y$10$zgLiWqKbhEe0kF6Ev20Tp.NqnKjerXu4jHQw6dF9LBYx4ukxljSBC', NULL, '2023-01-04 23:35:04', '2023-01-04 23:35:04', NULL, NULL, NULL),
(116, 'Zeeshan', 'zeeshan.ansari@mcbirdtechnologies.com', '2023-01-24 15:11:59', '$2y$10$S6UvKta1S1TMI2D5vfsaEec4yV1/QGgkUODwmes3ueLZLAX1HfIhG', NULL, '2023-01-24 15:11:33', '2023-01-24 15:11:59', NULL, NULL, NULL),
(117, 'demouser', 'demoadmin@922.com', NULL, '$2y$10$Ovl3gx9P/guFiHp8s9gXOOiclpB.jkPWIppfLjkw.VrWp4JbW3l.S', NULL, '2023-01-27 06:51:32', '2023-01-27 06:51:32', NULL, NULL, NULL),
(118, 'test', 'test@922.com', '2023-01-26 18:30:00', '$2y$10$EDeqC/uOxab2PZQ45G/KaObdBvJDTyH2NroVyfbx95GYQQGsEa4eu', NULL, '2023-01-27 07:02:43', '2023-01-27 07:02:43', NULL, NULL, NULL),
(119, 'fdasfda', 'fdafa@922.com', '2023-01-27 14:17:12', '$2y$10$UTY.DwseSB.dm.T7QdS41...3mtWLbgCVUexKRzohUfm/xuXlqjAC', NULL, '2023-01-27 08:46:48', '2023-01-27 08:46:48', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendees_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `extensions_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_code_unique` (`code`);

--
-- Indexes for table `plan_options`
--
ALTER TABLE `plan_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_options_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responses_survey_id_foreign` (`survey_id`),
  ADD KEY `responses_attendee_id_foreign` (`attendee_id`),
  ADD KEY `responses_question_id_foreign` (`question_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveys_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_plan_id_foreign` (`plan_id`),
  ADD KEY `users_language_id_foreign` (`language_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plan_options`
--
ALTER TABLE `plan_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=816;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendees`
--
ALTER TABLE `attendees`
  ADD CONSTRAINT `attendees_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_options`
--
ALTER TABLE `plan_options`
  ADD CONSTRAINT `plan_options_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_attendee_id_foreign` FOREIGN KEY (`attendee_id`) REFERENCES `attendees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `surveys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"allegiant\",\"table\":\"questionnaire_options\"},{\"db\":\"allegiant\",\"table\":\"user_extra_details\"},{\"db\":\"allegiant\",\"table\":\"user_questionnaire_answers\"},{\"db\":\"allegiant\",\"table\":\"split_info\"},{\"db\":\"allegiant\",\"table\":\"users\"},{\"db\":\"allegiant\",\"table\":\"user_questionnaire_answers_histories\"},{\"db\":\"allegiant\",\"table\":\"sms_scheduleds\"},{\"db\":\"allegiant\",\"table\":\"otp_histories\"},{\"db\":\"allegiant\",\"table\":\"banks\"},{\"db\":\"allegiant\",\"table\":\"user_banks\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-25 10:32:48', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `udd`
--
CREATE DATABASE IF NOT EXISTS `udd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `udd`;

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
