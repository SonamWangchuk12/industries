-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 10:19 AM
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
-- Database: `buildings`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `created_at`, `updated_at`, `content`) VALUES
(6, '<script>alert(55)</script>', '2022-09-23 03:29:38', '2022-10-09 23:35:05', '<p>&lt;script&gt;alert(55)&lt;/script&gt;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'dasdas', 'dasdasdas', '2022-09-23 03:32:18', '2022-09-23 03:32:18'),
(3, 'dsadas', 'adsadasda', '2022-09-23 03:42:47', '2022-09-23 03:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_establishments`
--

CREATE TABLE `admin_establishments` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_establishments`
--

INSERT INTO `admin_establishments` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'dasdasd', 'asdadasda', '2022-09-23 03:41:53', '2022-09-23 03:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `architect_wings`
--

CREATE TABLE `architect_wings` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `circulars`
--

CREATE TABLE `circulars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `civil_enggs`
--

CREATE TABLE `civil_enggs` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `civil_enggs`
--

INSERT INTO `civil_enggs` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'asdasdas', 'dsadasdas', '2022-09-23 03:39:12', '2022-09-23 03:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `cmdatas`
--

CREATE TABLE `cmdatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmdatas`
--

INSERT INTO `cmdatas` (`id`, `created_at`, `updated_at`, `message`, `name`, `designation`, `photo`) VALUES
(5, '2021-08-24 10:54:42', '2021-12-13 01:22:24', 'null', 'Shri Prem Singh Tamang (Golay)', 'Hon’ble Chief Minister', 'Pl8c3dPBVxSGoYdKSupsp53HdwZectlEDDx55bcI.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `demands`
--

CREATE TABLE `demands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `electrical_wings`
--

CREATE TABLE `electrical_wings` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electrical_wings`
--

INSERT INTO `electrical_wings` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'dasdasdas', 'saddadasd', '2022-09-23 03:37:59', '2022-09-23 03:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `employee_lists`
--

CREATE TABLE `employee_lists` (
  `id` int(11) NOT NULL,
  `name` varchar(131) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_lists`
--

INSERT INTO `employee_lists` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'asdasdasda', '<p>asdasdasd</p>', '2022-10-14 00:04:39', '2022-10-14 00:04:39');

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
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 'ssss', 'formsdoc-6R4SYlvDy8HsnIXmG8zjcBkwTdX4JqgUq0xCbj6n.jpg', '2021-12-20 01:02:42', '2021-12-20 01:02:42'),
(4, 'dasdasdafxz', 'formsdoc-DnwRzArQ2D1Q1FAzdV8RyLkG7UyY0yo042poa4e1.jpg', '2022-09-23 03:32:42', '2022-09-23 03:32:42'),
(5, 'dfsafasfdas', 'formsdoc-2EoIRjDvabLTDvx1ziquSnhrqUD8ETZWUbR6WVD9.jpg', '2022-09-23 03:45:28', '2022-09-23 03:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `govdatas`
--

CREATE TABLE `govdatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `govdatas`
--

INSERT INTO `govdatas` (`id`, `created_at`, `updated_at`, `message`, `name`, `designation`, `photo`) VALUES
(1, NULL, '2021-02-18 09:31:40', 'sadadasdasd', 'Shri Ganga Prasad', 'Hon\'ble Governer', 'H7onpdEOtUqdAKmSf5a2t8szkHzEZkg60iJv4B60.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `green_buildings`
--

CREATE TABLE `green_buildings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `green_buildings`
--

INSERT INTO `green_buildings` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, 'asdf', 'formsdoc-QJsC8GoDoHmRicQWZ0Prg6ojLs2gTgvPSzCdizMu.pdf', '2021-12-22 00:52:01', '2021-12-22 00:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `hoddatas`
--

CREATE TABLE `hoddatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoddatas`
--

INSERT INTO `hoddatas` (`id`, `created_at`, `updated_at`, `message`, `name`, `designation`, `photo`) VALUES
(2, '2020-11-08 23:30:23', '2021-02-18 09:33:14', 'sadadasdasd', 'Chairman', 'Chairman Of Dept', 'OA49QUJqDgd8Zel7YeSbWRbuCGm3B2OwJbsIjPBT.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `inside_projects`
--

CREATE TABLE `inside_projects` (
  `id` int(50) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inside_projects`
--

INSERT INTO `inside_projects` (`id`, `name`, `district_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'CHINTAN BHAWAN', 1, '<p><strong style=\"box-sizing: border-box; font-family: UnifrakturCook, cursive; font-size: 30px; color: #333333; text-align: justify;\">O</strong><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">ne of the landmark buildings in OGangtok, Chintan Bhawan is a venue for major government and non-government functions. This state-of-art building located at Nam Nam caters to conferences, meetings and seminars of national and international levels. It has hosted the Prime Minister, Union Ministers, renowned figures and other distinguished international luminaries.</span></p>', '2021-12-14 00:34:42', '2021-12-14 00:34:42'),
(5, 'Judiciary Complex and Court Buildings', 2, '<p><strong style=\"box-sizing: border-box; font-family: UnifrakturCook, cursive; font-size: 30px; color: #333333; text-align: justify;\">T</strong><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">he Government of Sikkim sanctioned the establishment of the new District &amp; Sessions Court and ADR building at Kyongsa, near Gyalshing in 2014-15. The project also included three residential buildings for the District &amp; Sessions Judge, Chief Judicial Magistrate and Judicial Magistrate at Tikjuk, Gyalshing. The total sanctioned cost was Rs. 19.71 crore. Construction work for the District &amp; Sessions Court and ADR building commenced in March, 2014 and was completed in 2016. The District &amp; Sessions Court building covers 16,524 sq ft with three courtrooms, library, record section, hazzat, canteen and other facilities as per requirement. The total built up area of the ADR building is 5,394 sq ft with provisions of office rooms, conference hall, etc. The complex has a huge parking area with boundary fencing, separate approach and a traditional gate. The work has been completed within the stipulated time in all respect in utmost satisfactory manner. Similarly, the three residential quarters for the District &amp; Sessions Judge, Chief Judicial Magistrate and Judicial Magistrate at Tikjuk was constructed and completed within stipulated day of March 18, 2016. The sanctioned cost of the entire Judiciary complex includes the cost of furniture and furnishing.</span></p>', '2021-12-16 00:58:08', '2021-12-16 00:58:08'),
(9, 'Government B.Ed College', 2, '<p><strong style=\"box-sizing: border-box; font-family: UnifrakturCook, cursive; font-size: 30px; color: #333333; text-align: justify;\">T</strong><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">he Government Science College complex was sanctioned at a total cost of Rs. 5.62 crore. The college is part of the State Government\'s mission to establish institutions of higher education in all districts so that students from remote areas do not need to come to Gangtok for college admission and can study in their own districts. It was later changed as a Government B.Ed College. The college has two main structures &ndash; Departmental Block and Administrative Block A. Departmental Block Ground floor: There are three classrooms, a computer room, a storeroom, six faculty rooms, toilets for ladies and gents, and a corridor. First floor: The floor has two laboratories for 50 students each, a general laboratory, a seminar hall, a HOD room, technical staff room, store, toilets for male and female, and a corridor. Second floor: The floor has a lecture hall, two research laboratories, a general laboratory, laboratory preparation room, technical staff room, store, toilets for male and female, and a corridor. B. Administrative block Ground floor: It consists of a reception, bank, health centre, kitchen/pantry, canteen/cafeteria, post office, PCO/Xerox room, cooperative shopping centre, electrical room, a wide corridor, and toilets for gents and ladies. First floor: The floor has a director\'s room, general office/accounts (3 nos), deputy director\'s room, a corridor, and toilets for male and female. Second floor: A computer centre, store/book binding, library Second floor: A computer centre, store/book binding, library, a wide corridor, and toilets for male and female.</span></p>', '2021-12-16 01:18:20', '2021-12-16 01:18:20'),
(10, 'dsadasdasdads', 1, '<p>asdasdsad</p>\r\n<p>dasdsad</p>\r\n<p>as</p>\r\n<p>das</p>\r\n<p>da</p>\r\n<p>sd</p>\r\n<p>asdasdasdasda</p>', '2022-07-22 01:18:35', '2022-07-22 01:18:35'),
(11, 'asdasdas', 1, 'asdasdas', '2022-09-23 03:31:11', '2022-09-23 03:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `inside_project_attachments`
--

CREATE TABLE `inside_project_attachments` (
  `id` int(11) NOT NULL,
  `project_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inside_project_attachments`
--

INSERT INTO `inside_project_attachments` (`id`, `project_id`, `district_id`, `created_at`, `updated_at`, `photo`) VALUES
(1, '12', 1, '2022-09-23 03:31:11', '2022-09-23 03:31:11', 'lXAyN2HYR8Olu7btYApaGS1X6qKEzKujuKHmxW10.jpg');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_07_085633_create_hoddatas_table', 1),
(5, '2020_11_07_085640_create_minisdatas_table', 1),
(6, '2020_11_07_085650_create_govdatas_table', 1),
(7, '2020_11_07_085658_create_cmdatas_table', 1),
(8, '2020_11_08_053148_create_abouts_table', 1),
(9, '2020_11_08_064445_create_notifications_table', 1),
(10, '2020_11_08_071409_create_tenders_table', 1),
(11, '2020_11_08_072054_create_circulars_table', 1),
(12, '2020_11_27_055043_create_users_table', 2),
(13, '2020_11_27_055400_create_users_table', 3),
(14, '2020_11_30_060744_create_sliders_table', 4),
(15, '2020_11_30_063149_create_sliders_table', 5),
(16, '2021_02_03_084928_create_archives_table', 6),
(17, '2021_02_08_054804_create_galleries_table', 7),
(18, '2021_02_18_061641_create_advisors_table', 7),
(19, '2021_02_18_074256_create_functions_of_cultures_table', 7),
(20, '2021_02_18_083254_create_functions_of_culture_attachments_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `minisdatas`
--

CREATE TABLE `minisdatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minisdatas`
--

INSERT INTO `minisdatas` (`id`, `created_at`, `updated_at`, `message`, `name`, `designation`, `photo`) VALUES
(5, '2022-09-23 03:28:41', '2022-09-23 03:28:41', '', 'dsafdasfa', 'fasfafa', 'minisphoto-iRBg3u0nzoFCbcXGVmGzF8JH59s6D9pYuFGQBAaE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `officer_lists`
--

CREATE TABLE `officer_lists` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officer_lists`
--

INSERT INTO `officer_lists` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'asdasdasdas', 'asdasdasdas', '2022-09-23 03:31:58', '2022-09-23 03:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `outside_projects`
--

CREATE TABLE `outside_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outside_projects`
--

INSERT INTO `outside_projects` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'dfasdfasdfas', 'dsafasfdsaf', '2022-09-23 03:47:29', '2022-09-23 03:47:29'),
(3, 'dsfdfs', '<p>fsdfdsfzdxvcxv</p>', '2022-10-21 02:22:39', '2022-10-21 02:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `outside_project_attachments`
--

CREATE TABLE `outside_project_attachments` (
  `id` int(11) NOT NULL,
  `project_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outside_project_attachments`
--

INSERT INTO `outside_project_attachments` (`id`, `project_id`, `created_at`, `updated_at`, `photo`) VALUES
(1, '1', '2021-12-22 00:31:23', '2021-12-22 00:31:23', 'dGpA7jH7CM0ja3fuOTZ1vTMOSI6JktcKgZAXY4sW.jpg'),
(2, '2', '2022-09-23 03:47:29', '2022-09-23 03:47:29', '0yIXvEph2QPvPtkTdo03FDpxh7Xy6ahDCloolCeA.jpg'),
(3, '3', '2022-10-21 02:22:39', '2022-10-21 02:22:39', '74n5GYBm3vYutlskLCdzzWSdGJJwNynxJSawrtMV.jpg'),
(4, '3', '2022-10-21 02:22:39', '2022-10-21 02:22:39', '7eHHMAJCtLLTf93kcHk03vQqicf7PVy5hKejzQOT.jpg'),
(5, '3', '2022-10-21 02:22:39', '2022-10-21 02:22:39', 'LoZaATvG0usXES1qXxWH8PEqGCWwUfezGxXN1YSD.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `received_complains`
--

CREATE TABLE `received_complains` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `subject` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `received_complains`
--

INSERT INTO `received_complains` (`id`, `name`, `email`, `phone`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'asdasd', 'asdasd@gmail.com', '123123', 'weqweqwe', '2022-06-15 01:12:00', '2022-06-15 01:12:00'),
(2, 'asdas', 'dasdasd@gmail.com', '454654654', 'asdasd', '2022-06-15 01:12:46', '2022-06-15 01:12:46'),
(3, 'asdas', 'dasdasd@gmail.com', '454654654', 'asdasd', '2022-06-15 01:12:48', '2022-06-15 01:12:48'),
(4, 'demo', 'demoadmin@gov.in', '123123', 'ewqeqwe', '2022-06-15 01:15:57', '2022-06-15 01:15:57'),
(5, 'demo', 'demoadmin@gov.in', '123123', 'ewqeqwe', '2022-06-15 01:16:00', '2022-06-15 01:16:00'),
(6, 'demo', 'demoadmin@gov.in', '123123', 'ewqeqwe', '2022-06-15 01:16:00', '2022-06-15 01:16:00'),
(7, 'demo', 'demoadmin@gov.in', '123123', 'ewqeqwe', '2022-06-15 01:16:01', '2022-06-15 01:16:01'),
(8, 'asdas', 'demoadmin@gov.in', '123123', 'sadasd', '2022-06-15 01:20:40', '2022-06-15 01:20:40'),
(9, 'sadasd', 'heathstnm@gov.in', '123123', 'sadasdasd', '2022-06-15 01:22:09', '2022-06-15 01:22:09'),
(10, 'sadasd', 'heathstnm@gov.in', '123123', 'sadasdasd', '2022-06-15 01:22:11', '2022-06-15 01:22:11'),
(11, 'asdasd', 'heathstnm@gov.in', '123123', 'sdasd', '2022-06-15 01:26:52', '2022-06-15 01:26:52'),
(12, 'demo', 'demoadmin@gov.in', '123123', 'sadasdasd', '2022-06-15 01:40:14', '2022-06-15 01:40:14'),
(13, 'demo', 'demoadmin@gov.in', '123123', 'fdsafdsafdsafas', '2022-06-15 01:42:41', '2022-06-15 01:42:41'),
(14, 'sdfsdf', 'heathstnm@gov.in', '123123', 'dsafsafdsad', '2022-06-15 01:43:49', '2022-06-15 01:43:49'),
(15, 'sdfsdf', 'demoadmin@gov.in', '123123', 'sadasdasda', '2022-06-15 01:44:19', '2022-06-15 01:44:19'),
(16, 'sdfsdf', 'demoadmin@gov.in', '123123', 'sadasdasda', '2022-06-15 01:44:34', '2022-06-15 01:44:34'),
(17, 'demo', 'heathstnm@gov.in', '123123', 'sadadasda', '2022-06-15 01:46:36', '2022-06-15 01:46:36'),
(18, 'demo', 'demoadmin@gov.in', '123123', 'asdfaAF', '2022-06-15 01:47:58', '2022-06-15 01:47:58'),
(19, 'demo', 'heathstnm@gov.in', '111111111', 'asdasdasdas', '2022-06-15 01:50:34', '2022-06-15 01:50:34'),
(20, 'demo', 'heathstnm@gov.in', '123123', 'asssssssssssssssssssssssssssss', '2022-06-15 01:51:22', '2022-06-15 01:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `recruitments`
--

CREATE TABLE `recruitments` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitments`
--

INSERT INTO `recruitments` (`id`, `created_at`, `updated_at`, `name`, `document`) VALUES
(1, '2021-12-20 00:40:28', '2021-12-20 00:40:28', 'demand 1', 'recruitmentdoc-FiocUPFqFOSbk1RnVa6GqVWgyNuXtSN7yeo3tuku.jpg'),
(2, '2021-12-20 00:42:05', '2021-12-20 00:42:05', 'd2', 'recruitmentdoc-RM92Uofo0a6M1unYOpMOjksSDqNSMv3FCWeCV9ub.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `r_t_i_s`
--

CREATE TABLE `r_t_i_s` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `document` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `r_t_i_s`
--

INSERT INTO `r_t_i_s` (`id`, `name`, `document`, `created_at`, `updated_at`) VALUES
(1, '', 'rtifile-2nD527urq0HR1KFgUJ47yVsIfkHE15EX6ie4lsGY.pdf', '2022-07-22 00:33:26', '2022-07-22 00:33:26'),
(2, '', 'rtifile-na4S7ibiInEw8ieJzqRrSMsiduSRJH81Irmz2BwW.pdf', '2022-07-22 00:36:56', '2022-07-22 00:36:56'),
(3, '', 'rtifile-c6Tbc7XQKEExOdumeEOwbxWYYZ9ujJMS8lCLt2TK.pdf', '2022-07-22 00:37:01', '2022-07-22 00:37:01'),
(4, '', 'rtifile-OwRDN1ooWS18daqiqcMsH9BhhZre7O6iAyx4FRFe.pdf', '2022-07-22 00:38:12', '2022-07-22 00:38:12'),
(5, '', 'rtifile-Q5j5QIOEMUnh0DPPuoBqTh6ONoAawzl7s4O2ENgY.pdf', '2022-07-22 00:40:18', '2022-07-22 00:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `created_at`, `updated_at`, `name`, `document`) VALUES
(7, '2021-02-18 10:40:11', '2021-02-18 10:40:11', 'fdsafsafds', 'sliderimg-i9ssVYdjGK2YHKCY0wxJK3xgsukSEHPvrso31dXG.png');

-- --------------------------------------------------------

--
-- Table structure for table `sub_structures`
--

CREATE TABLE `sub_structures` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_structures`
--

INSERT INTO `sub_structures` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'asdfasdasdasda', 'dasdasdasdasd', '2022-09-23 03:43:43', '2022-09-23 03:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `super_structures`
--

CREATE TABLE `super_structures` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `super_structures`
--

INSERT INTO `super_structures` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Super Structure', '<h1 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 20px 0px; font-family: Roboto, sans-serif; line-height: 1.1; color: #333333; font-size: 25px; text-align: justify; background-color: #ffffff;\">Page is not Updated<br style=\"box-sizing: border-box;\" />Information awaited from Engineering Wing</h1>', '2021-12-14 02:29:02', '2021-12-14 02:29:02'),
(3, 'asdxzccxzcx', 'zxczxczxcxcz', '2022-09-23 03:44:44', '2022-09-23 03:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

CREATE TABLE `tenders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_projects`
--

CREATE TABLE `upcoming_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_project_attachments`
--

CREATE TABLE `upcoming_project_attachments` (
  `id` int(11) NOT NULL,
  `project_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcoming_project_attachments`
--

INSERT INTO `upcoming_project_attachments` (`id`, `project_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, '2', '4j1oFkcsO0hJ7NmrFHdy9dXumTqHTOiTT386ymDr.jpg', '2021-12-22 00:22:03', '2021-12-22 00:22:03'),
(2, '3', 'GGWug4i5wnUbPD3v6kCDTtHri86idcBE6O8fJNhO.jpg', '2021-12-22 00:26:53', '2021-12-22 00:26:53'),
(3, '4', 'oxIBCTCJdLa8rtVRDJB7JKWL6L2Uz6ZRvV2T8azz.jpg', '2021-12-22 00:28:38', '2021-12-22 00:28:38'),
(4, '1', 'McUZwSvtEcUtXZAXQPgtf5h66uAXEhNfScSiU9pn.jpg', '2022-09-23 03:50:12', '2022-09-23 03:50:12');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'demoadmin@gov.in', NULL, '$2y$10$pVZiRDP7FCY53aDmeJ.QQ.tfAK4/ULRf4z1cCSqLMlxo0b9lc/LWC', NULL, '2022-10-21 02:21:41', '2022-10-21 02:21:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_establishments`
--
ALTER TABLE `admin_establishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `architect_wings`
--
ALTER TABLE `architect_wings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circulars`
--
ALTER TABLE `circulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil_enggs`
--
ALTER TABLE `civil_enggs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmdatas`
--
ALTER TABLE `cmdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electrical_wings`
--
ALTER TABLE `electrical_wings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_lists`
--
ALTER TABLE `employee_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `govdatas`
--
ALTER TABLE `govdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `green_buildings`
--
ALTER TABLE `green_buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoddatas`
--
ALTER TABLE `hoddatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inside_projects`
--
ALTER TABLE `inside_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inside_project_attachments`
--
ALTER TABLE `inside_project_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minisdatas`
--
ALTER TABLE `minisdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officer_lists`
--
ALTER TABLE `officer_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outside_projects`
--
ALTER TABLE `outside_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outside_project_attachments`
--
ALTER TABLE `outside_project_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `received_complains`
--
ALTER TABLE `received_complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitments`
--
ALTER TABLE `recruitments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_t_i_s`
--
ALTER TABLE `r_t_i_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_structures`
--
ALTER TABLE `sub_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_structures`
--
ALTER TABLE `super_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenders`
--
ALTER TABLE `tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_projects`
--
ALTER TABLE `upcoming_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_project_attachments`
--
ALTER TABLE `upcoming_project_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_establishments`
--
ALTER TABLE `admin_establishments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `architect_wings`
--
ALTER TABLE `architect_wings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `circulars`
--
ALTER TABLE `circulars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `civil_enggs`
--
ALTER TABLE `civil_enggs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cmdatas`
--
ALTER TABLE `cmdatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `electrical_wings`
--
ALTER TABLE `electrical_wings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_lists`
--
ALTER TABLE `employee_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `govdatas`
--
ALTER TABLE `govdatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `green_buildings`
--
ALTER TABLE `green_buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hoddatas`
--
ALTER TABLE `hoddatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inside_projects`
--
ALTER TABLE `inside_projects`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inside_project_attachments`
--
ALTER TABLE `inside_project_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `minisdatas`
--
ALTER TABLE `minisdatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officer_lists`
--
ALTER TABLE `officer_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `outside_projects`
--
ALTER TABLE `outside_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `outside_project_attachments`
--
ALTER TABLE `outside_project_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `received_complains`
--
ALTER TABLE `received_complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `recruitments`
--
ALTER TABLE `recruitments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `r_t_i_s`
--
ALTER TABLE `r_t_i_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_structures`
--
ALTER TABLE `sub_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `super_structures`
--
ALTER TABLE `super_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tenders`
--
ALTER TABLE `tenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upcoming_projects`
--
ALTER TABLE `upcoming_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upcoming_project_attachments`
--
ALTER TABLE `upcoming_project_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
