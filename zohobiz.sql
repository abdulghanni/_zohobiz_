-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 10:10 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zohobiz`
--
CREATE DATABASE IF NOT EXISTS `zohobiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zohobiz`;

-- --------------------------------------------------------

--
-- Table structure for table `active_inactive`
--

DROP TABLE IF EXISTS `active_inactive`;
CREATE TABLE IF NOT EXISTS `active_inactive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `active_inactive`
--

INSERT INTO `active_inactive` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Active', '2015-01-14 00:00:00', 1, '2015-11-10 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'Inactive', '2015-01-14 00:00:00', 1, '2015-11-10 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'Active by Term', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'not active_', '2015-11-24 14:45:16', 0, '2015-11-24 14:47:12', 0, 1, '2015-11-24 14:47:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `alasan_cuti`
--

DROP TABLE IF EXISTS `alasan_cuti`;
CREATE TABLE IF NOT EXISTS `alasan_cuti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `alasan_cuti`
--

INSERT INTO `alasan_cuti` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Melahirkan', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Sakit', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Urusan Keluarga', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `award_warning_type`
--

DROP TABLE IF EXISTS `award_warning_type`;
CREATE TABLE IF NOT EXISTS `award_warning_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `award_warning_type`
--

INSERT INTO `award_warning_type` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'SP 1', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'SP 2', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'SP 3', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Award', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'test_', '2015-11-24 15:13:52', 0, '2015-11-24 15:13:58', 0, 1, '2015-11-24 15:14:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `certification_type`
--

DROP TABLE IF EXISTS `certification_type`;
CREATE TABLE IF NOT EXISTS `certification_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `certification_type`
--

INSERT INTO `certification_type` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'HPL', '2015-01-19 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Jakarta', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Bandung', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Surabaya', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Medan', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `competency_assessment`
--

DROP TABLE IF EXISTS `competency_assessment`;
CREATE TABLE IF NOT EXISTS `competency_assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competency_behaviour_id` int(8) NOT NULL,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `competency_behaviour`
--

DROP TABLE IF EXISTS `competency_behaviour`;
CREATE TABLE IF NOT EXISTS `competency_behaviour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competency_level_id` int(8) NOT NULL,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `competency_def`
--

DROP TABLE IF EXISTS `competency_def`;
CREATE TABLE IF NOT EXISTS `competency_def` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `code` varchar(10) NOT NULL,
  `comp_group_id` tinyint(2) NOT NULL,
  `description` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `competency_def`
--

INSERT INTO `competency_def` (`id`, `title`, `code`, `comp_group_id`, `description`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Professionalisme', 'PRO', 1, '', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'Integrity', 'INT', 1, '', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'Service Excellence', 'SVE', 1, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(4, 'Continous Improvement', 'COI', 1, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(5, 'Passion', 'PAS', 1, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(6, 'Komputer', 'KOMP', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(7, 'Axapta', 'AXA', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(8, 'Daya analisa', 'DAA', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(9, 'Komunikasi', 'KOM', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(10, 'Kepemimpinan', 'KEP', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(11, 'Penyusunan Laporan', '-', 2, '', '2015-11-12 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(12, 'Kemampuan Web Programming', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(13, 'Kemampuan Network', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(14, 'Kemampaun desktop programing', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(15, 'Kemampuan menangani Hardware dan Software', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(16, 'Team work', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(17, 'Kedisplinan', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(18, 'Ketelitian', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(19, 'Kecepatan', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(20, 'Pengolahan data', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(21, 'Perusahaan', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(22, 'Pengetahuan tentang relasi database', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(23, 'Pengetahuan tentang ERP', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(24, 'Pengetahuan bisnis proses', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(25, 'Pengetahuan Infrastruktur', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(26, 'Maintenance data', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(27, 'Pengelolaan Bandwidth', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(28, 'Pengelolaan Stok', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(29, 'Transformasi program', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(30, 'Anggaran', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(31, 'SOP', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(32, 'Pengetahuan spesifikasi Hardware & Software', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(33, 'Manajemen Pengarsipan', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(34, 'Korespondensi', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(35, 'Administrasi Perkantoran', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(36, 'Etika', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(37, 'Komunikasi Sek&Adm', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(38, 'Phone Handling', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(39, 'Pengelolaan Kas Kecil (Petty Cash)', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(40, 'Typing Skill', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(41, 'Bahasa Inggris', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(42, 'Komputer sek&adm', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(43, 'Pengelolaan Meeting', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(44, 'Peraturan / Prosedur / SOP', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(45, 'Pengetahuan Imigrasi', '-', 3, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(46, 'Axapta ACC', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(47, 'Kemampuan Analisa', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(48, 'Pencatatan Jurnal', '-;', 2, '', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(49, 'Closing The Book', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(50, 'SOP Akunting', '-jj', 2, '', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(51, 'SOP Perusahaan', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(52, 'Budgeting', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(53, 'Numerik', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(54, 'Penyelesaian Masalah (Problem solving)', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(55, 'Pelaporan', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(56, 'Leadership', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(57, 'Pengetahuan pajak', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(58, 'Daya Tahan Stress', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(59, 'Pengendalian asset perusahaan', '-', 2, '', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `competency_group`
--

DROP TABLE IF EXISTS `competency_group`;
CREATE TABLE IF NOT EXISTS `competency_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `description` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `competency_group`
--

