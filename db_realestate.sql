-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 14, 2023 at 07:19 AM
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
-- Database: `db_realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add tb_user', 7, 'add_tb_user'),
(26, 'Can change tb_user', 7, 'change_tb_user'),
(27, 'Can delete tb_user', 7, 'delete_tb_user'),
(28, 'Can view tb_user', 7, 'view_tb_user'),
(29, 'Can add tb_property', 8, 'add_tb_property'),
(30, 'Can change tb_property', 8, 'change_tb_property'),
(31, 'Can delete tb_property', 8, 'delete_tb_property'),
(32, 'Can view tb_property', 8, 'view_tb_property'),
(33, 'Can add tb_favourites', 9, 'add_tb_favourites'),
(34, 'Can change tb_favourites', 9, 'change_tb_favourites'),
(35, 'Can delete tb_favourites', 9, 'delete_tb_favourites'),
(36, 'Can view tb_favourites', 9, 'view_tb_favourites'),
(37, 'Can add tb_chat', 10, 'add_tb_chat'),
(38, 'Can change tb_chat', 10, 'change_tb_chat'),
(39, 'Can delete tb_chat', 10, 'delete_tb_chat'),
(40, 'Can view tb_chat', 10, 'view_tb_chat'),
(41, 'Can add tb_admin', 11, 'add_tb_admin'),
(42, 'Can change tb_admin', 11, 'change_tb_admin'),
(43, 'Can delete tb_admin', 11, 'delete_tb_admin'),
(44, 'Can view tb_admin', 11, 'view_tb_admin'),
(45, 'Can add tb_feedback', 12, 'add_tb_feedback'),
(46, 'Can change tb_feedback', 12, 'change_tb_feedback'),
(47, 'Can delete tb_feedback', 12, 'delete_tb_feedback'),
(48, 'Can view tb_feedback', 12, 'view_tb_feedback'),
(49, 'Can add tb_order', 13, 'add_tb_order'),
(50, 'Can change tb_order', 13, 'change_tb_order'),
(51, 'Can delete tb_order', 13, 'delete_tb_order'),
(52, 'Can view tb_order', 13, 'view_tb_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, '', NULL, 0, 'admin@gmail.com', '', '', '', 0, 0, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'realestateapp', 'tb_admin'),
(10, 'realestateapp', 'tb_chat'),
(9, 'realestateapp', 'tb_favourites'),
(12, 'realestateapp', 'tb_feedback'),
(13, 'realestateapp', 'tb_order'),
(8, 'realestateapp', 'tb_property'),
(7, 'realestateapp', 'tb_user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-23 11:35:21.641547'),
(2, 'auth', '0001_initial', '2022-08-23 11:35:22.444064'),
(3, 'admin', '0001_initial', '2022-08-23 11:35:22.615496'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-23 11:35:22.631487'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-23 11:35:22.643564'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-23 11:35:22.731796'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-23 11:35:22.801076'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-23 11:35:22.827064'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-23 11:35:22.840054'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-23 11:35:22.888309'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-23 11:35:22.895307'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-23 11:35:22.913594'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-23 11:35:22.941954'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-23 11:35:22.967756'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-23 11:35:22.995740'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-23 11:35:23.010727'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-23 11:35:23.035713'),
(18, 'sessions', '0001_initial', '2022-08-23 11:35:23.094677'),
(19, 'realestateapp', '0001_initial', '2022-08-26 05:50:24.892398'),
(20, 'realestateapp', '0002_tb_property', '2022-08-29 04:51:06.059127'),
(21, 'realestateapp', '0003_tb_property_category', '2022-08-29 05:54:50.217443'),
(22, 'realestateapp', '0004_tb_favourites', '2022-08-30 07:55:41.445791'),
(23, 'realestateapp', '0005_tb_chat', '2022-09-01 10:44:33.380429'),
(24, 'realestateapp', '0006_tb_admin', '2022-09-02 04:18:19.602662'),
(25, 'realestateapp', '0007_remove_tb_property_fav_status', '2022-09-02 07:24:32.230172'),
(26, 'realestateapp', '0008_tb_admin_utype', '2022-09-02 07:26:10.530328'),
(27, 'realestateapp', '0009_tb_feedback', '2022-09-05 08:52:55.446456'),
(28, 'realestateapp', '0010_tb_feedback_username', '2022-09-05 10:45:51.080278'),
(29, 'realestateapp', '0011_auto_20220914_1301', '2022-09-14 07:32:27.970431'),
(30, 'realestateapp', '0012_alter_tb_property_description', '2022-09-17 06:13:00.786982'),
(31, 'realestateapp', '0013_tb_order', '2022-10-03 04:32:03.139555');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('09i18hwp9yhzyayic8e80v9wt7gd1oqm', 'eyJpZCI6Mn0:1oSsva:GnIocgn6uf1lGvSFoBlFWgbjie8qBs9xvUf3FgyiOnU', '2022-09-13 04:32:42.516085'),
('0c0yizt1j62oljto5h8rfjqvy1qxujnm', 'eyJpZCI6Mn0:1oUKvX:fB0Pl9VuECbyI0ZCrmJOVqubEyMCvPxPiqDYIGTfx80', '2022-09-17 04:38:39.451487'),
('0e829xb9nn5ub8mugx0y35mcaq8ht540', 'eyJpZCI6Mn0:1oY3yX:1NJ-dkzxyOAmzMQAirk_HC-OuHWCt98N0b8s96BQAbY', '2022-09-27 11:21:09.248324'),
('0fhqojnss4cub18fy1j7w0hhgqg1vl5y', 'eyJpZCI6MX0:1odqhf:z4LrJnwiDXhYnZo2JYjRcrDfh-EIqVO4EECw8OZwwks', '2022-10-13 10:23:39.893864'),
('0jeho7w7bkequdpkuz8r2p7zszjdxy77', 'eyJpZCI6MX0:1oZ7Oz:uFhGV165wYtyGBLxbYjPd5S7LPDbFV_QTHuXwfJWwCY', '2022-09-30 09:12:49.993866'),
('0mtyr7g9eof555wnczs7tmkxzfos490t', 'eyJpZCI6MX0:1oZPy7:QdmKarl6URWCiqDTcJOm377G9vhF3qchIA83p4h6w_E', '2022-10-01 05:02:19.235203'),
('0neujubizrh5gtgz90g0k5iu67pzey26', 'eyJpZCI6Mn0:1oXykd:kvIYS42lbp3h8YsydvyyZfxVvKgwb7YkT9Xd7Bt00W8', '2022-09-27 05:46:27.071500'),
('1017dbn1s3jvi42vxot9j6gb7wsjtjak', 'eyJpZCI6Mn0:1oXxoF:5Dj9lVyITkDzmvtiOsX6LwC6dc1ynMgjxeLLZVwJJUE', '2022-09-27 04:46:07.851052'),
('1ass9nddgse5f25nlmrze591dqv0of2m', 'eyJpZCI6Mn0:1oXg4b:8JY4UOiYSiroiCDhYu3fVrLw9yZAo7jHmozubC9O9ag', '2022-09-26 09:49:49.544043'),
('1c71asgavgjvlna6hprk3vzds30a2141', 'eyJpZCI6MX0:1ofDsj:YrwG6fN-7FNcKJrDw5z_zIUZIlcSmL68Hv4YaDtKwf0', '2022-10-17 05:20:45.005705'),
('1igz73lfv2fdafuywjxkugfy7orzkvkq', 'eyJpZCI6Mn0:1oYN4A:_tGuwjIBSmwvjMGaIAexgIOeQDEwsd-XHIEYiX_hro0', '2022-09-28 07:44:14.800782'),
('1vrlj25543zmkj9x3wwwq2ys2n1t071z', 'eyJpZCI6Mn0:1oXbJe:qKWHXk3O6k_8pfZ6h1qcDD6f6MQlArVe-0F8D3dBoxA', '2022-09-26 04:45:02.273888'),
('2e93clw74vjr88mt523h7gq51kl393ch', 'eyJpZCI6MX0:1odrDJ:-Umr2u8VrfM5kCXLPZEapfTLM2Jk2Hk46wKfyU1y8Qc', '2022-10-13 10:56:21.657111'),
('2n6a9nzp5nirlh2tix4k8gtqqbkjzfa2', 'eyJpZCI6Mn0:1oSzb1:K-0LySuYY5L3Z8UFie9FTNy8wdvbKlgMYXPuaiTnDMU', '2022-09-13 11:39:55.203070'),
('317lmfy87v11y9fc7t0p6z8jg4smdxx2', 'eyJpZCI6MX0:1oZR28:8k8aiCO-CVb2cBX0fC3nqMjpUwevm-mGM8zv6_sWe40', '2022-10-01 06:10:32.651284'),
('37zg2ezzs3nx7x09jugesosok02y6yjd', 'eyJpZCI6MX0:1ofe31:Rq5qiYWAnwSJXqeLstjmH0fzlz9Q9J0zilkczcbsa08', '2022-10-18 09:17:07.309593'),
('3d10v9qoxbdionr882us29jxpxnc9w14', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.943207'),
('3daix192e2zts69awmdo3h1l0kti8a11', 'eyJpZCI6Mn0:1oSZrl:91nssQx9V1KPuPGDQh53ADbg3dxgstULInXs5kZHeLI', '2022-09-12 08:11:29.877839'),
('3yxahx9guz1ouqeyctbhsoy106rtrrxk', 'eyJpZCI6Mn0:1oSZRa:N7ZuUp0uXBO0DZe9WfbPcqzkAKKa3YTtjbXJY6509FU', '2022-09-12 07:44:26.301593'),
('41lmbv7783i6ezah0pba5nv10pgbj42q', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.943207'),
('43k757j4j3vqxgtus92cxoftant8ww49', 'eyJpZCI6MX0:1ofdwW:9CWFgBCSacYE7GhcOcgK3XIgLFo7o71-hDbo4AEn_ZM', '2022-10-18 09:10:24.862871'),
('445j4lwydh8qf0ydr1eswuf1ya60v0sx', 'eyJpZCI6MX0:1ofaVT:OQKzgSLdxH3CsyeoC75Jre06YNE-xwBg7M5D5kc1Aak', '2022-10-18 05:30:15.707532'),
('4be81gubzsux44r739o871os0bw7kdmi', 'eyJpZCI6Mn0:1oSuWc:5j0ibWqY5X95m2qaEX74rwv6tHDsGMKQMpZYXRyIjEs', '2022-09-13 06:15:02.680731'),
('4ipd9gj22e0kebozhlfeeqswvbnbak1a', 'eyJpZCI6MX0:1oZ7Fv:1hp_MRiHJoy1Td88Ojwg2jP0O5L-BINOkwM3EzpM6mY', '2022-09-30 09:03:27.448113'),
('4lzaoy8bntc19x94sl1uktpjrq1fibmf', 'eyJpZCI6MX0:1oaxxo:cwEFVuE7Yn_EIX3IVGl8DuLLlPlZTo0GopzTpk_loAk', '2022-10-05 11:32:24.389561'),
('57re4vmaswidq01i0smmlof9kg2wkce3', 'eyJpZCI6MX0:1ofe5u:EBV8KtgfRuR9_3yXByM6e-FX2FSkn3r961OIAQLn_js', '2022-10-18 09:20:06.324679'),
('5g745pwswbuuspkvrkefcthnboasfath', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.943207'),
('5i3jicvwzbompef5twstydhqd02y1x5j', 'eyJpZCI6MX0:1ofGt1:Fo5o4FnzSWEsjoX1hp9z7g7iq_STg2GHkY13m3e7Eho', '2022-10-17 08:33:15.026939'),
('5jms07upybfa3lhxwuwp98xom30es3tw', 'eyJpZCI6MX0:1oZ7pE:KyDe2R_z2409zikpDlhxh47I6qHEiI6yc1_Ho6erbI0', '2022-09-30 09:39:56.274215'),
('5o6o9qkphu2obxedwj786kj2pq8now5d', 'eyJpZCI6MX0:1oaxR2:fWUnC3qyKGHl19DKZVvNNuGwU9Ez-i_lTxC4cGYhdAE', '2022-10-05 10:58:32.616149'),
('62tq3j0p0ubanuxyn8h5yokj416kkow6', 'eyJpZCI6MX0:1odr0a:dDgjcyh5w7JAU9Mh5YzRzGflH4xoHwbeA-OZ9UPTiYQ', '2022-10-13 10:43:12.563126'),
('6a1nkfmz9ry3wrj4ryg3utjnatvj2kmu', 'eyJpZCI6Mn0:1oTJ2O:xlrTDE2OndUXiGmBDiaMkZu0LUcUau7c6CUBGHVM_UY', '2022-09-14 08:25:28.207622'),
('6ayxqx651pwnzaiqizpzex4s32e4mdek', 'eyJpZCI6MX0:1odqz0:DIS6jtCqkhffBQCEV53QxMLVTWnXR2wuFf97lQ6fzTY', '2022-10-13 10:41:34.995569'),
('6n2oi2xiyowk7vds7ujom85hh6oyz96h', 'eyJpZCI6MX0:1oZ6lf:2pB8I7EQuXjIU-z1ZU92gL5Yi-dPa_mZzhmL6Rh77VA', '2022-09-30 08:32:11.089147'),
('6szbef6xx15vs5uanrnzxujea91q5lb0', 'eyJpZCI6MX0:1oaxbo:Ogg5s9Bor4AUtwU3X6pzEjpyFO5XXfvDwPRD_Rw3sr8', '2022-10-05 11:09:40.794757'),
('6torw1mzwpp8s81ytqri3zska5oecdvm', 'eyJpZCI6MX0:1olNjZ:S72C3QxQJLLJ5EaOrhuI8l97dCycCpHBLkAGxMA0Ipk', '2022-11-03 05:04:45.739235'),
('6tpn5lhpsrvhdvoaywj6aryx6zhv4rjo', 'eyJpZCI6MX0:1ofdo5:QDFw38kUHbzTJ6-qn-3CriIAvq2I7F_3c8suv41tX8w', '2022-10-18 09:01:41.565754'),
('7cox2pu1p83yuo80923u08hu25egsfer', 'eyJpZCI6MX0:1oZQaM:37tWzdSd_pFMI4GZufsAsQxECTyeqfUOAJU8mT1adLc', '2022-10-01 05:41:50.305933'),
('7r355cybgbmxkxq1oviqurwx4y8c2sqo', 'eyJpZCI6MX0:1ofe2v:-qLGPbBtrF2wNgrq0HlIg6VTvK4XvO7mknO5UzsztOY', '2022-10-18 09:17:01.722840'),
('7tmdiq7eidkn85vdzrs3bu01hj7sbxc3', 'eyJpZCI6Mn0:1oYLZv:SXZSq4Vnikqqzhb8ljDE_xMYB9XVqWsHlK_Y0ZnAjUI', '2022-09-28 06:08:55.334154'),
('85euw2orq0eq35wtjh4mumr9p2kyb89e', 'eyJpZCI6MX0:1oZ72B:hURHz7cU3oOuBDAAijB_7lFKcJLx0ZB9CEldSBkxTxY', '2022-09-30 08:49:15.267857'),
('8er49nx4bnc1e21v0i1bgw5xz9tvbywe', 'eyJpZCI6MX0:1oeBCq:Q9S7e6e7lL0xJpvobDxrzurIPeNDMF3TOSAUsmVhhYM', '2022-10-14 08:17:12.664651'),
('8j3dt96blywkw6f5u2i4vost6s1aygvo', 'eyJpZCI6Mn0:1oTbgU:2MEeeLpjXoVfNi3wFEfz8S0GQ0lFihkRVKBgQHMGjwg', '2022-09-15 04:20:06.878032'),
('9h8nc6fzm6c286q8q0vjeh6jwxjwxq9j', 'eyJpZCI6MX0:1ofGZ1:HQT12VSXEgdsh76Excss-y54v7S6qNAM3E5Fk6RkNAA', '2022-10-17 08:12:35.229362'),
('9i1jf08k0617twul1z5j5w8a69gfsve5', 'eyJpZCI6MX0:1ofdrB:EuXzfAAsUmTM7buGaXVnmDYo0fIhXrgiRaprY8zpvdQ', '2022-10-18 09:04:53.109584'),
('9lw6i29xa3e2y58sdudjw6u5k05hwue9', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.958831'),
('9odt7g1sy50u8cnnsg6nt9r0r95ouxzu', 'eyJpZCI6MX0:1oaxd2:8GK1it0p2DM0HILnqjp4RXwp7Ob5l8P8L9DiDQkk_Rg', '2022-10-05 11:10:56.245538'),
('a0mphkdejqmymde5loo3n7jmkzplj4lm', 'eyJpZCI6MX0:1ofe5u:EBV8KtgfRuR9_3yXByM6e-FX2FSkn3r961OIAQLn_js', '2022-10-18 09:20:06.612986'),
('ai7iiau7uau3xk17ovjsbn2vkxdcr5in', 'eyJpZCI6MX0:1oeBCm:4BC5ij76s9lOayVDHH1yHRG65hzkrwcGIVTJyTtHd1M', '2022-10-14 08:17:08.055095'),
('akpb63hx02ut7av9ss9kcfy4xmxazf7o', 'eyJpZCI6MX0:1ofdwZ:gLkk-_HRgBhVte1yvfoSqQR_S8uLPNiyL16e2oJwGCQ', '2022-10-18 09:10:27.285017'),
('akr3lzu5u9w86cjduc65zva4cpypz85i', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.958831'),
('amkz2s2erzn3gwh8nxrq7j7w2d94cpbz', 'eyJpZCI6MX0:1oZ7hu:LLt1Hfi0KrcEH2alJNGi7SMk8PNyPNZmmrb2IYibikQ', '2022-09-30 09:32:22.357015'),
('aq5ykgdn8lym7ezh9apdp6hw23apa4md', 'eyJpZCI6MX0:1omp1H:Q5b-Xj9nrlxOupHB1IpewCnzTcmEB6bAORp0okSTQyU', '2022-11-07 04:24:59.025014'),
('ayjt5ukowmcirrl5fcj3fr0ws9j3rwd5', 'eyJpZCI6Mn0:1oV7j9:sBFhHhAMXsAqimGXeklxW_CHYSTpXiHcL2LCJHhzhBs', '2022-09-19 08:45:07.530443'),
('b3qlku1o6yhzbhwr5w7nwq1s0e6x6ezl', 'eyJpZCI6MX0:1oaxxR:Gapkg05IjAjyJ57RDMj5ICV_tcQEL9YSAAXX9x6-1Vc', '2022-10-05 11:32:01.198044'),
('b8c8g8zibe0ca24qnwuehup83tqvsdvp', 'eyJpZCI6Mn0:1oV6ja:azH1wtEUj_JI-mepMs9aqI7UYxZn_0mkJBoE0IDBeR8', '2022-09-19 07:41:30.209275'),
('bdkj0t2nugt7uppki7ku6ug9lx3ee4zf', 'eyJpZCI6MX0:1ofe5r:6JVCK4NRCsgcXmD8sp8JU6T1rzs8SLovi3vTSiOPqjc', '2022-10-18 09:20:03.462306'),
('bjvbiriax18djehn1lwbgm636pbfo7kl', 'eyJpZCI6Mn0:1oV6Kh:2Ku0X4ndL_MTQ8sQcEuGZIY6c2s3i_eE6fr6IPOW1S8', '2022-09-19 07:15:47.788206'),
('boh0tdk6srdpfmstycrapjn1iki9qiip', 'eyJpZCI6MX0:1oXcVN:XK7FUVPP2wEQRCLt3gt35Zbnuz3J4kMKjxux7Xh_ry8', '2022-09-26 06:01:13.408647'),
('bs94n5vfhy04uyvzocydfimulch7s23g', 'eyJpZCI6MX0:1oZ7Se:WxVzQutaEUkq1EQJTetqoYDRZue1s7cHyGnjXDvhB2w', '2022-09-30 09:16:36.805868'),
('bteqim9mc9aax6urle02r1galrp4sxn7', 'eyJpZCI6Mn0:1oTiR8:Z9LSOuVIMawS-y8qUDjukWIPTuTJCbipkEat0D0gaYA', '2022-09-15 11:32:42.224256'),
('bvh15ajvjbnhgjpvfeycq5jmnaatsou7', 'eyJpZCI6MX0:1oZRDx:gkYoWozioFg-8plKkYDR4mFThvUHk1weAUodN3DARh0', '2022-10-01 06:22:45.011508'),
('bwviplkb7l2v77d2rtgatpo00ueh4vao', 'eyJpZCI6MX0:1odqqh:L6QIko6nK7rdbXqiX3v9QSenM1Qwbii4778ZobMBdhY', '2022-10-13 10:32:59.381505'),
('byqs734lfaw95xp9q0tk1k5dgynkjuz6', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.927583'),
('c67omh70i85mpoxweaq088xztovvpuun', 'eyJpZCI6MX0:1oZ7sW:XYjmKYdeb5YqeXZ8rrhvUiM0MdP8izQjU9t3oAdgstY', '2022-09-30 09:43:20.887869'),
('c6qx7ahns17j3r3od1kj6r780b3kg309', 'eyJpZCI6MX0:1odqxA:ID0IRtOWzPV1PMB94ybzZRw-uwdxmPgOqVwGOc75gwc', '2022-10-13 10:39:40.259746'),
('ci34623hapm0hv3surewci1z7otjfb9t', 'eyJpZCI6Mn0:1oTFKz:shWPjNhTNSkytaTVv3xDckAEC6SMhJj4ADuUWQjVQ2Y', '2022-09-14 04:28:25.446488'),
('crb8hbrn5wyf51aznnpxx4t73z4wgjac', 'eyJpZCI6MX0:1oZQyX:sJXT8XyesGJ9EkXqwNBOoDMWLrJER70nLz3TBUPKZhI', '2022-10-01 06:06:49.659205'),
('cut1rcks7es7wrke912g0p1rbwiiyhbb', 'eyJpZCI6MX0:1obffg:Qb50um8e7Zm1EB2ibtuGZcCK8twWjLXzI1u_K5RQOXM', '2022-10-07 10:12:36.528210'),
('d1glmiv99t1rdqr4957f4mnurdl070og', 'eyJpZCI6MX0:1ofapc:59juRKn7cy9zjPcd_Fe0rV-SdJJAlOW3IZrggx7uCBs', '2022-10-18 05:51:04.383209'),
('d2k6cgxa090i4rtvab323aassaecldl9', 'eyJpZCI6Mn0:1oXxa9:AtfXxywN6_nFtLeCFV0_FYty6TYtNFi2m87l7x_6Yqk', '2022-09-27 04:31:33.244628'),
('d33gj1l4vio6h9xwdmlxhvo3tft0v5o1', 'eyJpZCI6MX0:1oZQS3:ITw7Ps3ANAWvt8A8JXKvlzQoiZtS5ya9DVa0fXbuS5E', '2022-10-01 05:33:15.552501'),
('dr5f60se8ildzedio8d2goewoxulb8gx', 'eyJpZCI6Mn0:1oSzHi:u0XWvP-u9a2Qck9V7g4bMGzjK46u3B2jaAti1lUS0_0', '2022-09-13 11:19:58.334012'),
('dsfs78bhchovdmyy637nknylzo0eh0k0', 'eyJpZCI6MX0:1ofdqt:0qtGa-Q3dkr6Z2Ig_u8Ewl2kxjJmDAOqxEquapbVPV8', '2022-10-18 09:04:35.523531'),
('dt10tzi4fta06oyqc4zojg42pki52fqj', 'eyJpZCI6MX0:1oaxxR:Gapkg05IjAjyJ57RDMj5ICV_tcQEL9YSAAXX9x6-1Vc', '2022-10-05 11:32:01.104295'),
('e9bdvb6up9sldq0vxcmhwnyyyfbh7v02', 'eyJpZCI6Mn0:1oV4Oj:LqbVX7SXwXS5hPVUdAFpc24aYo2gg7Tk886zSMBXoq4', '2022-09-19 05:11:49.822952'),
('e9uvz65h7e4sojdgcjj5m054y836vgp7', 'e30:1oXgaq:Argobr8Qf_IvkwFqdIrVICFFxyYR6-MzY8uT9Cf0DsE', '2022-09-26 10:23:08.390679'),
('eajn8w73q7sbk8yj4sztzxjv6c5tqhkh', 'eyJpZCI6MX0:1ofDsj:YrwG6fN-7FNcKJrDw5z_zIUZIlcSmL68Hv4YaDtKwf0', '2022-10-17 05:20:45.021330'),
('ekx5skw0hewvrqxoq4koe4ab008ocb74', 'eyJpZCI6Mn0:1oTbps:1YYn2w7RE0yN5bMPrR0LDul4NE0GEWiFbfpNrCzBi0E', '2022-09-15 04:29:48.499961'),
('f0ub249753il7poeo6wasyhok3umqyme', 'eyJpZCI6MX0:1oXbKJ:el3EN-puSq_RhqFTUHAmPraDCi0uE4lo1cwIGuj9GqY', '2022-09-26 04:45:43.723997'),
('g7cz12a9ncf143ijuk0oay38cs8v1kun', 'eyJpZCI6MX0:1oZQFW:cExL4piv2SvnnrZZ4eQxJoN95nBZcDpTOHrJdjClgjI', '2022-10-01 05:20:18.697780'),
('ga8r7tjprfyb8fjb8cicdwh7z1j6irjy', 'eyJpZCI6MX0:1ofGUo:C4lUMkwbl9cM2fZtdF4WZwGVEZMA0i9qwO_vTe537vg', '2022-10-17 08:08:14.657024'),
('gbtqp3vo3dersfrl4eopgxg3rwtbohgj', 'eyJpZCI6Mn0:1oSc95:l7y9tRO3fmoSU3byJs8EEZ2pjdWWCKrXsS-Eyb38jF0', '2022-09-12 10:37:31.492323'),
('ghdeeo36kbzcbt2pwvbmg2trhxolbmb1', 'eyJpZCI6MX0:1ofdo5:QDFw38kUHbzTJ6-qn-3CriIAvq2I7F_3c8suv41tX8w', '2022-10-18 09:01:41.862494'),
('gkhhqkxrq6oq8vztglc64jjjmwtvz4mh', 'eyJpZCI6MX0:1oXfoT:cWExlrvUkxrJB2J0Idwx1BNg4cveCu25EayFuXifo0Q', '2022-09-26 09:33:09.003368'),
('h9bv1cld3efvqmabm1emoconwvauyb87', 'eyJpZCI6Mn0:1oXhab:asA4mHqC3Z0GkcH_UWkrUCmnY6xrc3GmF5ga9G8hGFU', '2022-09-26 11:26:57.826868'),
('habde4mrl2jcshbpma5ygu15jswya774', 'eyJpZCI6Mn0:1oRUsE:wnQ0pisFhACuEZ26bRH9ok8rngEOUyp-bHllv-2UiEU', '2022-09-09 08:39:30.743595'),
('ho79oqm268r4dx7ymmx3ydniq1qolrnk', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.990081'),
('hok9zckep4kwk4lalys9n6jbpahuln4j', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.990081'),
('hpbh15fp6r9lavct5gaaa2zc7w8rvhhr', 'eyJpZCI6Mn0:1oXaui:dHqiXLZLZqLrLXJRtSkP5NdiQPu045NsEJl4kuKMk3Y', '2022-09-26 04:19:16.935692'),
('hu11ak5yxn4bwpcjiqgklw3p32i34orv', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.927583'),
('hva3lpm14wfqgphbcyy1ombh3v67aboj', 'eyJpZCI6Mn0:1oVRmy:J_R4-42D2xxLHUtwkCcZSWcQ3gDPjy1g7SF53h1UDfI', '2022-09-20 06:10:24.940714'),
('hvkd9jxw0a4czyvtp13m201uu8jyokro', 'eyJpZCI6Mn0:1oV6Wu:UYaxkxoTioXcQ5W1S_Kkk-_0-xCyGsUhl99aWh89vKQ', '2022-09-19 07:28:24.914723'),
('i20et2znrsh37b1njbowfmb31s2xv2iv', 'eyJpZCI6MX0:1ofdwd:6wXtgY_ZsspDrVuvnB4mBnflRSV6JADmglpB-cKrZiE', '2022-10-18 09:10:31.914898'),
('ih9hgvq8jab3bvssqj0pxlm2iaf0u7gj', 'eyJpZCI6MX0:1oZR6h:Fx17kq1I0V2R9WmkHYYWMGCk2SiWO_MOZ-jcmB3l_P4', '2022-10-01 06:15:15.254007'),
('iksidkwxusjwm0j6frvlre6328dtlfr9', 'eyJpZCI6MX0:1oeB3J:9E_fWdrG93jRpGICNI9cp8KQuY-xCd2x5dr-SGICoio', '2022-10-14 08:07:21.183810'),
('iot16b72wpewofz6zos78qj1zf1is137', 'eyJpZCI6MX0:1oZ75W:HBL0msXm7G-jqXuc7EO-6VRa68LTbFqOHm4-ZBZu2IA', '2022-09-30 08:52:42.390242'),
('irrf6wwlhwtembw2evvrd5mrteb9538c', 'eyJpZCI6MX0:1ofdns:3U8b9nJGqBjGdhGo5PSXJ0cRK09e1jM9S-b71ndlMdg', '2022-10-18 09:01:28.451773'),
('j0d0z4wsrnj950gm695b87mjumlu3a5j', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.974457'),
('j0lc77p9bbqmi1pfdm90phia4qwgwzhn', 'eyJpZCI6MX0:1oZQ3s:phQkKCe3BYM7Jw-AlMWTkB1TtQjIBUIvd8NbLPSrJsc', '2022-10-01 05:08:16.409850'),
('jat3i76k8nqctrq9yl8c3ecbypw2hh0a', 'eyJpZCI6MX0:1oeCss:aQzUjsFwCZuXZb47feb9a3Fa2fFT7gEuYWmdDPYxaBo', '2022-10-14 10:04:42.505845'),
('jq7j7o8czwzgloc2fogh0nxc32mc858q', 'eyJpZCI6MX0:1oaxZt:HrTXbogAuziQa4TJ2bHXbHYHuW6kTjBVMeKMSQiw19U', '2022-10-05 11:07:41.855780'),
('jsv92pa967x0m155hha1fwe4le1whvug', 'eyJpZCI6MX0:1ofdwU:Am3Va28-ddWh3Mo9SHKJAf9QAZXVnymrBYY1iRSlYpg', '2022-10-18 09:10:22.037053'),
('jx0m7bda0cu6yr6lop0ed5z1525lm5xv', 'eyJpZCI6NH0:1oVRvx:ax39B12AnuTLU28YaoOnYvwhX_XcxmdgfAS4rdwqUxI', '2022-09-20 06:19:41.197479'),
('kp4ela35e6em7qshix5xgu3i830ruh5q', 'eyJpZCI6MX0:1oZ7rR:bvbzavDH4BT4EYxvfc4otTa5M9bueGMRJUgP88ClllY', '2022-09-30 09:42:13.921432'),
('l3ys0706vnly3yqm4bmu9pda7ok6julq', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.974457'),
('l42bsnq3eapwkpt62legh85hl90tizsy', 'eyJpZCI6Mn0:1oYNIY:GMYzudALuBezwQey1ynggPK0K8Uze643eWY2acmrshQ', '2022-09-28 07:59:06.221934'),
('lbtqhbsnvl21ueu2m8kikb62v048bpqt', 'eyJpZCI6Mn0:1oSzZO:RppxzFUrK_mEzHCgNocB5j3KF3pL3S4ZC0azLfWMBTg', '2022-09-13 11:38:14.406901'),
('leztfjjsgriop0d8dxzzqxo8uw3v47kx', 'eyJpZCI6Mn0:1oTIdr:yxddV1l5AzNizcGKDuvECWSg4fnwwgSRz1-gsqCC1MQ', '2022-09-14 08:00:07.822702'),
('m11slowaq0un9qatzf3wbgxt4kc9dryc', 'eyJpZCI6MX0:1oZ81b:7vqYUHx9ptrtnK8Z5kloQpGq7tCmpjY3euDAiCnoCUk', '2022-09-30 09:52:43.130059'),
('m2hbkdqrs3orp7rza0k0rsj0jqrus9h2', 'eyJpZCI6MX0:1ofdoK:h-O6CqlPRgHN2MZWzn6bwmCpw2_-zhxPOdDNYM1Pjyw', '2022-10-18 09:01:56.826682'),
('mi9px099anll8igu43gg40wzpcwsja4j', 'eyJpZCI6MX0:1oaxxR:Gapkg05IjAjyJ57RDMj5ICV_tcQEL9YSAAXX9x6-1Vc', '2022-10-05 11:32:01.104295'),
('mltol4eodr4wnvbfoi2yvvw1zvg5nq72', 'eyJpZCI6MX0:1odmYx:rbnGKq2-vUCY7RwfvwN-7hfnGbyLBlCVXXFw77gbSrQ', '2022-10-13 05:58:23.488688'),
('mqda389088ji6ic23pjuslh1c9a52mx5', 'eyJpZCI6Mn0:1oV6dU:PuqHfPJ2lX3c-q2QXQjh7AD4gn909vqWwjTyPubD1hc', '2022-09-19 07:35:12.989362'),
('mr05m5ns445hy0d6xg7stw01ytruxjdo', 'eyJpZCI6MX0:1oTJ01:dUGWxwbbtv-F4lmIOtra3qe7CjuAAs4Fd_4vwu9s74g', '2022-09-14 08:23:01.285014'),
('n1v5y82qrjqkf285jz8rjfzx7mahc91e', 'eyJpZCI6MX0:1ofdqJ:cy35EUD_Tm1ZtRyKP4f4nsOPEGIXgeAaXuaJfMefpVo', '2022-10-18 09:03:59.187614'),
('n8cipmt5ujrguu0yxfru1po996p5kfjy', 'eyJpZCI6Mn0:1oTGrb:IgWiOZYFjMSTp29oAYScSpI1_IubCl10vOa-16IY8Sw', '2022-09-14 06:06:11.099487'),
('nq7hm8th909j9wcb524qf1qlyo3aed3q', 'eyJpZCI6MX0:1ofDsj:YrwG6fN-7FNcKJrDw5z_zIUZIlcSmL68Hv4YaDtKwf0', '2022-10-17 05:20:45.021330'),
('nyk7s6yy8xxgl1pjsc49jh4plvmkiuu9', 'eyJpZCI6MX0:1ofe5u:EBV8KtgfRuR9_3yXByM6e-FX2FSkn3r961OIAQLn_js', '2022-10-18 09:20:06.317682'),
('o88btlvsuour7gw6n07z49d1ln48udb3', 'eyJpZCI6Mn0:1oV6U1:prOTw8dQBTnyj5eA9BYtqrbw0n0UMj3oLtS3WaCSxQY', '2022-09-19 07:25:25.908442'),
('o9pkl98dw1iiup192h8s0lwbaxo6m0se', 'eyJpZCI6Mn0:1oTIJt:nbazYA3H7Agfd9ctEl2JX5iG0NFtnb1BkmY7-SbmMhY', '2022-09-14 07:39:29.746709'),
('okwxcm5fit8cqzto1v7dahvgmmmar9re', 'eyJpZCI6MX0:1oaxdb:PiPfvc0HximG9No5Por1wJHcWRHn1JTFI0tECNtdZSg', '2022-10-05 11:11:31.592876'),
('p29gd7ydhi922hxv3nrkw9zbqinvtocn', 'eyJpZCI6MX0:1obfql:PxEPjKzGnNFDgKCi4vhxGMOgDqaGByx_-5oLvjxLNXo', '2022-10-07 10:24:03.054932'),
('pi1l4eumvd5jrja9dxd0qjpjhjw5lksl', 'eyJpZCI6MX0:1ofGgI:hOyWIFcNTq1oYZryLX7JfV7oCcz4KngcHcU3oYgWm-Y', '2022-10-17 08:20:06.017377'),
('pyb1wzc4wwcald9bblk53z627psy99km', 'eyJpZCI6MX0:1oZQ7H:0ZB7s3WTo1gds6O-YoOONJhdZrsNOBD4b_DHyqA9WbM', '2022-10-01 05:11:47.733220'),
('q4ocyo2xkcgsc03ix8ulyocq56dv1jvo', 'eyJpZCI6MX0:1oXfzD:HtBIWJFGXTUTLd7s-_T7cRfEuPGedmm5o3am3V7uqX0', '2022-09-26 09:44:15.338373'),
('qa2by6qa79n00qf00znrjbspn1npytkk', 'eyJpZCI6Mn0:1oSbBw:-PwVYCd8nGoyu6L2nGcGr1SBER9JJiFtKfZIVe2JQoc', '2022-09-12 09:36:24.602072'),
('qdiwroc252vydrlbx1d8trd5r3czwaak', 'eyJpZCI6MX0:1odrMw:gsshoRZPxk6XLdw-bTPJLG4TIG4XiNpwG9YEja6lUps', '2022-10-13 11:06:18.585238'),
('rcyre6co442bk4yre3l5r9lorfe1j5df', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.974457'),
('rehazeaegaizstqc88c8z9cql7ekzzw3', 'eyJpZCI6Mn0:1oTKHs:aSxkHpV730Vv0PdwcXJ3b6btfy_Zbee7Vb87T7z8t4k', '2022-09-14 09:45:32.879997'),
('rna3fgcu7xtnv01mden79b5n6j5ntuyo', 'eyJpZCI6MX0:1oaxVW:CQYw_0YWOL8YafJpgQIrzeJ95smyrJfWh8S_Q5uikRc', '2022-10-05 11:03:10.091837'),
('rx5ygjlq2gkcyrs74dxlngp7cs48pvmz', 'eyJpZCI6MX0:1ofe3r:sObiZ9ZK74Ozq1AVTfKHu9KuywXGtEdflH30lg4DJCg', '2022-10-18 09:17:59.981994'),
('rx80onumeex55mkil673hycmix2omkd8', 'eyJpZCI6Mn0:1oYOWz:cgsVm0Ol4As3pY_3I6vTxzf-htAyyWMthmxjPsraqJY', '2022-09-28 09:18:05.312033'),
('sd2m0slgx0xwws41hcq3uysya6fgv9m5', 'eyJpZCI6MX0:1oZQjO:SMHOzSelsWwO9AEJxUR1N4bCHLM3ZGEggVBt9cuBq-8', '2022-10-01 05:51:10.845744'),
('sob9ftfwfngmlvaqjwndwc5760flwdjy', 'eyJpZCI6Mn0:1oTFX1:QvKNAxIRu_9o5rpKI8kNgoThes1EeKeWzjnu-7uP1dE', '2022-09-14 04:40:51.073214'),
('sx4d5274ncacjnwanhkyf4jtgsj7j64w', 'eyJpZCI6MX0:1oaxRu:Vsy2C0QD2wVLkNXmQoGuY7H8QpS87CH6XH6IHOnObUs', '2022-10-05 10:59:26.159284'),
('t330sv3fz1n86ftgp007a6lalgzdmfdn', 'eyJpZCI6MX0:1oZ7cJ:Je1XC5pCqkAKUsJaufy-5z_po5FVc1WmuEC5QWlR1NQ', '2022-09-30 09:26:35.524625'),
('ta9smt7i9dkyxaeuokjl6nc2x8qd86ia', 'e30:1oU11k:mTLg6Amml6k3Vo_c134POPX1Ks1CXpWlj_ucOKzk_fw', '2022-09-16 07:23:44.637590'),
('tc4w7d3ikievm3qqe6rkadd2z7xl8v2w', 'eyJpZCI6Mn0:1oTGgP:VetPoW3JWNIJ02iqJCgubWHtY0Cptxxpb2Ejt8VnwMY', '2022-09-14 05:54:37.922769'),
('tpeyt9o2qofx20rmujjxflns58b7z2hv', 'eyJpZCI6Mn0:1oV8jU:OJ7pp0Y0Zth-bbwlO_sgtZe6VpdJtIsJsijTrGTze_M', '2022-09-19 09:49:32.764311'),
('ts6xp0gjbc6lvqy4pht55w0uvy6zjhmv', 'eyJpZCI6MX0:1ofdwg:HAV_bBfx6_jjDKBBgVlZywVHfmcsgomLk3T2aqwLzJI', '2022-10-18 09:10:34.046889'),
('twwhwx3wehelrse66ounhuuyzcpsjbpx', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.990081'),
('u03swtnclxwe4byl2sp230pnq1yg9krl', 'eyJpZCI6Mn0:1oRstn:zhcr8OAfq2SSyniwQcsc7Z0EsMhzQ7inaT0YJpC1GuM', '2022-09-10 10:18:43.376635'),
('u4ijf5ymxs810f1l47qhp84qd0eceejk', 'eyJpZCI6Mn0:1oSaWp:7IqD80F7mmXO69selcS7nwgBVLGFCG8U146kJvWvp1Y', '2022-09-12 08:53:55.443754'),
('u9ah7gwlfp3rndhs92ggzv85zy9d03z1', 'eyJpZCI6Mn0:1oSXLc:3nHGwwJRpd5uoDbiH2AIrtE7FXNAyGGuqCZq_zKAG3w', '2022-09-12 05:30:08.733115'),
('uv49fxxv4rjxvcrcibja58kdqfb6dnnx', 'eyJpZCI6MX0:1ofdrr:rkSC6ndLC7G_WFRuqyuUruwe5MyXslyAmHJC1G3ybvU', '2022-10-18 09:05:35.636845'),
('var1t6d83d36rv6d4m9rcee7b4aaaqh0', 'eyJpZCI6MX0:1ofE7r:lHC1_cUexr6BVFET9u32QdajZAHKEefJRxHP-8GVL38', '2022-10-17 05:36:23.131668'),
('vb5uihv6tuflzll1glnfkyt7opofkfjg', 'eyJpZCI6Mn0:1oSvns:SHd-qdYMG-PGJrM30Pb5IiLRbgmzlWL5EvRR6owiH04', '2022-09-13 07:36:56.955926'),
('vdt2o40i5wvsbl8n8bjm1awrvizpn7dg', 'eyJpZCI6MX0:1oZ7BA:oXW0itAeC2_uoSFhO-JmeVJwjW7rLYkHRSrHcMfixWA', '2022-09-30 08:58:32.029437'),
('vdvex7x2ljjc0oxdu43zj33u65kihsb8', 'eyJpZCI6Mn0:1oYMT2:XmFpchaxJgp38TO_WAoNtP6Hm0z6adO1Z6WygSb0qNg', '2022-09-28 07:05:52.991710'),
('vfrnyt0uy8gglwwye4zc38zty66s6h8n', 'eyJpZCI6MX0:1ofGXH:N31kHOncYj_92UbJ4WXh79q8QAdNBA59ePsy8MZa8WA', '2022-10-17 08:10:47.839726'),
('vjybueo4mshzrqd9tpbl8g1pcqy66zxv', 'eyJpZCI6Mn0:1oTIpF:_qmOlf8HyyxqxbwJAWCRM1c7hrYES29tO3U2OhkyZgw', '2022-09-14 08:11:53.942259'),
('vlbftokso88oje5zvjwcaa3j7yshkjeo', 'eyJpZCI6MX0:1ofe5t:3hEmh5YroOpYZuQI_jNEa6ruzO77KzcCBQlUpyRShq0', '2022-10-18 09:20:05.745771'),
('voe3pz6l2uc2lpje1r2alzy7k2cmaiff', 'eyJpZCI6MX0:1ofdrf:3H9u4d_mxUz6-ZSBaFGAzjuUZm3gH2HRL6H0k9wj7B8', '2022-10-18 09:05:23.296792'),
('vuf6781snd223opgn3hcj9njzgt37qmc', 'eyJpZCI6MX0:1ofdVJ:W8yK09oKE8tRJ3RotdXwHBkYilS3B0WbTf5GtTQEkXs', '2022-10-18 08:42:17.184948'),
('w8yb0njz6la9ra94cprvsznoe9rd6d0y', 'eyJpZCI6MX0:1oeCT8:qywdMTEvGv2Sqcfg4F4cPhHKkPE93wIeuojAd-8nlh4', '2022-10-14 09:38:06.406825'),
('wwj43p0n3sta483cyggzdwvwl3c55ge8', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.958831'),
('wxcxekis9himp0bzkklzixizrjm5oybd', 'eyJpZCI6Mn0:1oRrFc:deWEpbcvHXKOOsHPtrhgnV6yTsOvPMz68gFofREwG0I', '2022-09-10 08:33:08.405736'),
('wyu3twrlo2ti0rsgt64cdwly0r8ch9mw', 'eyJpZCI6MX0:1obfhu:NiWFqsf9G6bM192bfsLGeHjW8q0XHTBlTO_TV6Jcc1U', '2022-10-07 10:14:54.978031'),
('x1oyzld6oxlgz03po4xk7xvridw1cmx1', 'eyJpZCI6MX0:1ofe2n:m9t1bbFX-682oQ3Veqi5LJGQ_UNZYWPPc9qWNnjDWYs', '2022-10-18 09:16:53.861136'),
('x25q74lvxayvru0xjun61e4psismwmsb', 'eyJpZCI6Mn0:1oTLQ8:vXTWE3ULkhKgW8fmcRdC2C6taG5r1wMq1RtCXrkX-6s', '2022-09-14 10:58:08.231522'),
('x4kndotzb5oxf7is80juj3ra3scmi4l3', 'eyJpZCI6MX0:1ofdwR:-1E3R0MfaiceuxLh4QDqe4sdB03_KrrtY2YOYGG0y8o', '2022-10-18 09:10:19.796706'),
('x5id4rcbqmnph08k38xkmgguttkzjw6u', 'eyJpZCI6MX0:1ofDsi:TZJKODN1NPswucf9k6C6sIaPkXN3Dby-iyjVZx3ucOk', '2022-10-17 05:20:44.927583'),
('xjdwku8qgk0pj7ishtfd38zbe3babnk7', 'eyJpZCI6Mn0:1oYOVG:PbzqXfgu4a3nUdFB-tzA8sPj9gmWDQpqcOe9DMrIwv8', '2022-09-28 09:16:18.433394'),
('xk0r28j8wio6n128311vw9t5p2xz56gu', 'eyJpZCI6Mn0:1oV592:CAYRk3_Pz3ojbb1Dyzm-qTn2lIvHMq3uiA-VHHDmqGk', '2022-09-19 05:59:40.350188'),
('xrtriagklnr1jg7c9q2fps0nxr07rwkz', 'eyJpZCI6MX0:1oZQQg:eNwtlFBwcXrQQsPFx0x3IynP8sftqznVC4xT_qNb81s', '2022-10-01 05:31:50.405951'),
('xw5t39cyj3ai6ij6gn7wzdocf21rhw73', 'eyJpZCI6MX0:1om7WP:ACJDUlLSfgBcgLBPTBbpoYkxNrfAEQRCbUYWmuSPdvs', '2022-11-05 05:58:13.891387'),
('y3ck709mkngarf7y11muhkjxiv9e99x3', 'eyJpZCI6Mn0:1oTiNN:GZOqPXS_rxCM9c86wQ1hHnFcthCbMIiAq54hk2g2pYE', '2022-09-15 11:28:49.905989'),
('y43rtqih5tfi7j2pghhtkeenxsty12rp', 'eyJpZCI6MX0:1oXflS:JhDFpH0QsaLuOZ0Yhk8GxG4K5TwtbJvVzNRqqIRPhDQ', '2022-09-26 09:30:02.314832'),
('y58b7twe65207tkdo8pt732iqphs35ow', 'eyJpZCI6Mn0:1oSZ6U:YS2OpNtC5VCRZlkRG5gK460roFqR2yEK1_iJ5AiP9vQ', '2022-09-12 07:22:38.670100'),
('y7m89s0jycb0q4quyxi77ltwb0ariy15', 'eyJpZCI6MX0:1ofdo5:QDFw38kUHbzTJ6-qn-3CriIAvq2I7F_3c8suv41tX8w', '2022-10-18 09:01:41.402401'),
('ybgp0xw55tt238cvxu9anc2yfralcr59', 'eyJpZCI6MX0:1oay0M:Jq5AyqnzrUtFctpmLQPgBjPdMgAJ6w_nnBx58QWE3U0', '2022-10-05 11:35:02.346092'),
('yu0k1paofp0jlk2g6kyv3hu2j5refmz0', 'eyJpZCI6MX0:1odrKv:26II6tQnWnEsLIseySESvue0uuWz5Dq2gpqSJjkdt40', '2022-10-13 11:04:13.307761'),
('yzyoldpvxqht0yx2k6bxmby8m9h5wlkp', 'eyJpZCI6MX0:1ofdwd:6wXtgY_ZsspDrVuvnB4mBnflRSV6JADmglpB-cKrZiE', '2022-10-18 09:10:31.095034'),
('z56m44u1oog32bhlskdkcl3bk9k1tbh7', 'eyJpZCI6MX0:1ofDsj:YrwG6fN-7FNcKJrDw5z_zIUZIlcSmL68Hv4YaDtKwf0', '2022-10-17 05:20:45.005705'),
('zad77pxpqge68ngal8xp27hyjfb5vf1y', 'eyJpZCI6Mn0:1oV9wD:7O_VkzJ-R5gXsZX_JDP_Jz1Dao8XNd1Ht8tSjhX_tzE', '2022-09-19 11:06:45.899279'),
('zlm825nwjz77hg6g1y5ryd51ojhmm3tf', 'eyJpZCI6MX0:1oeCpq:TMPWbAZ4RHutY6u7xy-nbcpzsXEXHbtaa2Z5B03vZ1s', '2022-10-14 10:01:34.594573'),
('zormlo5186e737cagazo7jc92pmmaz2u', 'eyJpZCI6Mn0:1oTgpR:P-Dgnqjlsqf-hIQScjhNPa16r9BgwWxyqDCVQDGHDVw', '2022-09-15 09:49:41.905456'),
('zrfvm6yr6k38ojyv2ledcv64brl1akc8', 'eyJpZCI6Mn0:1oTLNY:Two0-QJoNwWzGFwvE23dXl_5ku-cy6t4Apm04bQ0dlc', '2022-09-14 10:55:28.445869');

-- --------------------------------------------------------

--
-- Table structure for table `realestateapp_tb_admin`
--

CREATE TABLE `realestateapp_tb_admin` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL,
  `utype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestateapp_tb_admin`
--

INSERT INTO `realestateapp_tb_admin` (`id`, `email`, `pswd`, `utype`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `realestateapp_tb_chat`
--

CREATE TABLE `realestateapp_tb_chat` (
  `id` bigint(20) NOT NULL,
  `send_msg` varchar(500) NOT NULL,
  `reply_msg` varchar(500) NOT NULL,
  `receiver_id_id` bigint(20) DEFAULT NULL,
  `sender_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestateapp_tb_chat`
--

INSERT INTO `realestateapp_tb_chat` (`id`, `send_msg`, `reply_msg`, `receiver_id_id`, `sender_id_id`) VALUES
(1, 'sdgz', '', 3, 2),
(2, 'fsdsdf', '', 3, 2),
(3, 'hai liyat', '', 3, 2),
(4, 'heyy', '', 1, 2),
(5, 'hello', '', 3, 2),
(6, 'hellou', '', 3, 2),
(7, 'hai', '', 3, 2),
(8, 'liya gello', '', 1, 2),
(9, 'hallo', '', 2, 1),
(10, 'jjj', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `realestateapp_tb_favourites`
--

CREATE TABLE `realestateapp_tb_favourites` (
  `id` bigint(20) NOT NULL,
  `fav_status` varchar(100) NOT NULL,
  `property_id_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `area_measure` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `pro_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestateapp_tb_favourites`
