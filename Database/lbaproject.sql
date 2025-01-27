-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 07, 2023 at 05:55 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbaproject`
--
CREATE DATABASE IF NOT EXISTS `lbaproject` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lbaproject`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add vm model', 7, 'add_vmmodel'),
(26, 'Can change vm model', 7, 'change_vmmodel'),
(27, 'Can delete vm model', 7, 'delete_vmmodel'),
(28, 'Can view vm model', 7, 'view_vmmodel'),
(29, 'Can add user model', 8, 'add_usermodel'),
(30, 'Can change user model', 8, 'change_usermodel'),
(31, 'Can delete user model', 8, 'delete_usermodel'),
(32, 'Can view user model', 8, 'view_usermodel'),
(33, 'Can add file model', 9, 'add_filemodel'),
(34, 'Can change file model', 9, 'change_filemodel'),
(35, 'Can delete file model', 9, 'delete_filemodel'),
(36, 'Can view file model', 9, 'view_filemodel'),
(37, 'Can add request model', 10, 'add_requestmodel'),
(38, 'Can change request model', 10, 'change_requestmodel'),
(39, 'Can delete request model', 10, 'delete_requestmodel'),
(40, 'Can view request model', 10, 'view_requestmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'cloudapp', 'vmmodel'),
(5, 'contenttypes', 'contenttype'),
(10, 'schedulerapp', 'requestmodel'),
(6, 'sessions', 'session'),
(9, 'userapp', 'filemodel'),
(8, 'userapp', 'usermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-21 12:40:37.803996'),
(2, 'auth', '0001_initial', '2022-06-21 12:40:38.993796'),
(3, 'admin', '0001_initial', '2022-06-21 12:40:39.271181'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-21 12:40:39.285421'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-21 12:40:39.299760'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-21 12:40:39.472259'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-21 12:40:39.590539'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-21 12:40:39.700627'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-21 12:40:39.724317'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-21 12:40:39.839401'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-21 12:40:39.852611'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-21 12:40:39.869850'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-21 12:40:39.973279'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-21 12:40:40.089182'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-21 12:40:40.204701'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-21 12:40:40.229829'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-21 12:40:40.347311'),
(18, 'sessions', '0001_initial', '2022-06-21 12:40:40.487574'),
(19, 'userapp', '0001_initial', '2022-06-21 12:41:27.859106'),
(20, 'cloudapp', '0001_initial', '2022-06-21 12:41:41.264148'),
(21, 'schedulerapp', '0001_initial', '2022-06-21 12:41:51.808212'),
(22, 'schedulerapp', '0002_alter_requestmodel_differenced_time', '2022-06-22 04:47:06.031823'),
(23, 'schedulerapp', '0003_requestmodel_status', '2022-06-22 07:00:29.312502'),
(24, 'schedulerapp', '0003_remove_requestmodel_status', '2022-06-22 11:30:30.210423'),
(25, 'schedulerapp', '0004_alter_requestmodel_differenced_time', '2022-06-23 07:21:25.977076');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('k1v9mppiu1ihtgcs39s0uttjli85xg9w', 'eyJ1c2VyX2lkIjoxfQ:1o4Lu7:EQvDAxE6XcohaGtipki1v4gqMEWTEKVKT9K2NRGIuwk', '2022-07-07 12:25:47.896939'),
('rpi2nm9xc00ro7rqvp0qdzdn2djoys3e', 'eyJ1c2VyX2lkIjoyfQ:1qYP8H:Jam1OtWXcx4JIAEW8JnhllU6RTQnz_YuePUzbkNF0v0', '2023-09-05 11:01:09.222809'),
('uaz6hla5txgzawkgyhc42b4vq3hl8gpo', 'eyJ1c2VyX2lkIjozfQ:1qpAQb:ChqCNn6BTFxLbUER1Ucx4-54h6Gz4URH-ssUvUZWo4c', '2023-10-21 16:45:21.183648');

-- --------------------------------------------------------

--
-- Table structure for table `file_details`
--

DROP TABLE IF EXISTS `file_details`;
CREATE TABLE IF NOT EXISTS `file_details` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `vm_id` int(11) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `file_name` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `file_extension` varchar(250) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_type` varchar(300) NOT NULL,
  `file_key` varchar(200) DEFAULT NULL,
  `file_data` longtext DEFAULT NULL,
  `status1` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `file_uploaded_date` date DEFAULT NULL,
  `file_uploaded_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_details`
--

INSERT INTO `file_details` (`file_id`, `user_id`, `vm_id`, `file`, `file_name`, `description`, `file_extension`, `file_size`, `file_type`, `file_key`, `file_data`, `status1`, `status`, `file_uploaded_date`, `file_uploaded_time`) VALUES
(41, 1, 1, 'files/chart_-_Copy.txt', 'chart - Copy.txt', 'demo', NULL, 18, 'text/plain', NULL, NULL, 'ON', 'Assigned', '2022-06-23', '15:04:05.835817'),
(50, 3, 11, 'files/codebook.txt', 'codebook.txt', 'cloud data', NULL, 1927, 'text/plain', NULL, NULL, 'ON', 'Assigned', '2023-10-07', '22:19:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

DROP TABLE IF EXISTS `request_details`;
CREATE TABLE IF NOT EXISTS `request_details` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `vm_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `file_name` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_type` varchar(300) NOT NULL,
  `file_data` longtext DEFAULT NULL,
  `requested_date` date DEFAULT NULL,
  `requested_time` time(6) DEFAULT NULL,
  `file_uploaded_date` date DEFAULT NULL,
  `file_uploaded_time` time(6) DEFAULT NULL,
  `differenced_time` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_details`
--

INSERT INTO `request_details` (`request_id`, `user_id`, `vm_id`, `file_id`, `file`, `file_name`, `description`, `file_size`, `file_type`, `file_data`, `requested_date`, `requested_time`, `file_uploaded_date`, `file_uploaded_time`, `differenced_time`) VALUES
(318, 2, 1, 49, 'files/test.txt', 'test.txt', 'data', 36, 'text/plain', NULL, '2023-08-22', '16:26:39.000000', '2023-08-22', '16:00:00.000000', '0:26'),
(319, 3, 3, 50, 'files/codebook.txt', 'codebook.txt', 'cloud data', 1927, 'text/plain', NULL, '2023-10-07', '22:22:38.000000', '2023-10-07', '22:19:00.000000', '0:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `user_image` varchar(100) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `verification` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `email`, `password`, `mobile`, `location`, `dob`, `user_image`, `otp`, `verification`, `status`, `reg_date`) VALUES
(1, 'sravani', 'chanuchiramana1800@gmail.com', '1800', 9059501800, 'Nellore', '2022-06-21', 'user_image/face23_C3UVcXK.jpg', 4133, 'Verified', 'Pending', '2022-06-21'),
(2, 'john', 'fazalsirmail@gmail.com', 'john', 9876543210, 'hyd', '2000-01-01', 'user_image/banner.png', 4412, 'Verified', 'Pending', '2023-08-22'),
(3, 'codebook', 'codebook.in@gmail.com', 'Cloud@123', 8555887986, 'hyderabad', '2000-01-01', 'user_image/face8.jpg', 3561, 'Verified', 'Pending', '2023-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `vm_details`
--

DROP TABLE IF EXISTS `vm_details`;
CREATE TABLE IF NOT EXISTS `vm_details` (
  `vm_id` int(11) NOT NULL AUTO_INCREMENT,
  `vm_name` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `storage_type` varchar(50) DEFAULT NULL,
  `cpu` varchar(50) NOT NULL,
  `ram` varchar(200) NOT NULL,
  `vm_added_date` date NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `radio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vm_details`
--

INSERT INTO `vm_details` (`vm_id`, `vm_name`, `os`, `storage`, `storage_type`, `cpu`, `ram`, `vm_added_date`, `status`, `radio`) VALUES
(1, 'virtual Machine-1', 'Windows', '2TB', 'HDD', '2.24GPU', '20GB', '2022-06-21', 'OFF', 'Pending'),
(2, 'virtual Machine-2', 'Linux', '125GB', 'HDD', '2.24GPU', '20GB', '2022-06-21', 'OFF', 'Pending'),
(3, 'virtual Machine-3', 'Windows', '2TB', 'SDD', '2.24', '16GB', '2023-10-07', 'ON', 'Pending');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