INSERT INTO `competency_group` (`id`, `title`, `description`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'CORE', '', '2015-11-10 00:00:00', 1, '2015-11-10 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'FUNGSIONAL', '', '2015-11-10 00:00:00', 1, '2015-11-10 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'PENGETAHUAN', '', '2015-11-10 00:00:00', 1, '2015-11-10 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(18, 'test', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(19, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(20, 'test', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(21, 'testjjh', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1, '2015-11-24 15:59:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `competency_level`
--

DROP TABLE IF EXISTS `competency_level`;
CREATE TABLE IF NOT EXISTS `competency_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(3) NOT NULL,
  `competency_def_id` int(8) NOT NULL,
  `title` varchar(254) NOT NULL,
  `description` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=237 ;

--
-- Dumping data for table `competency_level`
--

INSERT INTO `competency_level` (`id`, `level`, `competency_def_id`, `title`, `description`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, '1', 1, 'Semi skilled', 'Paham Akan Prosedur Kerja dan Memiliki Kompetensi yang Masih Terbatas dalam Menyelesaikan Tugas', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, '2', 1, 'Skilled', 'Mampu Menyelesaikan Tugas Sesuai Prosedur Dengan Hasil Akurat', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, '3', 1, 'Very Skilled', 'Mampu Menjaga Kualitas Hasil Kerja Yang Maksimal Dengan Cara Meminimalkan Kesalahan', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(4, '4', 1, 'Expert', 'Mampu Melakukan Perbaikan Kualitas Kerja dan Memberikan Rekomendasi Alternatif Penyelesaian Pekerjaan Untuk Hasil Yg Maksimal', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(5, '1', 2, 'Semi Skilled', 'Sikap Kerjanya Kurang Jujur, Kurang Bertanggung Jawab dan Masih Mudah Terpengaruh Dengan Situasi dan Kondisi', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(6, '2', 2, 'Skilled', 'Menunjukkan Itikad Baik, Taat Terhadap Aturan Organisasi, Norma dan Etika, Jujur, Disiplin, Bertanggung Jawab dan Menghargai Janji', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(7, '3', 2, 'Very Skilled', 'Menunjukan Tindakan Yang Selaras Dengan Aturan, Nilai-nilai dan Etika Organisasi, Berani Menerima Kritik Sebagai Umpan Balik Yang Positif', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(8, '4', 2, 'Expert', 'Berani Berkata benar & Memperjuangkan Kebenaran, Melindungi Reputasi Organsiasi Secara Luas diatas Reputasi Kelompok dan Pribadi', '2015-11-11 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(9, '1', 3, 'Semi Skilled', 'Kurang Aktif dan Tidak Peka Terhadap Kebutuhan Pelanggan, Kurang Ramah Dalam Melayani Pelanggan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(10, '2', 3, 'Skilled', 'Bersikap Ramah dan Cepat Dalam Menanggapi Kebutuhan Ataupun Keluhan Pelanggan, Baik Pelanggan Internal Maupun Eksternal', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(11, '3', 3, 'Very Skilled', 'Mampu Bertindak Cepat Untuk Mengatasi Keluhan Pelanggan, Menghindari Komitmen Yang Berlebihan Kepada Pelanggan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(12, '4', 3, 'Expert', 'Mampu Menyusun Strategi Berkaitan Dengan Kepuasan Pelanggan dan Mampu Mengantisipasi Kemungkinan Yang Timbul Karena Permintaan Pelanggan Yang Berlebihan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(13, '1', 4, 'Semi Skilled', 'Cara Kerjanya Masih Monoton dan Terpaku Pada Pola-pola Konvensional', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(14, '2', 4, 'Skilled', 'Mampu Mengidentifikasi Kebutuhan Peningkatan dan Perbaikan Dalam Proses Kerja', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(15, '3', 4, 'Very Skilled', 'Melakukan dan Menerapkan Cara Baru Untuk Meningkatan Hasil dan Perbaikan Proses Kerja', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(16, '4', 4, 'Expert', 'Mampu Mengembangkan Diri Baik Hard Skill, Soft Skill Ataupun Attitude Yang Baik Dlm Pekerjaannya dan Membantu Orang Lain Untuk Menemukan Cara Melakukan Perbaikan Proses Kerja', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(17, '1', 5, 'Semi Skilled', 'Bekerja Atas Perintah, Pasif dan Kurang Inisiatif Dlm Pekerjaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(18, '2', 5, 'Skilled', 'Cukup Inisiatif Dlm Pekerjaan, Namun Masih Takut Utk Mengembangkan Diri', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(19, '3', 5, 'Very Skilled', 'Cukup Mandiri, Tekun dan Menyenangi Pekerjaannya, Namun Belum Menunjukkan Loyalitas Yg Maksimal', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(20, '4', 5, 'Expert', 'Mampu Bekerja Secara Mandiri, Bersemangat, Menikmati Pekerjaannya, Menunjukkan Loyalitas Yang Tinggi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(21, '1', 6, 'Semi Skilled', 'Mampu melakukan operasi minimal  komputer (menghidupkan, mematikan, membuka dan menutup program, dan print dokumen)', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(22, '2', 6, 'Skilled', 'Mampu mengoperasikan program MS Office ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(23, '3', 6, 'Very Skilled', 'Mampu mengoperasikan beberapa program  MS Office dan memahami aplikasi lain yang mendukung pelaksanaan pekerjaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(24, '4', 6, 'Expert', 'Mahir mengoperasikan beberapa program MS Office untuk analisa dan pelaporan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(25, '1', 7, 'Semi Skilled', 'Mengetahui modul-modul di axapta dan fungsinya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(26, '2', 7, 'Skilled', 'Memahami modul-modul di axapta dan fungsinya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(27, '3', 7, 'Very Skilled', 'Memahami modul axapta dan mengoperasikan axapta sesuai dengan pekerjaannya serta memberikan solusi terhadap kendala yang dihadapi dalam pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(28, '4', 7, 'Expert', 'Mampu melakukan pengecekan terhadap program axapta, perbaikan dan melakukan pengembangan axapta', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(29, '1', 8, 'Semi Skilled', 'Kurang peka terhadap suatu masalah, bahkan tidak menangkap adanya masalah ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(30, '2', 8, 'Skilled', 'Mampu mengenali masalah dan mulai memaham peluang yang terjadi terhadap masalah yang ada, namun belum mampu mengidentifikasi masalah yang terjadi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(31, '3', 8, 'Very Skilled', 'Mampu mengindetifikasikan masalah dan mengumpulkan informasi mengenai masalah yang tejadi dan mulai berusaha untuk mecari alternatif penyelesaian masalah yang lebih baik', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(32, '4', 8, 'Expert', 'Mampu mengintegrasikan seluruh informasi dan menyimpulkan sebab akibatnya. Mampu mengambil keputusan terhadap masalah dengan alternatif penyelesaian yang tepat', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(33, '1', 9, 'Semi Skilled', 'Mampu berkomunikasi dengan sejawat dan bagian lain yang  terkait', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(34, '2', 9, 'Skilled', 'Mampu menyampaikan informasi produk, prosedur dan kebijakan perusahaan kepada pelanggan ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(35, '3', 9, 'Very Skilled', 'Mampu memberikan advice kepada pelanggan sesuai dengan tanggung jawab dan wewenang yang dimiliki', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(36, '4', 9, 'Expert', 'Mampu meyakinkan pelanggan dan pihak lain tentang advice yang diberikan sesuai dengan tanggung jawab dan wewenang yang dimiliki ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(37, '1', 10, 'Semi Skilled', 'Dapat mengendalikan organisasi lingkup bagiannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(38, '2', 10, 'Skilled', 'Dapat mengendalikan Organisasi lingkup bagiannya dan mampu memberikan solusi dalam mengatasi masalah internal maupun eksternal', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(39, '3', 10, 'Very Skilled', 'Dapat mengendalikan Organisasi dan mampu melakukan mentoring dan coaching ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(40, '4', 10, 'Expert', 'Dapat mengendalikan Organisasi dan mampu melakukan mentoring dan coaching sehingga menghasilkan sdm yang berkualitas tinggi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(41, '1', 11, 'Semi Skilled', '', '2015-11-12 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(42, '2', 11, 'Skilled', '', '2015-11-12 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(43, '3', 11, 'Very Skilled', '', '2015-11-12 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(44, '4', 11, 'Expert', '', '2015-11-12 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(45, '1', 12, 'Semi Skilled', 'Menguasai HTML& Java script', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(46, '2', 12, 'Skilled', 'Menguasai HTML, Java script, Mysql, dan PHP', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(47, '3', 12, 'Very Skilled', 'Menguasai HTML, Java script, Mysql, PHP, WEB server, Mail server, dan Framework PHP', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(48, '4', 12, 'Expert', 'Menguasai HTML, Java script, Mysql, PHP, WEB server, Mail server, Framework PHP, cloud system, dan hosting', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(49, '1', 13, 'Semi Skilled', 'Mengetahui segala hal berhubungan dengan network.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(50, '2', 13, 'Skilled', 'Menguasai, troubleshoot terhadap segala hal berhubungan dengan network.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(51, '3', 13, 'Very Skilled', 'Menguasai, troubleshoot, analisis terhadap segala hal berhubungan dengan network.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(52, '4', 13, 'Expert', 'Menguasai, troubleshoot, analisis, rekomendasi terhadap segala hal berhubungan dengan network.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(53, '1', 14, 'Semi Skilled', 'Mengetahui segala hal berhubungan dengan desktop programing', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(54, '2', 14, 'Skilled', 'Menguasai, troubleshoot terhadap segala hal berhubungan dengan desktop programing', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(55, '3', 14, 'Very Skilled', 'Menguasai, troubleshoot, analisis terhadap segala hal berhubungan dengan desktop programing', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(56, '4', 14, 'Expert', 'Menguasai, troubleshoot, analisis, rekomendasi terhadap segala hal berhubungan dengan desktop programing', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(57, '1', 15, 'Semi Skilled', 'Mengetahui segala hal berhubungan dengan hardware dan software standart ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(58, '2', 15, 'Skilled', 'Menguasai, troubleshoot terhadap segala hal berhubungan dengan hardware dan software standart ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(59, '3', 15, 'Very Skilled', 'Menguasai, troubleshoot, analisis terhadap segala hal berhubungan dengan hardware dan software standart ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(60, '4', 15, 'Expert', 'Menguasai, troubleshoot, analisis, rekomendasi terhadap segala hal berhubungan dengan hardware dan software standart ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(61, '1', 16, 'Semi Skilled', 'Mampu melakukan tugas dan tanggungjawabnya sebagai anggota tim', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(62, '2', 16, 'Skilled', 'Mampu berkoordinasi dan berkolaborasi dengan anggota tim untuk menyelesaikan suatu pekerjaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(63, '3', 16, 'Very Skilled', 'Mampu menyusun strategi dan rencana kerja bersama tim dalam menyelesaikan suatu pekerjaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(64, '4', 16, 'Expert', 'Mampu menyusun strategi dan rencana kerja bersama, bertanggungjawab terhadap tim dan memprioritaskan kepentingan tim diatas kepentingan pribadi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(65, '1', 17, 'Semi Skilled', 'Bekerja sesuai dengan waktu kerja yang sudah ditentukan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(66, '2', 17, 'Skilled', 'Bekerja sesuai dengan waktu kerja yang sudah ditentukan dan mentaati peraturan bagian', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(67, '3', 17, 'Very Skilled', 'Bekerja sesuai dengan waktu kerja yang sudah ditentukan, mentaati peraturan bagian dan tidak melakukan pelanggaran', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(68, '4', 17, 'Expert', 'Bekerja sesuai dengan waktu kerja yang sudah ditentukan, mentaati peraturan perusahaan dan tidak melakukan pelanggaran', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(69, '1', 18, 'Semi Skilled', 'Melakukan pekerjaan dengan ceroboh dan sering melakukan kesalahan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(70, '2', 18, 'Skilled', 'Melakukan pekerjaan sesuai dengan prosedur dan jarang melakukan kesalahan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(71, '3', 18, 'Very Skilled', 'Melakukan pekerjaan sesuai dengan prosedur dan cermat dalam mengolah data atau melakukan perhitungan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(72, '4', 18, 'Expert', 'Melakukan pekerjaan sesuai dengan prosedur, cepat, tepat, dan akurat, sehingga tidak ditemukan kesalahan dalam pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(73, '1', 19, 'Semi Skilled', 'Melakukan pekerjaan sesuai dengan deadline yang diberikan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(74, '2', 19, 'Skilled', 'Melakukan pekerjaan sesuai dengan deadline yang diberikan dan sesuai dengan yang diharapkan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(75, '3', 19, 'Very Skilled', 'Melakukan pekerjaan sesuai dengan lebih cepat dari deadline yang diberikan dan sesuai dengan yang diharapkan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(76, '4', 19, 'Expert', 'Melakukan pekerjaan sesuai dengan lebih cepat dari deadline yang diberikan dengan hasil yang baik', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(77, '1', 20, 'Semi Skilled', 'Mengetahui proses pengolahan data', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(78, '2', 20, 'Skilled', 'Mampu mengolah data ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(79, '3', 20, 'Very Skilled', 'Mampu mengolah data dari berbagai sumber serta menyajikan dalam berbagai bentuk sesuai dengan kebutuhan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(80, '4', 20, 'Expert', 'Mampu mengolah  dan menganalisa data dari berbagai sumber serta menyajikan dalam berbagai bentuk sesuai dengan kebutuhan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(81, '1', 21, 'Semi Skilled', 'Mengetahui visi misi dan bisnis perusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(82, '2', 21, 'Skilled', 'Mengetahui organisasi perusahaan, Job Desc, KPI, hak dan kewajibannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(83, '3', 21, 'Very Skilled', 'Mengetahui SOP, Peraturan dan Kebijakan perusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(84, '4', 21, 'Expert', 'Mampu menganalisis Kekuatan, Kelemahan, Ancaman dan Peluang perusahaan dalam Industri', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(85, '1', 22, 'Semi Skilled', 'Mengetahui segala hal berhubungan dengan relasi database', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(86, '2', 22, 'Skilled', 'Menguasai, troubleshoot terhadap segala hal berhubungan dengan relasi database', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(87, '3', 22, 'Very Skilled', 'Menguasai, troubleshoot, analisis terhadap segala hal berhubungan dengan relasi database', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(88, '4', 22, 'Expert', 'Menguasai, troubleshoot, analisis, rekomendasi terhadap segala hal berhubungan dengan relasi database', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(89, '1', 23, 'Semi Skilled', 'Mengetahui sistem ERP yang digunakan diperusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(90, '2', 23, 'Skilled', 'Mengetahui dan memahami sistem ERP yang digunakan diperusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(91, '3', 23, 'Very Skilled', 'Mengetahui dan memahami prosedur dalam sistem ERP yang digunakan diperusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(92, '4', 23, 'Expert', 'Mengetahui, memahami, evalusi, dan memberikan solusi serta pengembangan terhadap sistem ERP yang digunakan diperusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(93, '1', 24, 'Semi Skilled', 'Mengetahui bisnis proses pekerjaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(94, '2', 24, 'Skilled', 'Mengetahui bisnis proses pekerjaan bagian', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(95, '3', 24, 'Very Skilled', 'Mengetahui bisnis proses pekerjaan bagian dan departemen', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(96, '4', 24, 'Expert', 'Mengetahui bisnis proses seluruh bagian dan departemen di PT Erlangga', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(97, '1', 25, 'Semi Skilled', 'Mengetahui segala hal berhubungan dengan infrastruktur', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(98, '2', 25, 'Skilled', 'Menguasai, troubleshoot terhadap segala hal berhubungan dengan infrastruktur', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(99, '3', 25, 'Very Skilled', 'Menguasai, troubleshoot, analisis terhadap segala hal berhubungan dengan infrastruktur', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(100, '4', 25, 'Expert', 'Menguasai, troubleshoot, analisis, rekomendasi terhadap segala hal berhubungan dengan infrastruktur', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(101, '1', 26, 'Semi Skilled', 'Mengetahui prosedur pemeliharaan data', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(102, '2', 26, 'Skilled', 'Memahami dan mampu melakukan pemeliharan data sesuai dengan prosedure', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(103, '3', 26, 'Very Skilled', 'Melakukan pemeliharaan data master sesuai dengan prosedur ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(104, '4', 26, 'Expert', 'Memastikan data master yang digunakan bisa berjalan dengan benar', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(105, '1', 27, 'Semi Skilled', 'Mengetahui informasi mengenai pengetahuan bandwidth ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(106, '2', 27, 'Skilled', 'Mampu memahami prosedur pembagian bandwidth', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(107, '3', 27, 'Very Skilled', 'Mampu melakukan pembagian bandwidth sesuai dengan kebutuhan Cabang', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(108, '4', 27, 'Expert', 'Mampu menganalisa kendala terhadap pembagian bandwidth dan mampu memberikan solusi terhadap masalah yang dihadapi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(109, '1', 28, 'Semi Skilled', 'Mengetahui informasi stok buku yang ada di Cabang', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(110, '2', 28, 'Skilled', 'Mampu memahami prosedur permintaan stok ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(111, '3', 28, 'Very Skilled', 'Mampu memahami kebutuhan stok cabang', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(112, '4', 28, 'Expert', 'Mampu melakukan analisa stok dan pengadaan sesuai dengan target cabang', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(113, '1', 29, 'Semi Skilled', 'Mengetahui pengetahuan mengenai program-program baru yang akan gunakan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(114, '2', 29, 'Skilled', 'Memahami prosedur pengunaan program-program yang akan dipakai', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(115, '3', 29, 'Very Skilled', 'Melakukan sosialisasi serta melakukan instal terhadap program yang akan digunakan baik di Cabang, Depo dan Re', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(116, '4', 29, 'Expert', 'Mampu menganalisa kendala yang dialami Cabang, Depo dan Rep terhadap penggunaan program baru dan mampu memberikan solusi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(117, '1', 30, 'Semi Skilled', 'Memahami fungsi budgeting', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(118, '2', 30, 'Skilled', 'Mampu membuat laporan anggaran dan realisasi biaya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(119, '3', 30, 'Very Skilled', 'Mampu menganalisa realisasi biaya terhadap anggaran dan memberikan masukan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(120, '4', 30, 'Expert', 'Mampu membuat budgeting dan menganalisa realisasi biaya serta memberikan rekomendasi program cost cutting', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(121, '1', 31, 'Semi Skilled', 'Mengetahui SOP di bagiannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(122, '2', 31, 'Skilled', 'Memahami SOP bagiannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(123, '3', 31, 'Very Skilled', 'Memahami SOP bagiannya dan mengetahui SOP bagian lain terkait pelaksanaan tugasnya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(124, '4', 31, 'Expert', 'Mengetahui dan mampu konsisten menjalankan seluruh SOP yang berlaku di perusahaan ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(125, '1', 32, 'Semi Skilled', 'Mengetahui pengetahuan dasar mengenai Hardware dan Software', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(126, '2', 32, 'Skilled', 'Memahami fungsi dari hardware dan software', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(127, '3', 32, 'Very Skilled', 'Mampu menentukan standar hardware dan software yang akan digunakan sesuai dengan kebutuhan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(128, '4', 32, 'Expert', 'Memutuskan jenis hardware dan software yang digunakan ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(129, '1', 33, 'Semi Skilled', 'Mampu mengelompokkan dokumen berdasarkan jenis, waktu, dan bagian', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(130, '2', 33, 'Skilled', 'Mampu mengelompokkan dokumen berdasarkan jenis, waktu, dan bagian serta disusun secara urut (yang terbaru diletakkan paling atas)', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(131, '3', 33, 'Very Skilled', 'Mampu mengelompokkan dokumen berdasarkan jenis, waktu, dan bagian serta disusun secara urut, dimasukkan ke dalam odner yang telah diberikan label odner', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(132, '4', 33, 'Expert', 'Mampu mengelompokkan dokumen berdasarkan jenis, waktu, bagian dan disusun secara urut, dimasukkan ke dalam odner yang telah diberikan label odner serta membuat daftar isi lemari yang tercatat secara rapi dan teratur.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(133, '1', 34, 'Semi Skilled', 'Mampu membuat surat, namun belum menggunakan format surat yang lengkap', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(134, '2', 34, 'Skilled', 'Mampu membuat surat dengan menggunakan komputer dengan menggunakan format yang lengkap (Kop, nomor, tempat/tanggal surat, perihal dan lampiran, tujuan, salam pembuka, isi salam penutup, tanda tangan, dan tembusan.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(135, '3', 34, 'Very Skilled', 'Mampu membuat surat dengan menggunakan dengan menggunakan format yang lengkap (Kop, nomor, tempat/tanggal surat, perihal, tujuan, salam pembuka, isi salam penutup, tanda tangan, dan tembusan serta menggunakan susunan kalimat yang dapat dipahami dengan jelas.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(136, '4', 34, 'Expert', 'Mampu membuat surat dengan menggunakan format yang lengkap (Kop, nomor, tempat/tanggal surat, perihal, tujuan, salam pembuka, isi salam penutup, tanda tangan, dan tembusan, menggunakan susunan kalimat yang baku sesuai kaidah Bahasa Indonesia yang baik dan benar serta mampu mengoperasikan perangkat pendukung seperti mesin fax, mesin foto copy, scanner, dan printer.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(137, '1', 35, 'Semi Skilled', 'Mengetahui perangkat-perangkat administrasi kerja yang dibutuhkan (telepon, komputer, printer, ATK, nomor handphone supervisi, nomor extension per bagian, block note, kalendar, buku agenda)', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(138, '2', 35, 'Skilled', 'Mampu menggunakan perangkat-perangkat administrasi kerja dengan optimal sesuai dengan tujuan dan kebutuhannya.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(139, '3', 35, 'Very Skilled', 'Mampu menggunakan perangkat-perangkat administrasi kerja dengan optimal sesuai dengan tujuan dan kebutuhannya, melakukan monitoring dan control ketersediaan ATK di bagiannya, serta melakukan procuring order (pemesanan) ke bagian procurement', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(140, '4', 35, 'Expert', 'Mampu menggunakan perangkat-perangkat administrasi kerja dengan optimal sesuai dengan tujuan dan kebutuhannya, monitoring dan control ketersediaan ATK di bagiannya, serta melakukan procuring order (pemesanan) ke bagian procurement, serta meletakkan perangkat-perangkat tersebut dengan rapi dan teratur.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(141, '1', 36, 'Semi Skilled', 'Berpenampilan menarik, rapi, dan bersih', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(142, '2', 36, 'Skilled', 'Berpenampilan menarik, rapi, dan bersih, tersenyum ketika berjumpa dengan tamu, mengucapkan salam ketika berjumpa dengan tamu ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(143, '3', 36, 'Very Skilled', 'Berpenampilan menarik, rapi, dan bersih, menyambut tamu di pintu ruangan, tersenyum ketika berjumpa dengan tamu, salam dan mengulurkan tangan, tidak berbicara terlalu pelan/terlalu keras', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(144, '4', 36, 'Expert', 'Berpenampilan menarik, rapi, dan bersih, Menyebut nama dari lawan bicara, menyambut tamu di pintu ruangan, tersenyum ketika berjumpa dengan tamu, salam dan mengulurkan tangan, tidak berbicara terlalu pelan/terlalu keras, menunjukkan keramahan pada setiap orang.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(145, '1', 37, 'Semi Skilled', 'Mampu memahami pesan/informasi yang diterima dari orang lain', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(146, '2', 37, 'Skilled', 'Mampu memahami pesan/informasi yang diterima dari orang lain dan mampu menyampaikan pesan/ide/gagasan kepada orang lain.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(147, '3', 37, 'Very Skilled', 'Mampu memahami pesan/informasi yang diterima dari orang lain dan mampu menyampaikan pesan/ide/gagasan kepada orang lain dengan jelas baik secara lisan maupun tulisan.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(148, '4', 37, 'Expert', 'Mampu memahami pesan/informasi yang diterima dari orang lain dan mampu menyampaikan pesan/ide/gagasan kepada orang lain dengan jelas secara lisan maupun tulisan, serta mampu menerapkan konsep active listening (konsentrasi, empati, memilah pesan yang penting dan tidak penting).', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(149, '1', 38, 'Semi Skilled', 'Menerima/Mengangkat telepon masuk tidak lebih dari 3 kali berdering.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(150, '2', 38, 'Skilled', 'Menerima/Mengangkat telepon masuk tidak lebih dari 3 kali berdering, mengucapkan salam (Selamat Pagi/Siang/Sore/Malam.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(151, '3', 38, 'Very Skilled', 'Menerima/Mengangkat telepon masuk tidak lebih dari 3 kali berdering, mengucapkan salam (Selamat Pagi/Siang/Sore/Malam, mengucapkan bagian dan nama penerima telepon.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(152, '4', 38, 'Expert', 'Menerima/Mengangkat telepon masuk tidak lebih dari 3 kali berdering, mengucapkan salam (Selamat Pagi/Siang/Sore/Malam, mengucapkan bagian dan nama penerima telepon, mengucapkan "Ada yang bisa dibantu", dan mencatat pesan penting.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(153, '1', 39, 'Semi Skilled', 'Mampu membuat pengajuan Kas Kecil ke bagian keuangan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(154, '2', 39, 'Skilled', 'Mampu membuat pengajuan kas kecil ke bagian keuangan dan membuat laporan pertanggung jawaban (PTJ) penggunaan dana', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(155, '3', 39, 'Very Skilled', 'Mampu membuat pengajuan kas kecil ke bagian keuangan dan membuat laporan pertanggung jawaban (PTJ) penggunaan dana, dan mampu mengelola dana kas kecil sesuai dengan kebutuhan.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(156, '4', 39, 'Expert', 'Mampu membuat pengajuan, mampu mengelola dana secara efisien, mampu menyusun prioritas dalam penggunaan dana kas kecil, dan mempertanggung jawabkan penggunaannya secara tepat waktu.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(157, '1', 40, 'Semi Skilled', 'Mampu mengetik dengan menggunakan 2 jari', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(158, '2', 40, 'Skilled', 'Mampu mengetik dengan menggunakan 4 jari', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(159, '3', 40, 'Very Skilled', 'Mampu mengetik dengan menggunakan 6 atau 8 jari', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(160, '4', 40, 'Expert', 'Mampu mengetik dengan menggunakan 10 jari', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(161, '1', 41, 'Semi Skilled', 'Mampu memahami arti kalimat sederhana dalam bahasa Inggris', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(162, '2', 41, 'Skilled', 'Mampu memahami  kalimat dan percakapan sederhana dalam Bahasa Inggris dan mampu mengucapkan kalimat sederhana dalam bahasa Inggris', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(163, '3', 41, 'Very Skilled', 'Mampu melakukan percakapan dalam bahasa Inggris baik secara lisan atau tulisan ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(164, '4', 41, 'Expert', 'Mampu melakukan dalam bahasa Inggris secara lisan atau tulisan dengan menggunakan gramar dan pelafalan yang baik dan benar.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(165, '1', 42, 'Semi Skilled', 'Memiliki pengetahuan dasar komputer (hidupkan, matikan, buka, tutup program dan print out)', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(166, '2', 42, 'Skilled', 'Mampu mengoperasikan program aplikasi komputer umum (word, excel, ppt)', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(167, '3', 42, 'Very Skilled', 'Mampu mengoperasikan program komputer khusus sesuai tuntutan pekerjaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(168, '4', 42, 'Expert', 'Mampu mengoperasikan program aplikasi komputer umum (word, excell, ppt, atau program lain) dan analisa data', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(169, '1', 43, 'Semi Skilled', 'Mampu menyusun jadwal rapat', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(170, '2', 43, 'Skilled', 'Mampu menyusun jadwal rapat dan berkoordinasi dengan sekretaris atau admin bagian lain untuk keperluan rapat', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(171, '3', 43, 'Very Skilled', 'Mampu mengelola penyelenggaraan rapat seperti mengatur jadwal, menyiapkan ruangan, mendistribusikan undangan, menyaipak  dan konsumsi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(172, '4', 43, 'Expert', 'Mampu mengelola penyelenggaraan rapat, berkoordinasi dengan bagian terkait dalam memenuhi perangkat-perangkat yang dibutuhkan, serta mencatat hal-hal penting yang dibahas dalam rapat (sebagai notulen)', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(173, '1', 44, 'Semi Skilled', 'Mengetahui peraturan perusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(174, '2', 44, 'Skilled', 'Mengetahui Prosedur/SOP di bagiannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(175, '3', 44, 'Very Skilled', 'Mengetahui prosedur /SOP bagiannya dan bagian lain terkait pelaksanaan tugasnya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(176, '4', 44, 'Expert', 'Mengetahui dan mampu konsisten menjalankan seluruh prosedur/SOP yang berlaku di perusahaan ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(177, '1', 45, 'Semi Skilled', 'Mengetahui alur dalam proses pembuatan paspor, visa dan lain-lain', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(178, '2', 45, 'Skilled', 'Memahami alur dan prosedur baik syarat maupun ketentuan yang dibutuhkan dalam hal keimigrasian', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(179, '3', 45, 'Very Skilled', 'Paham alur dan prosedur serta mampu menjelaskan ke atas mengenai ketentuan di kantor Imigrasi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(180, '4', 45, 'Expert', 'Mampu melakukan pengurusan visa, paspor dan dokumen lainnya secara mandiri', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(181, '1', 46, 'Semi Skilled', 'Mengetahui modul sesuai dengan pekerjaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(182, '2', 46, 'Skilled', 'Memahami instruksi yang ada dalam modul sesuai dengan pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(183, '3', 46, 'Very Skilled', 'Mampu mengoperasikan axapta sesuai dengan pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(184, '4', 46, 'Expert', 'Memahami modul axapta dan mengoperasikan axapta sesuai dengan pekerjaannya serta memberikan solusi terhadap kendala yang dihadapi dalam pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(185, '1', 47, 'Semi Skilled', 'Kurang peka terhadap suatu masalah, bahkan tidak menangkap adanya masalah ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(186, '2', 47, 'Skilled', 'Mampu mengenali masalah dan mulai memaham peluang yang terjadi terhadap masalah yang ada, namun belum mampu mengidentifikasi masalah yang terjadi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(187, '3', 47, 'Very Skilled', 'Mampu mengindetifikasikan masalah dan mengumpulkan informasi mengenai masalah yang tejadi dan mulai berusaha untuk mecari alternatif penyelesaian masalah yang lebih baik', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(188, '4', 47, 'Expert', 'Mampu mengintegrasikan seluruh informasi dan menyimpulkan sebab akibatnya. Mampu mengambil keputusan terhadap masalah dengan alternatif penyelesaian yang tepat', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(189, '1', 48, 'Semi Skilled', 'Mengetahui dasar-dasar pencatatan jurnal dan COA', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(190, '2', 48, 'Skilled', 'Mengetahui dasar-dasar pencatatan jurnal dan memahami karakteristik transaksi', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(191, '3', 48, 'Very Skilled', 'Mampu membuat transaksi jurnal', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(192, '4', 48, 'Expert', 'Menguasai pencatatan jurnal dan bisa memberikan solusi (jurnal koreksi) ', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(193, '1', 49, 'Semi Skilled', 'Mengetahui proses Closing The book', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(194, '2', 49, 'Skilled', 'Mengetahui proses CTB dan mampu melakukannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(195, '3', 49, 'Very Skilled', 'Mengetahui, melakukan dan mampu mengoreksi CTB', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(196, '4', 49, 'Expert', 'Mampu menganalisa dan menetapkan batas waktu CTB', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(197, '1', 50, 'Semi Skilled', 'Mempelajari alur proses pencatatan akuntansi', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(198, '2', 50, 'Skilled', 'Memahami alur proses pencatatan akuntansi', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(199, '3', 50, 'Very Skilled', 'Mampu menerapkan SOP Akunting dalam pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(200, '4', 50, 'Expert', 'Mampu menerapkan SOP Akunting dan mampu melakukan evaluasi terhadap alur prosedur ', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(201, '1', 51, 'Semi Skilled', 'Mempelajari alur SOP perusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(202, '2', 51, 'Skilled', 'Memahami alur SOP perusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(203, '3', 51, 'Very Skilled', 'Mampu menerapkan SOP Perusahaan dalam pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(204, '4', 51, 'Expert', 'Mampu menerapkan SOP Perusahaan dan mampu melakukan evaluasi terhadap SOP perusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(205, '1', 52, 'Semi Skilled', 'Memahami fungsi budgeting', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(206, '2', 52, 'Skilled', 'Mampu membuat laporan anggaran dan realisasi biaya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(207, '3', 52, 'Very Skilled', 'Mampu menganalisa realisasi biaya terhadap anggaran dan memberikan masukan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(208, '4', 52, 'Expert', 'Mampu membuat budgeting dan menganalisa realisasi biaya serta memberikan rekomendasi program cost cutting', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(209, '1', 53, 'Semi Skilled', 'Mampu melakukan perhitungan sederhana', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(210, '2', 53, 'Skilled', 'Mampu melakukan perhitungan sederhana dengan cepat dan teliti', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(211, '3', 53, 'Very Skilled', 'Mampu menggunakan rumus dalam melakukan perhitungan dengan teliti', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(212, '4', 53, 'Expert', 'Mahir menggunakan rumus dalam melakukan perhitungan dengan teliti dan mampu mengintegrasikan data-data', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(213, '1', 54, 'Semi Skilled', 'Mampu mengidentifikasi masalah yang terjadi dalam pekerjaannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(214, '2', 54, 'Skilled', 'Mampu menjelaskan hubungan yang terjadi antara penyebab masalah dan akar masalah dengan  analisis yang logis ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(215, '3', 54, 'Very Skilled', 'Mampu melakukan pemecahan masalah  dengan mempertimbangkan berbagai alternatif solusi  ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(216, '4', 54, 'Expert', 'Mampu memilih alternatif  solusi penyelesaian masalah yang paling tepat serta merekomendasikannya dengan disertai pertimbangan keuntungan dan kerugiannya.', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(217, '1', 55, 'Semi Skilled', 'Mampu membuat laporan harian ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(218, '2', 55, 'Skilled', 'Mampu membuat laporan mingguan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(219, '3', 55, 'Very Skilled', 'Mampu membuat laporan bulanan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(220, '4', 55, 'Expert', 'Mampu membuat laporan bulanan dengan analisa dan menyajikan secara sistematis', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(221, '1', 56, 'Semi Skilled', 'Dapat mengendalikan organisasi lingkup bagiannya', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(222, '2', 56, 'Skilled', 'Dapat mengendalikan Organisasi lingkup bagiannya dan mampu memberikan solusi dalam mengatasi masalah internal maupun eksternal', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(223, '3', 56, 'Very Skilled', 'Dapat mengendalikan Organisasi dan mampu melakukan mentoring dan coaching ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(224, '4', 56, 'Expert', 'Dapat mengendalikan Organisasi dan mampu melakukan mentoring dan coaching sehingga menghasilkan sdm yang berkualitas tinggi', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(225, '1', 57, 'Semi Skilled', 'Mengetahui jenis-jenis peraturan pajak yang diterapkan di perusahaan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(226, '2', 57, 'Skilled', 'Mengetahui tarif dan peraturan perpajakan di Indonesia ', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(227, '3', 57, 'Very Skilled', 'Mampu mengoperasikan program pajak (PPh psl 21, PPh psl 23/26, PPh psl 4 ayat 2 dan PPh psl 25/29 Badan serta PPN)', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(228, '4', 57, 'Expert', 'Mampu menghitung besaran pajak sesuai dengan peraturan dan tarif pajak yang berlaku serta mengikuti perkembangan perpajakan di Indonesia', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(229, '1', 58, 'Semi Skilled', 'Bekerja secara tidak konsisten, tidak fokus, lambat, melakukan banyak kesalahan dalam kondisi kerja yang penuh tekanan dengan hasil kerja yang kurang memuaskan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(230, '2', 58, 'Skilled', 'Dalam kondisi kerja yang penuh tekanan mampu bekerja secara konsisten dalam tempo yang lambat dan jarang melakukan kesalahan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(231, '3', 58, 'Very Skilled', 'Dalam kondisi kerja yang penuh tekanan mampu bekerja secara konsisten dalam tempo cepat, sangat jarang melakukan kesalahan dengan hasil kerja yang memuaskan', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(232, '4', 58, 'Expert', 'Dalam kondisi kerja yang penuh tekanan mampu bekerja secara konsisten dalam tempo cepat, akurat dan tidak ditemukan kesalahan dengan hasil kerja yang berkualitas/memuaskan serta mampu mengambil keputusan dengan tepat', '2015-11-12 00:00:00', 1, '2015-11-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(233, '1', 59, 'Semi Skilled', 'Mengetahu catatan/data asset perusahaan yang ada di Cabang', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(234, '2', 59, 'Skilled', 'Mengetahui data asset di Cabang dan mampu mengklasifikasikan asset', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(235, '3', 59, 'Very Skilled', 'Mengetahui, mengklasifikasikan Asset serta mengontrol perawatan asset cabang', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(236, '4', 59, 'Expert', 'Mengetahui, mengklasifikasikan dan menghitung penyusutan asset yang ada di cabang', '2015-11-12 00:00:00', 1, '2015-11-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comp_session`
--

DROP TABLE IF EXISTS `comp_session`;
CREATE TABLE IF NOT EXISTS `comp_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `year` int(4) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `payroll_type_id` tinyint(2) NOT NULL DEFAULT '1',
  `is_absence` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comp_session`
--

INSERT INTO `comp_session` (`id`, `title`, `year`, `description`, `payroll_type_id`, `is_absence`, `is_active`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Session 2015', 2015, 'Company Session 2015', 1, 0, 1, '2015-02-11 00:00:00', 1, '2015-02-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_status`
--

DROP TABLE IF EXISTS `course_status`;
CREATE TABLE IF NOT EXISTS `course_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `course_status`
--

INSERT INTO `course_status` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Registration', '2015-01-16 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Confirmation', '2015-01-16 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Completed', '2015-01-16 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Passed', '2015-01-16 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'Waiting List', '2015-01-16 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 'Cancelled', '2015-01-16 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(7, 'Drop Out', '2015-01-16 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dollar_rate`
--

DROP TABLE IF EXISTS `dollar_rate`;
CREATE TABLE IF NOT EXISTS `dollar_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_session_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(254) NOT NULL,
  `rupiah` decimal(16,0) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dollar_rate`
--

INSERT INTO `dollar_rate` (`id`, `comp_session_id`, `title`, `rupiah`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 1, 'dollar rate 2015', '12500', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `education_center`
--

DROP TABLE IF EXISTS `education_center`;
CREATE TABLE IF NOT EXISTS `education_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `education_degree`
--

DROP TABLE IF EXISTS `education_degree`;
CREATE TABLE IF NOT EXISTS `education_degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `education_degree`
--

INSERT INTO `education_degree` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Sarjana', '2015-04-28 00:00:00', 1, '2015-04-28 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'Magister', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Doktor', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Diploma', '2015-04-28 00:00:00', 1, '2015-11-24 15:27:16', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'test', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-04-28 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education_group`
--

DROP TABLE IF EXISTS `education_group`;
CREATE TABLE IF NOT EXISTS `education_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `education_group`
--

INSERT INTO `education_group` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Sekolah Dasar', '2015-04-28 00:00:00', 1, '2015-05-04 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'Sekolah Menengah Pertama', '2015-04-28 00:00:00', 1, '2015-04-28 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'Sekolah Menengah Atas / Kejuruan dt', '2015-04-28 00:00:00', 1, '2015-04-28 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(4, 'Akademi/Institut/Politeknik/Sekolah tinggi/Universitasd', '2015-04-28 00:00:00', 1, '2015-04-28 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(5, 'test', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-04-28 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(50) NOT NULL,
  `receiver_id` varchar(25) NOT NULL,
  `sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` varchar(250) NOT NULL,
  `email_body` text NOT NULL,
  `is_request_activation` tinyint(1) NOT NULL,
  `is_read` int(1) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_status`
--

DROP TABLE IF EXISTS `employee_status`;
CREATE TABLE IF NOT EXISTS `employee_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employee_status`
--

INSERT INTO `employee_status` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Work Center', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Employed', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Terminated', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Honorarium', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `empl_status`
--

DROP TABLE IF EXISTS `empl_status`;
CREATE TABLE IF NOT EXISTS `empl_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `empl_status`
--

INSERT INTO `empl_status` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Probation', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Permanent', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Contract', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Part Time', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'Expat Contranct', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 'Sick', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(7, 'UPLeave', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(8, 'Ahli', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(9, 'Daily Contract', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(10, 'Daily Permanent', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(11, 'Job Training', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_field`
--

DROP TABLE IF EXISTS `exp_field`;
CREATE TABLE IF NOT EXISTS `exp_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exp_level`
--

DROP TABLE IF EXISTS `exp_level`;
CREATE TABLE IF NOT EXISTS `exp_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `exp_level`
--

INSERT INTO `exp_level` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'test', '2015-03-06 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exp_year`
--

DROP TABLE IF EXISTS `exp_year`;
CREATE TABLE IF NOT EXISTS `exp_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'G01', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'G02', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'member', 'General User'),
(3, 'spv', 'supervisor'),
(4, 'kabag', 'kepala bagian'),
(5, 'hr', 'Human Resource Departement'),
(6, 'test lagi', 'test aja'),
(7, 'test kedua', 'test lagi ya');

-- --------------------------------------------------------

--
-- Table structure for table `ikatan_dinas_type`
--

DROP TABLE IF EXISTS `ikatan_dinas_type`;
CREATE TABLE IF NOT EXISTS `ikatan_dinas_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_absen`
--

DROP TABLE IF EXISTS `keterangan_absen`;
CREATE TABLE IF NOT EXISTS `keterangan_absen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` date NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` smallint(1) NOT NULL,
  `deleted_on` date NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `keterangan_absen`
--

INSERT INTO `keterangan_absen` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Sakit', '0000-00-00', 0, '0000-00-00', 0, 0, '0000-00-00', 0),
(2, 'telat', '0000-00-00', 0, '0000-00-00', 0, 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE IF NOT EXISTS `library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `url` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `title`, `url`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'active inactive', 'active_inactive', '2015-02-20 05:23:01', 1, '2015-02-20 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'organization class', 'organization_class', '2015-02-20 05:41:12', 1, '2015-02-20 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'award warning type', 'award_warning_type', '2015-02-20 05:42:27', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'certification type', 'certification_type', '2015-02-20 05:42:41', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'course status', 'course_status', '2015-02-20 05:42:53', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 'dollar rate', 'dollar_rate', '2015-02-20 05:43:05', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(7, 'education center', 'education_center', '2015-02-20 05:43:16', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(8, 'education degree', 'education_degree', '2015-02-20 05:43:28', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(9, 'education group', 'education_group', '2015-02-20 05:43:38', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(10, 'employee status', 'employee_status', '2015-02-20 05:43:48', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(11, 'empl status', 'empl_status', '2015-02-20 05:44:06', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(12, 'exp field', 'exp_field', '2015-02-20 05:44:16', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(13, 'experience level', 'exp_level', '2015-02-20 05:44:31', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(14, 'experience year', 'exp_year', '2015-02-20 05:44:55', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(15, 'grade', 'grade', '2015-02-20 05:45:03', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(16, 'groups', 'groups', '2015-02-20 05:45:11', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(17, 'ikatan dinas type', 'ikatan_dinas_type', '2015-02-20 05:45:24', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(18, 'library', 'library', '2015-02-20 05:45:32', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(19, 'marital', 'marital', '2015-02-20 05:45:39', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(20, 'payroll by position', 'payroll_by_position', '2015-02-20 05:45:58', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(21, 'payroll setup', 'payroll_setup', '2015-02-20 05:46:07', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(22, 'payroll type', 'payroll_type', '2015-02-20 05:46:17', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(23, 'position group', 'position_group', '2015-02-20 05:46:28', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(24, 'resign reason', 'resign_reason', '2015-02-20 05:46:39', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(25, 'competency group', 'competency_group', '2015-11-12 09:21:22', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(26, 'competency definition', 'competency_def', '2015-11-12 09:21:38', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `marital`
--

DROP TABLE IF EXISTS `marital`;
CREATE TABLE IF NOT EXISTS `marital` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `marital`
--

INSERT INTO `marital` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Single', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Married', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Divorced', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Widowhood', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'test', '2015-11-10 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-11-10 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_session_id` int(11) NOT NULL DEFAULT '1',
  `parent_organization_id` int(3) NOT NULL DEFAULT '0',
  `organization_class_id` int(3) NOT NULL,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `comp_session_id`, `parent_organization_id`, `organization_class_id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 1, 0, 1, 'Komunigrafik', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 1, 1, 2, 'Administration & Finance', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 1, 1, 2, 'Technology', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 1, 1, 2, 'Design & Multimedia', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 1, 1, 2, 'Marketing', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(7, 1, 3, 3, 'Administration', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(8, 1, 3, 3, 'Finance', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(9, 1, 4, 3, 'Program', '2015-02-09 00:00:00', 1, '2015-05-11 05:18:54', 1, 0, '0000-00-00 00:00:00', 0),
(10, 1, 5, 3, 'Design', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(11, 1, 5, 3, 'Multimedia', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(12, 1, 6, 3, 'Marketing', '2015-02-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(13, 1, 10, 4, 'Design Section', '2015-02-12 04:46:02', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(14, 1, 13, 5, 'Design Unit', '2015-02-12 04:46:51', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `organization_class`
--

DROP TABLE IF EXISTS `organization_class`;
CREATE TABLE IF NOT EXISTS `organization_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `order_no` tinyint(3) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `organization_class`
--

INSERT INTO `organization_class` (`id`, `title`, `order_no`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Company', 1, '2015-01-23 00:00:00', 1, '2015-02-06 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'Departement', 2, '2015-01-23 00:00:00', 1, '2015-02-06 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'Division', 3, '2015-01-23 00:00:00', 1, '2015-02-06 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(4, 'Section', 4, '2015-01-23 00:00:00', 1, '2015-02-06 00:00:00', 1, 0, '2015-02-09 00:00:00', 1),
(5, 'Unit', 5, '2015-01-23 00:00:00', 1, '2015-02-06 00:00:00', 1, 1, '2015-02-09 00:00:00', 1),
(6, 'Unit_', 6, '2015-11-24 14:54:18', 0, '2015-11-24 14:55:47', 0, 1, '2015-11-24 14:55:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_by_position`
--

DROP TABLE IF EXISTS `payroll_by_position`;
CREATE TABLE IF NOT EXISTS `payroll_by_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL,
  `title` varchar(254) NOT NULL,
  `amount` decimal(16,0) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_setup`
--

DROP TABLE IF EXISTS `payroll_setup`;
CREATE TABLE IF NOT EXISTS `payroll_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_session_id` int(11) NOT NULL DEFAULT '1',
  `payroll_type_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(254) NOT NULL,
  `variable_name` varchar(254) NOT NULL,
  `amout` decimal(16,0) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `payroll_setup`
--

INSERT INTO `payroll_setup` (`id`, `comp_session_id`, `payroll_type_id`, `title`, `variable_name`, `amout`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 1, 1, 'Tunjangan Masa Kerja', 'tmk', '42500', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 1, 1, 'Jumlah Jam Kerja', 'jjk', '173', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 1, 1, 'Max hari kerja sebulan', 'mhk', '25', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 1, 1, 'Pembagi potongan BPJS', 'bpjs', '1000', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 1, 1, 'Variable tunjangan kehadiran', 'tjk', '150000', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 1, 1, 'variable pengurangan kehadiran', 'pkh', '6000', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(7, 1, 1, 'variable min alpha', 'mal', '1', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(8, 1, 1, 'variable min telat', 'mtl', '3', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(9, 1, 1, 'Tunjangan Transport', 'ttp', '5000', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_type`
--

DROP TABLE IF EXISTS `payroll_type`;
CREATE TABLE IF NOT EXISTS `payroll_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `basic_salary_table` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `payroll_type`
--

INSERT INTO `payroll_type` (`id`, `title`, `basic_salary_table`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'by position', 'position', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'by position group', 'position_group', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'by individu', 'users_employement', '2015-02-11 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `abbr` varchar(254) NOT NULL,
  `position_group_id` int(3) NOT NULL,
  `parent_position_id` int(3) NOT NULL DEFAULT '0',
  `organization_id` int(3) NOT NULL,
  `description` text NOT NULL,
  `basic_salary` decimal(16,0) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `title`, `abbr`, `position_group_id`, `parent_position_id`, `organization_id`, `description`, `basic_salary`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Director', 'Dir', 1, 0, 1, '', '4000000', '2015-01-14 00:00:00', 1, '2015-02-09 08:33:11', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'Departement Head of Administration & Finance', 'Dept. Head Adm Fin', 2, 1, 3, '', '3000000', '2015-01-14 00:00:00', 1, '2015-02-09 08:34:07', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'Departement Head of Technology', 'Dept. Head Tech', 2, 1, 4, '', '3000000', '2015-02-09 08:34:42', 1, '2015-05-08 10:11:55', 1, 0, '0000-00-00 00:00:00', 0),
(4, 'Departement Head of Design & Multimedia', 'Dept. Head DM', 2, 1, 5, '', '3000000', '2015-02-09 08:35:25', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'Departement Head of Marketing', 'Dept. Head Mkt', 2, 1, 6, '', '3000000', '2015-02-09 08:36:04', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 'Division Head of Administration', 'Div. Head Adm', 3, 2, 7, '', '2000000', '2015-02-09 08:37:18', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(7, 'Administration Officer', 'Adm Off', 5, 6, 7, '', '1000000', '2015-02-09 08:38:09', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(8, 'Finance Officer', 'Fin Off', 5, 6, 8, '', '1000000', '2015-02-09 08:38:49', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(9, 'Division Head of Technology', 'Div. Head Tech', 3, 3, 9, '', '2000000', '2015-02-09 08:39:26', 1, '2015-05-11 05:14:31', 1, 0, '0000-00-00 00:00:00', 0),
(10, 'Programmer Officer', 'Prog. Off', 5, 9, 9, '', '1000000', '2015-02-09 08:41:13', 1, '2015-05-11 05:06:28', 1, 0, '0000-00-00 00:00:00', 0),
(11, 'Division Head Of Design', 'Div. Head Des', 3, 4, 10, '', '2000000', '2015-02-09 08:44:02', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(12, 'Design Officer', 'Des. Off', 5, 11, 10, '', '1000000', '2015-02-09 08:45:50', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(13, 'Division Head of Multimedia', 'Div. Head Mul', 3, 4, 11, '', '2000000', '2015-02-09 08:46:20', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(14, 'Multimedia Officer', 'Mul. Off', 5, 13, 11, '', '1000000', '2015-02-09 08:47:19', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(15, 'Division Head of Marketing', 'Div. Head Mkt', 3, 5, 12, 'description disini ya', '2000000', '2015-02-09 08:47:46', 1, '2015-11-18 10:21:15', 1, 0, '0000-00-00 00:00:00', 0),
(16, 'Marketing Officer', 'Mkt. Off', 5, 15, 12, '', '1000000', '2015-02-09 08:48:11', 1, '2015-11-18 10:21:03', 1, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `position_competency`
--

DROP TABLE IF EXISTS `position_competency`;
CREATE TABLE IF NOT EXISTS `position_competency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` tinyint(2) NOT NULL,
  `competency_def_id` int(4) NOT NULL,
  `title` varchar(254) NOT NULL,
  `itj` tinyint(2) NOT NULL DEFAULT '4',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `position_competency`
--

INSERT INTO `position_competency` (`id`, `position_id`, `competency_def_id`, `title`, `itj`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 16, 4, '', 3, '2015-11-14 09:02:17', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(2, 16, 35, '', 2, '2015-11-14 09:02:17', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(3, 16, 30, '', 3, '2015-11-14 09:02:17', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(4, 16, 24, '', 4, '2015-11-14 09:02:17', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(5, 16, 45, '', 3, '2015-11-14 09:02:17', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(6, 16, 25, '', 2, '2015-11-14 09:02:17', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(7, 16, 2, '', 4, '2015-11-14 09:02:48', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(8, 16, 7, '', 1, '2015-11-14 09:02:48', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(9, 16, 32, '', 1, '2015-11-14 09:02:48', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(10, 16, 23, '', 4, '2015-11-14 11:18:15', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(11, 16, 22, '', 4, '2015-11-14 11:18:41', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(12, 16, 21, '', 4, '2015-11-14 11:20:12', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(13, 16, 5, '', 4, '2015-11-14 11:22:56', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(14, 16, 21, '', 3, '2015-11-15 11:48:43', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(15, 16, 45, '', 4, '2015-11-15 11:49:17', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(16, 15, 2, '', 3, '2015-11-15 14:44:11', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(17, 15, 35, '', 3, '2015-11-15 14:44:11', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(18, 15, 24, '', 3, '2015-11-15 14:44:11', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(19, 15, 45, '', 2, '2015-11-15 14:44:42', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0),
(20, 16, 1, '', 4, '2015-11-16 10:07:33', 1, '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `position_group`
--

DROP TABLE IF EXISTS `position_group`;
CREATE TABLE IF NOT EXISTS `position_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `abbr` varchar(254) NOT NULL,
  `level_order` int(3) NOT NULL,
  `level` set('Director','Management','Non Management') NOT NULL,
  `parent_position_group_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `basic_salary` decimal(16,0) NOT NULL DEFAULT '0',
  `gradeval_bottom` int(11) NOT NULL,
  `gradeval_top` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `position_group`
--

INSERT INTO `position_group` (`id`, `title`, `abbr`, `level_order`, `level`, `parent_position_group_id`, `description`, `basic_salary`, `gradeval_bottom`, `gradeval_top`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Director', 'Dir', 10, 'Director', 0, '', '0', 0, 0, '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Departement Head', 'Dept. Head', 20, 'Management', 1, '', '0', 0, 0, '2015-01-14 00:00:00', 1, '2015-02-06 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(3, 'Division Head', 'Div. Head', 30, 'Management', 2, '', '0', 0, 0, '2015-02-06 00:00:00', 1, '2015-02-06 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(5, 'Officer', 'Off', 40, 'Non Management', 3, '', '0', 0, 0, '2015-02-09 00:00:00', 1, '2015-11-10 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(6, 'test', 'test', 70, '', 5, 'test', '0', 0, 0, '2015-02-12 08:07:32', 1, '0000-00-00 00:00:00', 0, 1, '2015-02-12 08:07:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resign_reason`
--

DROP TABLE IF EXISTS `resign_reason`;
CREATE TABLE IF NOT EXISTS `resign_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `resign_reason`
--

INSERT INTO `resign_reason` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Pensiun', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'PHK', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Mundur', '2015-01-14 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'None', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_setup`
--

DROP TABLE IF EXISTS `table_setup`;
CREATE TABLE IF NOT EXISTS `table_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `default_val` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `table_setup`
--

INSERT INTO `table_setup` (`id`, `title`, `default_val`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'organization_class_limit', 10, '2015-02-04 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

DROP TABLE IF EXISTS `transportation`;
CREATE TABLE IF NOT EXISTS `transportation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`id`, `title`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Pesawat', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Mobil Kantor', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `nik` varchar(15) NOT NULL,
  `bod` datetime NOT NULL,
  `marital_id` tinyint(2) NOT NULL DEFAULT '0',
  `photo` varchar(254) NOT NULL,
  `mobile_phone` varchar(40) NOT NULL,
  `previous_email` varchar(254) NOT NULL,
  `bb_pin` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nik` (`nik`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `nik`, `bod`, `marital_id`, `photo`, `mobile_phone`, `previous_email`, `bb_pin`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1448417741, 1, 'Admin', 'istrator', 'ADMIN', '0', '', '1980-01-01 00:00:00', 1, '', '', '', ''),
(8, '::1', 'andigaluh', '$2y$08$vXs9IixiApGahh9cxvBD.OT3WRyFzZXHQT7TRlJlwa5SHnjio7zEe', NULL, 'andi@komunigrafik.com', NULL, NULL, NULL, NULL, 1418971675, 1432798254, 1, 'andi galuh', 'sutrisno', '0', '08561951175', '50402116', '1983-10-13 00:00:00', 2, 'andi_galuh.jpg', '0', 'erortea@yahoo.com', '7777777'),
(9, '::1', 'bakhtiarzein', '$2y$08$Sd5cYmKbAzgLv0nuGU/ATu6MT4mUF/u6kCFg4AAOt9QnmJBCuxJiG', NULL, 'bakhtiar@komunigrafik.com', NULL, NULL, NULL, NULL, 1423536591, 1432106179, 1, 'Bakhtiar', 'Zein', NULL, '', '50402115', '2015-02-10 00:00:00', 2, '', '', '', ''),
(10, '::1', 'muhammadirwansyah', '$2y$08$FyeX7OF8H.e/fWOWQoZke.guZh2OKHRufELZGGfAaUjacIeTzQide', NULL, 'irwansyah@komunigrafik.com', NULL, NULL, NULL, NULL, 1423557658, 1432112574, 1, 'Muhammad', 'irwansyah', NULL, '', '50402117', '2015-02-10 00:00:00', 2, '', '', '', ''),
(11, '::1', 'muhammaddahri', '$2y$08$AMbfDzib15EsTNRjov.hrODi/te5a3C6pds9njOK9FOwO76bNgEYy', NULL, 'dahri@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621479, 1431072460, 1, 'Muhammad', 'Dahri', NULL, '', '50402118', '2015-02-11 00:00:00', 1, '', '', '', ''),
(12, '::1', 'randikhadewantoro', '$2y$08$FBKdiWqO3wnFe.MN4T5R2.23s4Ke3NQvD9SAzl5dXQz0OpDeqYKyG', NULL, 'randikha@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621535, 1423621535, 1, 'randikha', 'Dewantoro', NULL, '', '50402119', '2015-02-11 00:00:00', 2, '', '', '', ''),
(13, '::1', 'fahmiachmad', '$2y$08$Il3HSsq/fJG/PdXTkYbqje15tk4j7ctv3yWwaq0/OIUvpmL7orJtG', NULL, 'fahmi@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621563, 1432112517, 1, 'Fahmi', 'Achmad', NULL, '', '50402120', '2015-02-11 00:00:00', 2, '', '', '', ''),
(14, '::1', 'denisaputra', '$2y$08$HNsoYutW44Wi7Vli51PUquFCVccvo12KLSomm9JEZanNgJevqUsha', NULL, 'deni@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621584, 1432798220, 1, 'Deni', 'Saputra', NULL, '', '50402121', '2015-02-11 00:00:00', 2, '', '', '', ''),
(15, '::1', 'agussusilo', '$2y$08$Jhx9cHkuVgCPoa.Sl//9je4HfcUGPnp6eWl2oY7NwNoR1wxorysYG', NULL, 'agus@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621603, 1423621603, 1, 'Agus', 'Susilo', NULL, '', '50402122', '2015-02-11 00:00:00', 1, '', '', '', ''),
(16, '::1', 'rizarifansyah', '$2y$08$ZboX5tfH/3kybmfG22ock.ZiOh8s6Zna.nPQDMz2hf7A1duTTiI3S', NULL, 'riza@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621635, 1432196426, 1, 'Riza', 'Rifansyah', NULL, '', '50402123', '2015-02-11 00:00:00', 2, '', '', '', ''),
(17, '::1', 'fauzanrabbani', '$2y$08$4fj6/qSM9/Os72IbeKIzJ.Gv.Orv2E0JRx7TMgLQc3jRvlMrPjIDm', NULL, 'jhanojan@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621678, 1423621678, 1, 'Fauzan', 'Rabbani', NULL, '', '50402124', '2015-02-11 00:00:00', 1, '', '', '', ''),
(18, '::1', 'abdulghanni', '$2y$08$7jvQ/ANQQTX00H6UYgXxHewWv0Lvv7Ao2QuPx7L8B/bxddsLap.bK', NULL, 'abdul@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621705, 1423621705, 1, 'Abdul', 'Ghanni', NULL, '', '50402125', '2015-02-11 00:00:00', 1, '', '', '', ''),
(19, '::1', 'rizkydwi', '$2y$08$B4XpKU.2fOBCb6wN5Ue1MeFr9okYL792pkff9gDX/vcUTQ.Jia2zO', NULL, 'rizky@komunigrafik.com', NULL, NULL, NULL, NULL, 1423621748, 1423621748, 1, 'Rizky', 'Dwi', NULL, '', '50402126', '2015-02-11 00:00:00', 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_awardwarning`
--

DROP TABLE IF EXISTS `users_awardwarning`;
CREATE TABLE IF NOT EXISTS `users_awardwarning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `award_warning_type_id` int(2) NOT NULL,
  `title` varchar(254) NOT NULL,
  `description` text NOT NULL,
  `app_date` datetime NOT NULL,
  `sk_number` varchar(254) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_awardwarning`
--

INSERT INTO `users_awardwarning` (`id`, `user_id`, `award_warning_type_id`, `title`, `description`, `app_date`, `sk_number`, `start_date`, `end_date`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 0, 'test1_edit', 'test1', '2015-02-04 00:00:00', 'test1', '2015-02-05 00:00:00', '2015-02-05 00:00:00', '2015-02-04 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-02-04 00:00:00', 1),
(2, 8, 0, 'test1', 'test1', '2015-02-04 00:00:00', 'test1', '2015-02-05 00:00:00', '2015-02-06 00:00:00', '2015-02-04 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-04-28 00:00:00', 1),
(3, 8, 0, 'test2', 'test2', '2015-02-04 00:00:00', 'test2', '2015-02-05 00:00:00', '2015-02-06 00:00:00', '2015-02-04 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-04-27 00:00:00', 8),
(4, 8, 1, 'dfs', 'dfas', '2015-04-08 00:00:00', 'sdf', '2015-04-29 00:00:00', '2015-04-30 00:00:00', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_certificate`
--

DROP TABLE IF EXISTS `users_certificate`;
CREATE TABLE IF NOT EXISTS `users_certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(16) NOT NULL,
  `certification_type_id` int(3) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users_certificate`
--

INSERT INTO `users_certificate` (`id`, `user_id`, `certification_type_id`, `description`, `start_date`, `end_date`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(2, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(3, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(4, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(5, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(6, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(7, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(8, 8, 1, '', '2015-01-29 00:00:00', '2015-01-31 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(9, 8, 1, '', '2015-01-04 00:00:00', '2015-01-05 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(10, 8, 1, '', '2015-01-04 00:00:00', '2015-01-09 00:00:00', '2015-01-30 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-30 00:00:00', 1),
(11, 8, 1, '', '2015-02-18 00:00:00', '2015-02-28 00:00:00', '2015-02-02 00:00:00', 1, '2015-04-28 00:00:00', 1, 1, '2015-04-28 00:00:00', 1),
(12, 8, 1, '', '2015-02-09 00:00:00', '2015-02-13 00:00:00', '2015-02-02 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-02-02 00:00:00', 1),
(13, 8, 1, '', '2015-02-15 00:00:00', '2015-02-20 00:00:00', '2015-02-02 00:00:00', 1, '2015-04-28 00:00:00', 1, 1, '2015-04-30 00:00:00', 1),
(14, 8, 1, '', '2015-02-02 00:00:00', '2015-02-11 00:00:00', '2015-02-02 00:00:00', 1, '2015-02-02 00:00:00', 1, 1, '2015-02-02 00:00:00', 1),
(15, 8, 1, '', '2015-04-15 00:00:00', '2015-04-24 00:00:00', '2015-04-27 00:00:00', 8, '0000-00-00 00:00:00', 0, 1, '2015-04-27 00:00:00', 8),
(16, 8, 1, '', '2015-04-18 00:00:00', '2015-04-30 00:00:00', '2015-04-28 00:00:00', 1, '2015-04-28 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(17, 8, 1, '', '2015-04-30 00:00:00', '2015-05-02 00:00:00', '2015-04-30 00:00:00', 1, '2015-04-30 00:00:00', 1, 1, '2015-04-30 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_course`
--

DROP TABLE IF EXISTS `users_course`;
CREATE TABLE IF NOT EXISTS `users_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(16) NOT NULL,
  `title` varchar(254) NOT NULL,
  `registration_date` datetime NOT NULL,
  `course_status_id` int(3) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `users_course`
--

INSERT INTO `users_course` (`id`, `user_id`, `title`, `registration_date`, `course_status_id`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 'tes1', '2015-01-27 00:00:00', 2, '2015-01-27 00:00:00', 1, '2015-01-27 00:00:00', 1, 1, '2015-01-27 00:00:00', 1),
(2, 8, 'tes2', '2011-03-23 00:00:00', 2, '2015-01-27 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-27 00:00:00', 1),
(3, 8, 'tes1', '2014-12-31 00:00:00', 2, '2015-01-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-28 00:00:00', 1),
(4, 8, 'tes', '2015-01-21 00:00:00', 6, '2015-01-28 00:00:00', 1, '2015-01-28 00:00:00', 1, 1, '2015-01-28 00:00:00', 1),
(5, 8, 'tes2', '2015-01-27 00:00:00', 2, '2015-01-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-28 00:00:00', 1),
(6, 8, 'tes3', '2015-01-18 00:00:00', 1, '2015-01-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-28 00:00:00', 1),
(7, 8, 'tes4', '2015-01-04 00:00:00', 7, '2015-01-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-28 00:00:00', 1),
(8, 8, 'tes5', '2015-01-05 00:00:00', 4, '2015-01-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-01-28 00:00:00', 1),
(9, 8, 'test1_edit_edit', '2014-10-07 00:00:00', 2, '2015-01-28 00:00:00', 1, '2015-01-29 00:00:00', 1, 1, '2015-04-27 00:00:00', 8),
(10, 8, 'test2_edit_edit_edidv', '2015-01-29 00:00:00', 4, '2015-01-29 00:00:00', 1, '2015-04-28 00:00:00', 1, 1, '2015-04-28 00:00:00', 1),
(11, 8, 'test3_edit', '2015-01-29 00:00:00', 7, '2015-01-29 00:00:00', 1, '2015-04-28 00:00:00', 1, 1, '2015-04-28 00:00:00', 1),
(12, 8, 'test4_edit', '2015-01-06 00:00:00', 5, '2015-01-29 00:00:00', 1, '2015-01-29 00:00:00', 1, 1, '2015-04-28 00:00:00', 1),
(13, 8, 'test5_edit', '2015-01-06 00:00:00', 6, '2015-01-29 00:00:00', 1, '2015-01-29 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(14, 8, 'test6_edit', '2015-01-05 00:00:00', 1, '2015-01-29 00:00:00', 1, '2015-01-29 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(15, 8, 'test7_edit_edit', '2015-01-20 00:00:00', 3, '2015-01-29 00:00:00', 1, '2015-01-29 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(16, 8, 'test8', '2015-02-02 00:00:00', 7, '2015-02-02 00:00:00', 1, '2015-02-02 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(17, 8, 'test9', '2015-02-10 00:00:00', 1, '2015-02-02 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(18, 8, 'test10', '2015-02-25 00:00:00', 1, '2015-02-02 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(19, 8, 'test11', '2015-02-03 00:00:00', 2, '2015-02-02 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(20, 8, 'test12', '2015-02-24 00:00:00', 5, '2015-02-02 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(21, 8, 'ASP.NET with C#', '2014-02-07 00:00:00', 4, '2015-04-27 00:00:00', 8, '2015-04-28 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(22, 8, 'besoksfdasd', '2015-04-29 00:00:00', 2, '2015-04-28 00:00:00', 1, '2015-04-29 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(23, 8, 'gfgfgf', '2015-04-01 00:00:00', 4, '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-04-28 00:00:00', 1),
(24, 8, 'test 30 April 2015', '2015-04-29 00:00:00', 2, '2015-04-30 00:00:00', 1, '2015-04-30 00:00:00', 1, 1, '2015-04-30 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_cuti`
--

DROP TABLE IF EXISTS `users_cuti`;
CREATE TABLE IF NOT EXISTS `users_cuti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `id_comp_session` int(11) NOT NULL,
  `date_mulai_cuti` date NOT NULL,
  `date_selesai_cuti` date NOT NULL,
  `jumlah_hari` tinyint(4) NOT NULL,
  `alasan_cuti_id` int(11) NOT NULL,
  `user_pengganti` int(11) NOT NULL COMMENT 'user_id kary pengganti',
  `alamat_cuti` text NOT NULL,
  `is_app_lv1` tinyint(1) NOT NULL DEFAULT '0',
  `user_app_lv1` int(11) NOT NULL COMMENT 'user_id supervisor',
  `date_app_lv1` date NOT NULL,
  `note_app_lv1` text NOT NULL,
  `is_app_lv2` tinyint(1) NOT NULL DEFAULT '0',
  `user_app_lv2` int(11) NOT NULL COMMENT 'user_id approval level2',
  `date_app_lv2` date NOT NULL,
  `note_app_lv2` text NOT NULL,
  `is_app_lv3` tinyint(1) NOT NULL DEFAULT '0',
  `user_app_lv3` int(11) NOT NULL,
  `date_app_lv3` date NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_users_sti` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users_cuti`
--

INSERT INTO `users_cuti` (`id`, `user_id`, `id_comp_session`, `date_mulai_cuti`, `date_selesai_cuti`, `jumlah_hari`, `alasan_cuti_id`, `user_pengganti`, `alamat_cuti`, `is_app_lv1`, `user_app_lv1`, `date_app_lv1`, `note_app_lv1`, `is_app_lv2`, `user_app_lv2`, `date_app_lv2`, `note_app_lv2`, `is_app_lv3`, `user_app_lv3`, `date_app_lv3`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 14, 1, '2015-06-01', '2015-06-05', 4, 3, 18, 'ciawi', 1, 8, '2015-05-08', '', 1, 9, '2015-05-18', '', 2, 8, '2015-05-18', '2015-05-08 00:00:00', 14, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 13, 1, '2015-06-01', '2015-06-05', 4, 3, 16, 'sukabumi', 1, 10, '2015-05-08', '', 1, 9, '2015-05-18', '', 1, 8, '2015-05-18', '2015-05-08 00:00:00', 13, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 13, 1, '2015-07-01', '2015-07-05', 4, 3, 16, 'sukabumi lagi', 2, 10, '2015-05-11', 'pekerjaan sedang padat', 2, 9, '2015-05-18', '', 2, 8, '2015-05-18', '2015-05-08 00:00:00', 13, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 16, 1, '2015-06-01', '2015-06-05', 4, 3, 13, 'sunter', 1, 13, '2015-05-11', '', 1, 10, '2015-05-11', 'approve deh', 1, 8, '2015-05-18', '2015-05-08 00:00:00', 16, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 10, 1, '2015-05-12', '2015-05-13', 1, 3, 10, 'bojong', 1, 9, '2015-05-11', 'Approved', 2, 9, '2015-05-20', '', 0, 0, '0000-00-00', '2015-05-11 00:00:00', 10, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 8, 1, '2015-05-20', '2015-05-21', 1, 2, 8, 'depok', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00', '2015-05-20 00:00:00', 8, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(7, 16, 1, '2015-05-25', '2015-05-27', 2, 3, 13, 'sunter', 1, 13, '2015-05-20', '', 1, 10, '2015-05-20', '', 1, 8, '2015-05-21', '2015-05-20 00:00:00', 16, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_cuti_plafon`
--

DROP TABLE IF EXISTS `users_cuti_plafon`;
CREATE TABLE IF NOT EXISTS `users_cuti_plafon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `id_comp_session` int(11) NOT NULL,
  `hak_cuti` int(4) NOT NULL,
  `hak_cuti_sebelumnya` int(4) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_users_sti` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_education`
--

DROP TABLE IF EXISTS `users_education`;
CREATE TABLE IF NOT EXISTS `users_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(254) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `education_degree_id` int(2) NOT NULL,
  `education_group_id` int(2) NOT NULL,
  `education_center_id` int(2) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users_education`
--

INSERT INTO `users_education` (`id`, `user_id`, `title`, `description`, `start_date`, `end_date`, `education_degree_id`, `education_group_id`, `education_center_id`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 'sd', 'sd 02 pagi', '1996-01-01 00:00:00', '2009-01-31 00:00:00', 1, 1, 0, '2015-02-02 00:00:00', 1, '2015-04-28 00:00:00', 1, 1, '2015-04-28 00:00:00', 1),
(2, 8, 'smp', 'smp 5', '2002-01-31 00:00:00', '2006-01-31 00:00:00', 4, 1, 0, '2015-02-02 00:00:00', 1, '2015-05-04 00:00:00', 8, 0, '0000-00-00 00:00:00', 0),
(3, 8, 'sma', 'sma', '2015-02-02 00:00:00', '2015-02-20 00:00:00', 4, 1, 0, '2015-02-02 00:00:00', 1, '2015-05-04 00:00:00', 8, 0, '0000-00-00 00:00:00', 0),
(4, 8, 'S1_edit', 'universitas', '2014-11-03 00:00:00', '2015-02-02 00:00:00', 0, 0, 0, '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 1, '2015-04-27 00:00:00', 8),
(5, 8, 'dsaf', 'adsfasd', '2015-04-30 00:00:00', '2015-05-02 00:00:00', 4, 3, 0, '2015-04-30 00:00:00', 1, '2015-04-30 00:00:00', 1, 1, '2015-04-30 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_employement`
--

DROP TABLE IF EXISTS `users_employement`;
CREATE TABLE IF NOT EXISTS `users_employement` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `seniority_date` datetime NOT NULL,
  `position_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `empl_status_id` int(11) NOT NULL,
  `employee_status_id` int(11) NOT NULL,
  `cost_center` varchar(254) NOT NULL,
  `position_group_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `resign_reason_id` int(11) NOT NULL,
  `active_inactive_id` int(2) NOT NULL,
  `basic_salary` decimal(16,0) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users_employement`
--

INSERT INTO `users_employement` (`id`, `user_id`, `seniority_date`, `position_id`, `organization_id`, `empl_status_id`, `employee_status_id`, `cost_center`, `position_group_id`, `grade_id`, `resign_reason_id`, `active_inactive_id`, `basic_salary`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, '1995-01-01 00:00:00', 2, 3, 2, 2, '-', 2, 1, 4, 1, '0', '2015-02-06 00:00:00', 1, '2015-04-27 00:00:00', 8, 0, '0000-00-00 00:00:00', 0),
(5, 9, '2008-01-01 00:00:00', 1, 1, 2, 2, 'C01', 1, 1, 3, 1, '0', '0000-00-00 00:00:00', 0, '2015-02-12 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(6, 10, '2008-01-01 00:00:00', 3, 4, 2, 1, '-', 2, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(7, 11, '1970-01-01 00:00:00', 4, 5, 2, 1, '-', 2, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(8, 12, '1970-01-01 00:00:00', 5, 6, 2, 1, '-', 2, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(9, 13, '2010-01-01 00:00:00', 9, 9, 2, 1, '-', 3, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(10, 14, '1970-01-01 00:00:00', 6, 7, 2, 1, '-', 3, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-05 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(11, 15, '1970-01-01 00:00:00', 11, 10, 2, 1, '-', 3, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(12, 16, '1970-01-01 00:00:00', 10, 9, 2, 1, '-', 5, 1, 1, 2, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(13, 17, '1970-01-01 00:00:00', 15, 12, 2, 1, '-', 3, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(14, 18, '1970-01-01 00:00:00', 7, 7, 1, 1, '-', 5, 1, 1, 1, '0', '0000-00-00 00:00:00', 0, '2015-03-03 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(15, 19, '1970-01-01 00:00:00', 16, 12, 2, 1, '-', 5, 1, 4, 1, '0', '0000-00-00 00:00:00', 0, '2015-05-08 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(16, 1, '2015-03-01 00:00:00', 3, 1, 1, 1, '', 1, 1, 0, 0, '0', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_experience`
--

DROP TABLE IF EXISTS `users_experience`;
CREATE TABLE IF NOT EXISTS `users_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company` varchar(254) NOT NULL,
  `position` varchar(254) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` datetime NOT NULL,
  `address` text NOT NULL,
  `line_business` varchar(254) NOT NULL,
  `resign_reason_id` int(2) NOT NULL,
  `last_salary` decimal(10,0) NOT NULL,
  `exp_level_id` int(2) NOT NULL,
  `exp_year_id` int(2) NOT NULL,
  `exp_field_id` int(2) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users_experience`
--

INSERT INTO `users_experience` (`id`, `user_id`, `company`, `position`, `start_date`, `end_date`, `address`, `line_business`, `resign_reason_id`, `last_salary`, `exp_level_id`, `exp_year_id`, `exp_field_id`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 'comp1_edit', 'comp', '2014-12-07', '2015-02-04 00:00:00', 'depok', 'IT', 1, '1000000', 0, 0, 0, '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 1, '2015-04-27 00:00:00', 8),
(2, 8, 'PT. Krakatau Information Technology', 'Senior Web Programmer', '2010-08-01', '2011-08-01 00:00:00', 'Cilegon', 'IT', 3, '5000000', 0, 0, 0, '2015-04-27 00:00:00', 8, '0000-00-00 00:00:00', 0, 1, '2015-04-28 00:00:00', 1),
(3, 8, 'PT. Deptech Digital Indonesia', 'Web Programmer', '2007-04-03', '2008-04-01 00:00:00', 'Fatmawati Jakarta Selatan', 'IT Consultant', 3, '2700000', 0, 0, 0, '2015-04-28 00:00:00', 1, '2015-05-04 00:00:00', 8, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(109, 1, 1),
(110, 1, 5),
(127, 8, 2),
(128, 8, 3),
(129, 8, 5),
(115, 9, 2),
(116, 9, 3),
(117, 9, 4),
(124, 10, 2),
(125, 10, 3),
(126, 10, 4),
(66, 11, 1),
(67, 11, 2),
(81, 12, 1),
(82, 12, 2),
(122, 13, 2),
(123, 13, 3),
(84, 14, 2),
(72, 15, 2),
(85, 16, 2),
(74, 17, 2),
(75, 18, 2),
(76, 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_ikatan_dinas`
--

DROP TABLE IF EXISTS `users_ikatan_dinas`;
CREATE TABLE IF NOT EXISTS `users_ikatan_dinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ikatan_dinas_type` int(2) NOT NULL,
  `title` varchar(254) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_ikatan_dinas`
--

INSERT INTO `users_ikatan_dinas` (`id`, `user_id`, `ikatan_dinas_type`, `title`, `start_date`, `end_date`, `amount`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 0, 'test1_edit', '2015-02-04 00:00:00', '2015-02-05 00:00:00', '1500000', '2015-02-04 00:00:00', 1, '2015-02-04 00:00:00', 1, 1, '2015-04-27 00:00:00', 8),
(2, 8, 0, 'test2', '2015-02-04 00:00:00', '2015-02-05 00:00:00', '2000000', '2015-02-04 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-02-04 00:00:00', 1),
(3, 8, 0, 'dfs', '2015-04-15 00:00:00', '2015-04-17 00:00:00', '2000000', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-04-28 00:00:00', 1),
(4, 8, 0, 'dfsdsf', '2015-04-01 00:00:00', '2015-04-09 00:00:00', '1000000', '2015-04-29 00:00:00', 1, '2015-04-29 00:00:00', 1, 1, '2015-04-29 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_jabatan`
--

DROP TABLE IF EXISTS `users_jabatan`;
CREATE TABLE IF NOT EXISTS `users_jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `organization_id` int(2) NOT NULL,
  `position_id` int(11) NOT NULL,
  `employee_group_id` int(2) NOT NULL,
  `grade_id` int(2) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `branch_id` int(2) NOT NULL,
  `personnel_action_id` int(3) NOT NULL,
  `sk_date` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_jabatan`
--

INSERT INTO `users_jabatan` (`id`, `user_id`, `organization_id`, `position_id`, `employee_group_id`, `grade_id`, `start_date`, `end_date`, `branch_id`, `personnel_action_id`, `sk_date`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 2, 2, 2, 2, '2015-02-08 00:00:00', '2015-02-04 00:00:00', 0, 0, '2015-02-04 00:00:00', '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 8, 1, 1, 1, 1, '2015-02-24 00:00:00', '2015-02-02 00:00:00', 0, 0, '2015-02-02 00:00:00', '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 1, '2015-04-28 00:00:00', 1),
(3, 8, 1, 6, 1, 1, '2015-04-27 00:00:00', '2015-04-28 00:00:00', 0, 0, '2015-04-01 00:00:00', '2015-04-27 00:00:00', 8, '0000-00-00 00:00:00', 0, 1, '2015-04-27 00:00:00', 8),
(4, 8, 1, 3, 1, 1, '2015-04-28 00:00:00', '2015-04-29 00:00:00', 0, 0, '2015-04-01 00:00:00', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_keterangan_absen`
--

DROP TABLE IF EXISTS `users_keterangan_absen`;
CREATE TABLE IF NOT EXISTS `users_keterangan_absen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `id_comp_session` int(11) NOT NULL,
  `date_tidak_hadir` date NOT NULL,
  `keterangan_id` int(11) NOT NULL,
  `alasan` varchar(100) DEFAULT NULL,
  `is_app_lv1` tinyint(1) NOT NULL,
  `user_app_lv1` int(11) NOT NULL,
  `date_app_lv1` date NOT NULL,
  `is_app_lv2` tinyint(1) NOT NULL,
  `user_app_lv2` int(11) NOT NULL,
  `date_app_lv2` date NOT NULL,
  `is_app_lv3` tinyint(1) NOT NULL,
  `user_app_lv3` int(11) NOT NULL,
  `date_app_lv3` date NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` date NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `deleted_on` date NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users_keterangan_absen`
--

INSERT INTO `users_keterangan_absen` (`id`, `user_id`, `id_comp_session`, `date_tidak_hadir`, `keterangan_id`, `alasan`, `is_app_lv1`, `user_app_lv1`, `date_app_lv1`, `is_app_lv2`, `user_app_lv2`, `date_app_lv2`, `is_app_lv3`, `user_app_lv3`, `date_app_lv3`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 27, 1, '2015-04-07', 0, 'aaa', 2, 30, '2015-04-08', 1, 30, '2015-04-08', 0, 0, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, 0, '0000-00-00', 0),
(2, 27, 1, '2015-04-07', 0, 'aaa', 1, 27, '2015-04-14', 1, 28, '2015-04-08', 0, 0, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, 0, '0000-00-00', 0),
(3, 1, 1, '2015-04-07', 0, 'au', 0, 0, '0000-00-00', 0, 0, '0000-00-00', 0, 0, '0000-00-00', '2015-04-07', 1, '0000-00-00', 0, 0, '0000-00-00', 0),
(4, 1, 1, '2015-04-07', 1, 'aaa', 0, 0, '0000-00-00', 0, 0, '0000-00-00', 0, 0, '0000-00-00', '2015-04-07', 1, '0000-00-00', 0, 0, '0000-00-00', 0),
(5, 29, 1, '0000-00-00', 1, 'lol', 1, 30, '2015-04-08', 0, 0, '0000-00-00', 0, 0, '0000-00-00', '2015-04-07', 29, '0000-00-00', 0, 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_sk`
--

DROP TABLE IF EXISTS `users_sk`;
CREATE TABLE IF NOT EXISTS `users_sk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sk_date` datetime NOT NULL,
  `sk_no` varchar(254) NOT NULL,
  `position_id` int(2) NOT NULL,
  `departement_id` int(2) NOT NULL,
  `effective_date` datetime NOT NULL,
  `location` varchar(254) NOT NULL,
  `sign_name` varchar(254) NOT NULL,
  `sign_position` varchar(254) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users_sk`
--

INSERT INTO `users_sk` (`id`, `user_id`, `sk_date`, `sk_no`, `position_id`, `departement_id`, `effective_date`, `location`, `sign_name`, `sign_position`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, '2015-02-04 00:00:00', '1', 1, 0, '2015-02-10 00:00:00', '1', '1', '1', '2015-02-03 00:00:00', 1, '0000-00-00 00:00:00', 0, 1, '2015-02-03 00:00:00', 1),
(2, 8, '2015-02-04 00:00:00', '1', 1, 0, '2015-02-11 00:00:00', '1', 'edit', 'IT officer', '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 1, '2015-02-03 00:00:00', 1),
(3, 8, '2015-02-24 00:00:00', '1', 5, 0, '2015-02-27 00:00:00', '1', '1', '1', '2015-02-03 00:00:00', 1, '2015-04-28 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(4, 8, '2015-02-10 00:00:00', '2_edit', 1, 0, '2015-02-12 00:00:00', '2', '2', '2', '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 1, '2015-04-27 00:00:00', 8),
(5, 8, '2015-04-22 00:00:00', 'dfsd', 6, 0, '2015-04-22 00:00:00', 'sadf', 'asdf', 'asdf', '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_spd_dalam`
--

DROP TABLE IF EXISTS `users_spd_dalam`;
CREATE TABLE IF NOT EXISTS `users_spd_dalam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_id yang ditugaskan ',
  `destination` varchar(254) NOT NULL,
  `date_spd` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_submit` tinyint(1) NOT NULL DEFAULT '0',
  `date_submit` date NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL COMMENT 'user_id yang memberi tugas',
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users_spd_dalam`
--

INSERT INTO `users_spd_dalam` (`id`, `title`, `user_id`, `destination`, `date_spd`, `start_time`, `end_time`, `is_submit`, `date_submit`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Rapat Design', 1, 'PT. Antah Berantah', '2015-03-09', '19:45:00', '21:30:00', 1, '2015-04-05', '2015-03-09 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(2, 'Test Dummy 2', 1, 'Jalan Keadilan Depok', '2015-03-11', '00:00:00', '00:00:00', 1, '2015-03-11', '2015-03-10 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Meeting', 0, 'PT. Test', '2015-04-14', '00:00:00', '00:00:00', 0, '0000-00-00', '2015-04-05 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'Testing', 9, 'PT. Telkom', '2015-04-08', '00:00:00', '00:00:00', 0, '0000-00-00', '2015-04-06 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'Testing', 9, 'PT. Dua Kelinci', '2015-04-07', '00:00:00', '00:00:00', 0, '0000-00-00', '2015-04-06 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(6, 'Annual Meeting', 14, 'Palembang', '2015-05-28', '00:20:15', '00:20:15', 0, '0000-00-00', '2015-05-21 00:00:00', 8, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_spd_dalam_report`
--

DROP TABLE IF EXISTS `users_spd_dalam_report`;
CREATE TABLE IF NOT EXISTS `users_spd_dalam_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_spd_dalam_id` int(11) NOT NULL,
  `attachment` varchar(254) NOT NULL,
  `description` text NOT NULL,
  `result` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_spd_luar`
--

DROP TABLE IF EXISTS `users_spd_luar`;
CREATE TABLE IF NOT EXISTS `users_spd_luar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_id yang ditugaskan ',
  `destination` varchar(254) NOT NULL,
  `date_spd` date NOT NULL,
  `from_city_id` int(11) NOT NULL,
  `to_city_id` int(11) NOT NULL,
  `transportation_id` int(11) NOT NULL,
  `is_submit` tinyint(1) NOT NULL DEFAULT '0',
  `date_submit` date NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL COMMENT 'user_id yang memberi tugas',
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users_spd_luar`
--

INSERT INTO `users_spd_luar` (`id`, `title`, `user_id`, `destination`, `date_spd`, `from_city_id`, `to_city_id`, `transportation_id`, `is_submit`, `date_submit`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 'Testing Apps', 1, 'PT. Dua Kelinci', '2015-04-02', 3, 1, 2, 1, '2015-04-13', '2015-04-06 00:00:00', 1, '2015-04-13 00:00:00', 1, 0, '0000-00-00 00:00:00', 0),
(2, 'Testing', 9, '0', '2015-04-14', 4, 2, 2, 0, '0000-00-00', '2015-04-13 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(3, 'Testing App', 9, 'PT Telkom', '2015-04-15', 3, 1, 2, 0, '0000-00-00', '2015-04-13 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(4, 'awdawdaw', 9, 'wdawd', '2015-04-15', 1, 1, 2, 0, '0000-00-00', '2015-04-13 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0),
(5, 'adawda', 9, 'dawda', '2015-04-16', 1, 4, 1, 0, '0000-00-00', '2015-04-13 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_spd_luar_report`
--

DROP TABLE IF EXISTS `users_spd_luar_report`;
CREATE TABLE IF NOT EXISTS `users_spd_luar_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_spd_luar_id` int(11) NOT NULL,
  `attachment` varchar(254) NOT NULL,
  `description` text NOT NULL,
  `result` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_sti`
--

DROP TABLE IF EXISTS `users_sti`;
CREATE TABLE IF NOT EXISTS `users_sti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `identity_no` varchar(254) NOT NULL,
  `ijazah_name` varchar(254) NOT NULL,
  `ijazah_number` varchar(254) NOT NULL,
  `ijazah_history` varchar(254) NOT NULL,
  `institution` varchar(254) NOT NULL,
  `published_place` varchar(254) NOT NULL,
  `activation_date` datetime NOT NULL,
  `position_id` int(2) NOT NULL,
  `receivedby_id` int(11) NOT NULL,
  `acknowledgeby_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `edited_on` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_on` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_sti`
--

INSERT INTO `users_sti` (`id`, `user_id`, `identity_no`, `ijazah_name`, `ijazah_number`, `ijazah_history`, `institution`, `published_place`, `activation_date`, `position_id`, `receivedby_id`, `acknowledgeby_id`, `created_on`, `created_by`, `edited_on`, `edited_by`, `is_deleted`, `deleted_on`, `deleted_by`) VALUES
(1, 8, 'sdf', 'sdf', '1', '1', '1', '1', '2015-02-04 00:00:00', 2, 8, 8, '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 1, '2015-02-03 00:00:00', 1),
(2, 8, 'test', 'test', '2', '2', '2', '2', '2015-02-24 00:00:00', 2, 8, 8, '2015-02-03 00:00:00', 1, '2015-02-03 00:00:00', 1, 1, '2015-04-28 00:00:00', 1),
(3, 8, '3 edit', '3 edit', '3', '3', '3', '3', '2015-02-17 00:00:00', 1, 8, 1, '2015-02-03 00:00:00', 1, '2015-02-04 00:00:00', 1, 1, '2015-04-27 00:00:00', 8),
(4, 8, 'a', 'b', 'c', 'd', 'e', 'f', '2015-04-20 00:00:00', 12, 9, 1, '2015-04-28 00:00:00', 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
