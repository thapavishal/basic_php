-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2016 at 01:10 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodatas`
--

CREATE TABLE IF NOT EXISTS `biodatas` (
`id` int(10) unsigned NOT NULL,
  `developer_id` int(10) unsigned NOT NULL,
  `biodata` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `biodatas`
--

INSERT INTO `biodatas` (`id`, `developer_id`, `biodata`, `created_at`, `updated_at`) VALUES
(1, 1, 'when i was a kid.......', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE IF NOT EXISTS `developers` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 is available 0 is not',
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 is exists 0 is not',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `email`, `password`, `image`, `is_available`, `del_flag`, `created_at`, `updated_at`) VALUES
(1, 'Aashish Adhikari', 'aa@gmail.com', '123456', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE IF NOT EXISTS `educations` (
`id` int(10) unsigned NOT NULL,
  `developer_id` int(10) unsigned NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `developer_id`, `course`, `university`, `duration`, `created_at`, `updated_at`) VALUES
(1, 1, 'BscIT', 'Sikkim Manipal', '2011-2013', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE IF NOT EXISTS `experiences` (
`id` int(10) unsigned NOT NULL,
  `developer_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `developer_id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'leapfrog', 'leapfrog', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_01_21_083852_create_developers_table', 1),
('2016_01_21_085220_create_skills_table', 2),
('2016_01_21_085826_create_experiences_table', 2),
('2016_01_21_090156_create_projects_table', 3),
('2016_01_21_090349_create_educations_table', 4),
('2016_01_21_090420_create_biodatas_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
`id` int(10) unsigned NOT NULL,
  `developer_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `developer_id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'project1', 'ksdfj', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
`id` int(10) unsigned NOT NULL,
  `developer_id` int(10) unsigned NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `framework` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `library` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tool` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `developer_id`, `language`, `framework`, `library`, `tool`, `storage`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 'php, js', 'laravel, angular', 'jquery, bootstrap', 'sublime', 'mySql', 'others', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodatas`
--
ALTER TABLE `biodatas`
 ADD PRIMARY KEY (`id`), ADD KEY `biodatas_developer_id_index` (`developer_id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `developers_email_unique` (`email`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
 ADD PRIMARY KEY (`id`), ADD KEY `educations_developer_id_index` (`developer_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
 ADD PRIMARY KEY (`id`), ADD KEY `experiences_developer_id_index` (`developer_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
 ADD PRIMARY KEY (`id`), ADD KEY `projects_developer_id_index` (`developer_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
 ADD PRIMARY KEY (`id`), ADD KEY `skills_developer_id_index` (`developer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodatas`
--
ALTER TABLE `biodatas`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodatas`
--
ALTER TABLE `biodatas`
ADD CONSTRAINT `biodatas_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
ADD CONSTRAINT `educations_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
ADD CONSTRAINT `experiences_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
ADD CONSTRAINT `projects_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
ADD CONSTRAINT `skills_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