--

INSERT INTO `realestateapp_tb_favourites` (`id`, `fav_status`, `property_id_id`, `user_id_id`, `area_measure`, `category`, `contact`, `description`, `img`, `location`, `price`, `pro_type`) VALUES
(53, 'added', 1, 1, '2303', 'rent', '2344242444', 'industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unkn', 'pics/image_picker7153422356024967108.jpg', 'kuttanellur', '3456', 'land'),
(54, 'added', 3, 1, '2303', 'rent', '4537876654', '3 bedroom gdhjgdfjhdgfjdhgfjdhfgdjhfgdjhfgdjhfgdjfgdjfgdjfd', 'pics/dummy_6Jcp1qV.jpg', 'kuttanellur', '4000', 'land');

-- --------------------------------------------------------

--
-- Table structure for table `realestateapp_tb_feedback`
--

CREATE TABLE `realestateapp_tb_feedback` (
  `id` bigint(20) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestateapp_tb_feedback`
--

INSERT INTO `realestateapp_tb_feedback` (`id`, `feedback`, `date`, `user_id_id`, `username`) VALUES
(1, 'dss', '2022-09-05 13:47:11.711178', 2, 'sony'),
(2, 'nice property', '2022-09-05', 2, 'sony'),
(3, 'good properties, good service', '2022-09-05', 2, 'sony'),
(4, 'nice', '2022-09-05', 2, 'sony'),
(5, 'nice prop', '2022-09-05', 2, 'sony');

-- --------------------------------------------------------

--
-- Table structure for table `realestateapp_tb_order`
--

CREATE TABLE `realestateapp_tb_order` (
  `id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `property_id_id` bigint(20) DEFAULT NULL,
  `uid_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestateapp_tb_order`
--

INSERT INTO `realestateapp_tb_order` (`id`, `date`, `amount`, `property_id_id`, `uid_id`) VALUES
(1, '2022-10-03', '900', 1, 1),
(2, '2022-10-03', '111', 1, 1),
(3, '2022-10-03', '111', 1, 1),
(4, '2022-10-03', '', 1, 1),
(5, '2022-10-03', '', 1, 1),
(6, '2022-10-03', '', 1, 1),
(7, '2022-10-03', '1111', 1, 1),
(8, '2022-10-03', '1000', 1, 1),
(9, '2022-10-03', '', 1, 1),
(10, '2022-10-03', '', 1, 1),
(11, '2022-10-03', '', 1, 1),
(12, '2022-10-03', '', 1, 1),
(13, '2022-10-03', '3456', 1, 1),
(14, '2022-10-04', '', 1, 1),
(15, '2022-10-04', '', 1, 1),
(16, '2022-10-04', '', 1, 1),
(17, '2022-10-04', '', 1, 1),
(18, '2022-10-04', '', 1, 1),
(19, '2022-10-04', '', 1, 1),
(20, '2022-10-04', '', 1, 1),
(21, '2022-10-04', '', 1, 1),
(22, '2022-10-04', '', 1, 1),
(23, '2022-10-04', '', 1, 1),
(24, '2022-10-04', '', 1, 1),
(25, '2022-10-04', '', 1, 1),
(26, '2022-10-04', '', 1, 1),
(27, '2022-10-04', '', 1, 1),
(28, '2022-10-04', '', 1, 1),
(29, '2022-10-04', '', 1, 1),
(30, '2022-10-04', '', 1, 1),
(31, '2022-10-20', '4000', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `realestateapp_tb_property`
--

CREATE TABLE `realestateapp_tb_property` (
  `id` bigint(20) NOT NULL,
  `pro_type` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `area_measure` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestateapp_tb_property`
--

INSERT INTO `realestateapp_tb_property` (`id`, `pro_type`, `location`, `img`, `area_measure`, `price`, `description`, `contact`, `status`, `user_id_id`, `category`) VALUES
(1, 'land', 'kuttanellur', 'pics/image_picker7153422356024967108.jpg', '2303', '3456', 'industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2344242444', 'pending', 2, 'rent'),
(3, 'land', 'kuttanellur', 'pics/dummy_6Jcp1qV.jpg', '2303', '4000', '3 bedroom gdhjgdfjhdgfjdhgfjdhfgdjhfgdjhfgdjhfgdjfgdjfgdjfd', '4537876654', 'pending', 2, 'rent'),
(11, 'land', 'kuttanellur', 'pics/images.jpg', '2303', '4000', '3 kitchen', '4537876654', 'pending', 2, 'rent'),
(13, 'residential', 'panampilly nagar', 'pics/image_picker4750437571358580116_pYs2rBv.jpg', '2000', '320000', 'shhssjjs dhdnjdjjdkd dhdjdjdjd dbndndjd bdjsjdjjdjjd jdjdjdjjdjdjdj', '9464316295', 'pending', 1, 'Sell'),
(15, 'residential', 'anthikad', 'pics/image_picker7068505893884468899_ngKpPvw.jpg', '4635', '450000', 'nssjj dndjs scsvs jrur hdbdb dhsnjs', '464994949', 'pending', 1, 'Rent');

-- --------------------------------------------------------

--
-- Table structure for table `realestateapp_tb_user`
--

CREATE TABLE `realestateapp_tb_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestateapp_tb_user`
--

INSERT INTO `realestateapp_tb_user` (`id`, `name`, `email`, `pswd`, `address`, `phone`, `status`) VALUES
(1, 'liya', 'liya@gmail.com', '123', 'kuttanellur', '3567239845', 'pending'),
(2, 'sony', 'sonia@gmail.com', '123', 'anthikad,thrissur', '345678243', 'pending'),
(3, 'tony', 'tony@gmail.com', '123', 'hshdhd', '95595995959', 'pending'),
(5, 'gfgfg', 'hjhj', '123', '', '', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `realestateapp_tb_admin`
--
ALTER TABLE `realestateapp_tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realestateapp_tb_chat`
--
ALTER TABLE `realestateapp_tb_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realestateapp_tb_cha_receiver_id_id_cacd97f4_fk_realestat` (`receiver_id_id`),
  ADD KEY `realestateapp_tb_cha_sender_id_id_8465bdaf_fk_realestat` (`sender_id_id`);

--
-- Indexes for table `realestateapp_tb_favourites`
--
ALTER TABLE `realestateapp_tb_favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realestateapp_tb_fav_property_id_id_b88100c9_fk_realestat` (`property_id_id`),
  ADD KEY `realestateapp_tb_fav_user_id_id_2e91c617_fk_realestat` (`user_id_id`);

--
-- Indexes for table `realestateapp_tb_feedback`
--
ALTER TABLE `realestateapp_tb_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realestateapp_tb_fee_user_id_id_d8487e67_fk_realestat` (`user_id_id`);

--
-- Indexes for table `realestateapp_tb_order`
--
ALTER TABLE `realestateapp_tb_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realestateapp_tb_ord_property_id_id_e49fa649_fk_realestat` (`property_id_id`),
  ADD KEY `realestateapp_tb_ord_uid_id_464c4216_fk_realestat` (`uid_id`);

--
-- Indexes for table `realestateapp_tb_property`
--
ALTER TABLE `realestateapp_tb_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realestateapp_tb_pro_user_id_id_3ea06312_fk_realestat` (`user_id_id`);

--
-- Indexes for table `realestateapp_tb_user`
--
ALTER TABLE `realestateapp_tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `realestateapp_tb_admin`
--
ALTER TABLE `realestateapp_tb_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `realestateapp_tb_chat`
--
ALTER TABLE `realestateapp_tb_chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `realestateapp_tb_favourites`
--
ALTER TABLE `realestateapp_tb_favourites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `realestateapp_tb_feedback`
--
ALTER TABLE `realestateapp_tb_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `realestateapp_tb_order`
--
ALTER TABLE `realestateapp_tb_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `realestateapp_tb_property`
--
ALTER TABLE `realestateapp_tb_property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `realestateapp_tb_user`
--
ALTER TABLE `realestateapp_tb_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Constraints for table `realestateapp_tb_chat`
--
ALTER TABLE `realestateapp_tb_chat`
  ADD CONSTRAINT `realestateapp_tb_cha_receiver_id_id_cacd97f4_fk_realestat` FOREIGN KEY (`receiver_id_id`) REFERENCES `realestateapp_tb_user` (`id`),
  ADD CONSTRAINT `realestateapp_tb_cha_sender_id_id_8465bdaf_fk_realestat` FOREIGN KEY (`sender_id_id`) REFERENCES `realestateapp_tb_user` (`id`);

--
-- Constraints for table `realestateapp_tb_favourites`
--
ALTER TABLE `realestateapp_tb_favourites`
  ADD CONSTRAINT `realestateapp_tb_fav_property_id_id_b88100c9_fk_realestat` FOREIGN KEY (`property_id_id`) REFERENCES `realestateapp_tb_property` (`id`),
  ADD CONSTRAINT `realestateapp_tb_fav_user_id_id_2e91c617_fk_realestat` FOREIGN KEY (`user_id_id`) REFERENCES `realestateapp_tb_user` (`id`);

--
-- Constraints for table `realestateapp_tb_feedback`
--
ALTER TABLE `realestateapp_tb_feedback`
  ADD CONSTRAINT `realestateapp_tb_fee_user_id_id_d8487e67_fk_realestat` FOREIGN KEY (`user_id_id`) REFERENCES `realestateapp_tb_user` (`id`);

--
-- Constraints for table `realestateapp_tb_order`
--
ALTER TABLE `realestateapp_tb_order`
  ADD CONSTRAINT `realestateapp_tb_ord_property_id_id_e49fa649_fk_realestat` FOREIGN KEY (`property_id_id`) REFERENCES `realestateapp_tb_property` (`id`),
  ADD CONSTRAINT `realestateapp_tb_ord_uid_id_464c4216_fk_realestat` FOREIGN KEY (`uid_id`) REFERENCES `realestateapp_tb_user` (`id`);

--
-- Constraints for table `realestateapp_tb_property`
--
ALTER TABLE `realestateapp_tb_property`
  ADD CONSTRAINT `realestateapp_tb_pro_user_id_id_3ea06312_fk_realestat` FOREIGN KEY (`user_id_id`) REFERENCES `realestateapp_tb_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
