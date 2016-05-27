-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 27, 2016 at 08:09 PM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `proethos`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_pais`
--

CREATE TABLE IF NOT EXISTS `ajax_pais` (
`id_pais` bigint(20) unsigned NOT NULL,
  `pais_nome` char(30) DEFAULT NULL,
  `pais_codigo` char(7) DEFAULT NULL,
  `pais_ativo` int(11) DEFAULT '1',
  `pais_use` char(7) DEFAULT NULL,
  `pais_idioma` char(5) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=257 ;

--
-- Dumping data for table `ajax_pais`
--

INSERT INTO `ajax_pais` (`id_pais`, `pais_nome`, `pais_codigo`, `pais_ativo`, `pais_use`, `pais_idioma`) VALUES
(11, 'Afghanistan', '00011', 1, '', 'en_US'),
(12, 'Albania', '00012', 1, NULL, 'en_US'),
(13, 'Algeria', '00013', 1, NULL, 'en_US'),
(14, 'American Samoa', '00014', 1, NULL, 'en_US'),
(15, 'Andorra', '00015', 1, NULL, 'en_US'),
(16, 'Angola', '00016', 1, NULL, 'en_US'),
(17, 'Anguilla', '00017', 1, NULL, 'en_US'),
(18, 'Antarctica', '00018', 1, NULL, 'en_US'),
(19, 'Antigua & Barbuda', '00019', 1, NULL, 'en_US'),
(20, 'Argentina', '00020', 1, NULL, 'en_US'),
(21, 'Armenia', '00021', 1, NULL, 'en_US'),
(22, 'Aruba', '00022', 1, NULL, 'en_US'),
(23, 'Australia', '00023', 1, NULL, 'en_US'),
(24, 'Austria', '00024', 1, NULL, 'en_US'),
(25, 'Azerbaijan', '00025', 1, NULL, 'en_US'),
(26, 'Bahama', '00026', 1, NULL, 'en_US'),
(27, 'Bahrain', '00027', 1, NULL, 'en_US'),
(28, 'Bangladesh', '00028', 1, NULL, 'en_US'),
(29, 'Barbados', '00029', 1, NULL, 'en_US'),
(30, 'Belarus', '00030', 1, NULL, 'en_US'),
(31, 'Belgium', '00031', 1, NULL, 'en_US'),
(32, 'Belize', '00032', 1, NULL, 'en_US'),
(33, 'Benin', '00033', 1, NULL, 'en_US'),
(34, 'Bermuda', '00034', 1, NULL, 'en_US'),
(35, 'Bhutan', '00035', 1, NULL, 'en_US'),
(36, 'Bolivia', '00036', 1, NULL, 'en_US'),
(37, 'Bosnia and Herzegovina', '00037', 1, NULL, 'en_US'),
(38, 'Botswana', '00038', 1, NULL, 'en_US'),
(39, 'Bouvet Island', '00039', 1, NULL, 'en_US'),
(40, 'Brazil', '00040', 1, NULL, 'en_US'),
(41, 'British Indian Ocean Territory', '00041', 1, NULL, 'en_US'),
(42, 'British Virgin Islands', '00042', 1, NULL, 'en_US'),
(43, 'Brunei Darussalam', '00043', 1, NULL, 'en_US'),
(44, 'Bulgaria', '00044', 1, NULL, 'en_US'),
(45, 'Burkina Faso', '00045', 1, NULL, 'en_US'),
(46, 'Burma (no longer exists)', '00046', 1, NULL, 'en_US'),
(47, 'Burundi', '00047', 1, NULL, 'en_US'),
(48, 'Cambodia', '00048', 1, NULL, 'en_US'),
(49, 'Cameroon', '00049', 1, NULL, 'en_US'),
(50, 'Canada', '00050', 1, NULL, 'en_US'),
(51, 'Cape Verde', '00051', 1, NULL, 'en_US'),
(52, 'Cayman Islands', '00052', 1, NULL, 'en_US'),
(53, 'Central African Republic', '00053', 1, NULL, 'en_US'),
(54, 'Chad', '00054', 1, NULL, 'en_US'),
(55, 'Chile', '00055', 1, NULL, 'en_US'),
(56, 'China', '00056', 1, NULL, 'en_US'),
(57, 'Christmas Island', '00057', 1, NULL, 'en_US'),
(58, 'Cocos (Keeling) Islands', '00058', 1, NULL, 'en_US'),
(59, 'Colombia', '00059', 1, NULL, 'en_US'),
(60, 'Comoros', '00060', 1, NULL, 'en_US'),
(61, 'Congo', '00061', 1, NULL, 'en_US'),
(62, 'Cook Iislands', '00062', 1, NULL, 'en_US'),
(63, 'Costa Rica', '00063', 1, NULL, 'en_US'),
(64, 'C?te D?ivoire (Ivory Coast)', '00064', 1, NULL, 'en_US'),
(65, 'Croatia', '00065', 1, NULL, 'en_US'),
(66, 'Cuba', '00066', 1, NULL, 'en_US'),
(67, 'Cyprus', '00067', 1, NULL, 'en_US'),
(68, 'Czech Republic', '00068', 1, NULL, 'en_US'),
(69, 'Czechoslovakia (no longer exis', '00069', 1, NULL, 'en_US'),
(70, 'Democratic Yemen (no longer ex', '00070', 1, NULL, 'en_US'),
(71, 'Denmark', '00071', 1, NULL, 'en_US'),
(72, 'Djibouti', '00072', 1, NULL, 'en_US'),
(73, 'Dominica', '00073', 1, NULL, 'en_US'),
(74, 'Dominican Republic', '00074', 1, NULL, 'en_US'),
(75, 'East Timor', '00075', 1, NULL, 'en_US'),
(76, 'Ecuador', '00076', 1, NULL, 'en_US'),
(77, 'Egypt', '00077', 1, NULL, 'en_US'),
(78, 'El Salvador', '00078', 1, NULL, 'en_US'),
(79, 'Equatorial Guinea', '00079', 1, NULL, 'en_US'),
(80, 'Eritrea', '00080', 1, NULL, 'en_US'),
(81, 'Estonia', '00081', 1, NULL, 'en_US'),
(82, 'Ethiopia', '00082', 1, NULL, 'en_US'),
(83, 'Falkland Islands (Malvinas)', '00083', 1, NULL, 'en_US'),
(84, 'Faroe Islands', '00084', 1, NULL, 'en_US'),
(85, 'Fiji', '00085', 1, NULL, 'en_US'),
(86, 'Finland', '00086', 1, NULL, 'en_US'),
(87, 'France', '00087', 1, NULL, 'en_US'),
(88, 'France, Metropolitan', '00088', 1, NULL, 'en_US'),
(89, 'French Guiana', '00089', 1, NULL, 'en_US'),
(90, 'French Polynesia', '00090', 1, NULL, 'en_US'),
(91, 'French Southern Territories', '00091', 1, NULL, 'en_US'),
(92, 'Gabon', '00092', 1, NULL, 'en_US'),
(93, 'Gambia', '00093', 1, NULL, 'en_US'),
(94, 'Georgia', '00094', 1, NULL, 'en_US'),
(95, 'German Democratic Republic (no', '00095', 1, NULL, 'en_US'),
(96, 'Germany', '00096', 1, NULL, 'en_US'),
(97, 'Ghana', '00097', 1, NULL, 'en_US'),
(98, 'Gibraltar', '00098', 1, NULL, 'en_US'),
(99, 'Greece', '00099', 1, NULL, 'en_US'),
(100, 'Greenland', '00100', 1, NULL, 'en_US'),
(101, 'Grenada', '00101', 1, NULL, 'en_US'),
(102, 'Guadeloupe', '00102', 1, NULL, 'en_US'),
(103, 'Guam', '00103', 1, NULL, 'en_US'),
(104, 'Guatemala', '00104', 1, NULL, 'en_US'),
(105, 'Guinea', '00105', 1, NULL, 'en_US'),
(106, 'Guinea-Bissau', '00106', 1, NULL, 'en_US'),
(107, 'Guyana', '00107', 1, NULL, 'en_US'),
(108, 'Haiti', '00108', 1, NULL, 'en_US'),
(109, 'Heard & McDonald Islands', '00109', 1, NULL, 'en_US'),
(110, 'Honduras', '00110', 1, NULL, 'en_US'),
(111, 'Hong Kong', '00111', 1, NULL, 'en_US'),
(112, 'Hungary', '00112', 1, NULL, 'en_US'),
(113, 'Iceland', '00113', 1, NULL, 'en_US'),
(114, 'India', '00114', 1, NULL, 'en_US'),
(115, 'Indonesia', '00115', 1, NULL, 'en_US'),
(116, 'Iraq', '00116', 1, NULL, 'en_US'),
(117, 'Ireland', '00117', 1, NULL, 'en_US'),
(118, 'Islamic Republic of Iran', '00118', 1, NULL, 'en_US'),
(119, 'Israel', '00119', 1, NULL, 'en_US'),
(120, 'Italy', '00120', 1, NULL, 'en_US'),
(121, 'Jamaica', '00121', 1, NULL, 'en_US'),
(122, 'Japan', '00122', 1, NULL, 'en_US'),
(123, 'Jordan', '00123', 1, NULL, 'en_US'),
(124, 'Kazakhstan', '00124', 1, NULL, 'en_US'),
(125, 'Kenya', '00125', 1, NULL, 'en_US'),
(126, 'Kiribati', '00126', 1, NULL, 'en_US'),
(127, 'Korea, Democratic People?s Rep', '00127', 1, NULL, 'en_US'),
(128, 'Korea, Republic of', '00128', 1, NULL, 'en_US'),
(129, 'Kuwait', '00129', 1, NULL, 'en_US'),
(130, 'Kyrgyzstan', '00130', 1, NULL, 'en_US'),
(131, 'Lao People?s Democratic Republ', '00131', 1, NULL, 'en_US'),
(132, 'Latvia', '00132', 1, NULL, 'en_US'),
(133, 'Lebanon', '00133', 1, NULL, 'en_US'),
(134, 'Lesotho', '00134', 1, NULL, 'en_US'),
(135, 'Liberia', '00135', 1, NULL, 'en_US'),
(136, 'Libyan Arab Jamahiriya', '00136', 1, NULL, 'en_US'),
(137, 'Liechtenstein', '00137', 1, NULL, 'en_US'),
(138, 'Lithuania', '00138', 1, NULL, 'en_US'),
(139, 'Luxembourg', '00139', 1, NULL, 'en_US'),
(140, 'Macau', '00140', 1, NULL, 'en_US'),
(141, 'Madagascar', '00141', 1, NULL, 'en_US'),
(142, 'Malawi', '00142', 1, NULL, 'en_US'),
(143, 'Malaysia', '00143', 1, NULL, 'en_US'),
(144, 'Maldives', '00144', 1, NULL, 'en_US'),
(145, 'Mali', '00145', 1, NULL, 'en_US'),
(146, 'Malta', '00146', 1, NULL, 'en_US'),
(147, 'Marshall Islands', '00147', 1, NULL, 'en_US'),
(148, 'Martinique', '00148', 1, NULL, 'en_US'),
(149, 'Mauritania', '00149', 1, NULL, 'en_US'),
(150, 'Mauritius', '00150', 1, NULL, 'en_US'),
(151, 'Mayotte', '00151', 1, NULL, 'en_US'),
(152, 'Mexico', '00152', 1, NULL, 'en_US'),
(153, 'Micronesia', '00153', 1, NULL, 'en_US'),
(154, 'Moldova, Republic of', '00154', 1, NULL, 'en_US'),
(155, 'Monaco', '00155', 1, NULL, 'en_US'),
(156, 'Mongolia', '00156', 1, NULL, 'en_US'),
(157, 'Monserrat', '00157', 1, NULL, 'en_US'),
(158, 'Morocco', '00158', 1, NULL, 'en_US'),
(159, 'Mozambique', '00159', 1, NULL, 'en_US'),
(160, 'Myanmar', '00160', 1, NULL, 'en_US'),
(161, 'Namibia', '00161', 1, NULL, 'en_US'),
(162, 'Nauru', '00162', 1, NULL, 'en_US'),
(163, 'Nepal', '00163', 1, NULL, 'en_US'),
(164, 'Netherlands', '00164', 1, NULL, 'en_US'),
(165, 'Netherlands Antilles', '00165', 1, NULL, 'en_US'),
(166, 'Neutral Zone (no longer exists', '00166', 1, NULL, 'en_US'),
(167, 'New Caledonia', '00167', 1, NULL, 'en_US'),
(168, 'New Zealand', '00168', 1, NULL, 'en_US'),
(169, 'Nicaragua', '00169', 1, NULL, 'en_US'),
(170, 'Niger', '00170', 1, NULL, 'en_US'),
(171, 'Nigeria', '00171', 1, NULL, 'en_US'),
(172, 'Niue', '00172', 1, NULL, 'en_US'),
(173, 'Norfolk Island', '00173', 1, NULL, 'en_US'),
(174, 'Northern Mariana Islands', '00174', 1, NULL, 'en_US'),
(175, 'Norway', '00175', 1, NULL, 'en_US'),
(176, 'Oman', '00176', 1, NULL, 'en_US'),
(177, 'Pakistan', '00177', 1, NULL, 'en_US'),
(178, 'Palau', '00178', 1, NULL, 'en_US'),
(179, 'Panama', '00179', 1, NULL, 'en_US'),
(180, 'Papua New Guinea', '00180', 1, NULL, 'en_US'),
(181, 'Paraguay', '00181', 1, NULL, 'en_US'),
(182, 'Peru', '00182', 1, NULL, 'en_US'),
(183, 'Philippines', '00183', 1, NULL, 'en_US'),
(184, 'Pitcairn', '00184', 1, NULL, 'en_US'),
(185, 'Poland', '00185', 1, NULL, 'en_US'),
(186, 'Portugal', '00186', 1, NULL, 'en_US'),
(187, 'Puerto Rico', '00187', 1, NULL, 'en_US'),
(188, 'Qatar', '00188', 1, NULL, 'en_US'),
(189, 'R?union', '00189', 1, NULL, 'en_US'),
(190, 'Romania', '00190', 1, NULL, 'en_US'),
(191, 'Russian Federation', '00191', 1, NULL, 'en_US'),
(192, 'Rwanda', '00192', 1, NULL, 'en_US'),
(193, 'Saint Lucia', '00193', 1, NULL, 'en_US'),
(194, 'Samoa', '00194', 1, NULL, 'en_US'),
(195, 'San Marino', '00195', 1, NULL, 'en_US'),
(196, 'Sao Tome & Principe', '00196', 1, NULL, 'en_US'),
(197, 'Saudi Arabia', '00197', 1, NULL, 'en_US'),
(198, 'Senegal', '00198', 1, NULL, 'en_US'),
(199, 'Seychelles', '00199', 1, NULL, 'en_US'),
(200, 'Sierra Leone', '00200', 1, NULL, 'en_US'),
(201, 'Singapore', '00201', 1, NULL, 'en_US'),
(202, 'Slovakia', '00202', 1, NULL, 'en_US'),
(203, 'Slovenia', '00203', 1, NULL, 'en_US'),
(204, 'Solomon Islands', '00204', 1, NULL, 'en_US'),
(205, 'Somalia', '00205', 1, NULL, 'en_US'),
(206, 'South Africa', '00206', 1, NULL, 'en_US'),
(207, 'South Georgia and the South Sa', '00207', 1, NULL, 'en_US'),
(208, 'Spain', '00208', 1, NULL, 'en_US'),
(209, 'Sri Lanka', '00209', 1, NULL, 'en_US'),
(210, 'St. Helena', '00210', 1, NULL, 'en_US'),
(211, 'St. Kitts and Nevis', '00211', 1, NULL, 'en_US'),
(212, 'St. Pierre & Miquelon', '00212', 1, NULL, 'en_US'),
(213, 'St. Vincent & the Grenadines', '00213', 1, NULL, 'en_US'),
(214, 'Sudan', '00214', 1, NULL, 'en_US'),
(215, 'Suriname', '00215', 1, NULL, 'en_US'),
(216, 'Svalbard & Jan Mayen Islands', '00216', 1, NULL, 'en_US'),
(217, 'Swaziland', '00217', 1, NULL, 'en_US'),
(218, 'Sweden', '00218', 1, NULL, 'en_US'),
(219, 'Switzerland', '00219', 1, NULL, 'en_US'),
(220, 'Syrian Arab Republic', '00220', 1, NULL, 'en_US'),
(221, 'Taiwan, Province of China', '00221', 1, NULL, 'en_US'),
(222, 'Tajikistan', '00222', 1, NULL, 'en_US'),
(223, 'Tanzania, United Republic of', '00223', 1, NULL, 'en_US'),
(224, 'Thailand', '00224', 1, NULL, 'en_US'),
(225, 'Togo', '00225', 1, NULL, 'en_US'),
(226, 'Tokelau', '00226', 1, NULL, 'en_US'),
(227, 'Tonga', '00227', 1, NULL, 'en_US'),
(228, 'Trinidad & Tobago', '00228', 1, NULL, 'en_US'),
(229, 'Tunisia', '00229', 1, NULL, 'en_US'),
(230, 'Turkey', '00230', 1, NULL, 'en_US'),
(231, 'Turkmenistan', '00231', 1, NULL, 'en_US'),
(232, 'Turks & Caicos Islands', '00232', 1, NULL, 'en_US'),
(233, 'Tuvalu', '00233', 1, NULL, 'en_US'),
(234, 'Uganda', '00234', 1, NULL, 'en_US'),
(235, 'Ukraine', '00235', 1, NULL, 'en_US'),
(236, 'Union of Soviet Socialist Repu', '00236', 1, NULL, 'en_US'),
(237, 'United Arab Emirates', '00237', 1, NULL, 'en_US'),
(238, 'United Kingdom (Great Britain)', '00238', 1, NULL, 'en_US'),
(239, 'United States Minor Outlying I', '00239', 1, NULL, 'en_US'),
(240, 'United States of America', '00240', 1, NULL, 'en_US'),
(241, 'United States Virgin Islands', '00241', 1, NULL, 'en_US'),
(242, 'Unknown or unspecified country', '00242', 1, NULL, 'en_US'),
(243, 'Uruguay', '00243', 1, NULL, 'en_US'),
(244, 'Uzbekistan', '00244', 1, NULL, 'en_US'),
(245, 'Vanuatu', '00245', 1, NULL, 'en_US'),
(246, 'Vatican City State (Holy See)', '00246', 1, NULL, 'en_US'),
(247, 'Venezuela', '00247', 1, NULL, 'en_US'),
(248, 'Viet Nam', '00248', 1, NULL, 'en_US'),
(249, 'Wallis & Futuna Islands', '00249', 1, NULL, 'en_US'),
(250, 'Western Sahara', '00250', 1, NULL, 'en_US'),
(251, 'Yemen', '00251', 1, NULL, 'en_US'),
(252, 'Yugoslavia', '00252', 1, NULL, 'en_US'),
(253, 'Zaire', '00253', 1, NULL, 'en_US'),
(254, 'Zambia', '00254', 1, NULL, 'en_US'),
(255, 'Zimbabwe', '00255', 1, NULL, 'en_US'),
(256, '', '', 1, '', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `apoio_idioma`
--

CREATE TABLE IF NOT EXISTS `apoio_idioma` (
`id_i` bigint(20) unsigned NOT NULL,
  `i_codigo` char(5) NOT NULL,
  `i_nome` char(20) NOT NULL,
  `i_ativo` int(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `apoio_idioma`
--

INSERT INTO `apoio_idioma` (`id_i`, `i_codigo`, `i_nome`, `i_ativo`) VALUES
(1, 'pt_BR', 'Portugues (Brasil)', 1),
(2, 'en', 'English?s', 1),
(3, 'fr', 'Francais', 1),
(4, 'es', 'Espanol', 1),
(5, 'ger', 'Germany', 1),
(6, '---', '-n?o definido-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `apoio_titulacao`
--

CREATE TABLE IF NOT EXISTS `apoio_titulacao` (
`id_ap_tit` bigint(20) unsigned NOT NULL,
  `ap_tit_codigo` char(7) DEFAULT NULL,
  `ap_tit_titulo` char(20) DEFAULT NULL,
  `ap_tit_idioma` char(5) DEFAULT 'pt_BR',
  `at_tit_ativo` int(11) DEFAULT '1',
  `ap_ordem` int(11) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `apoio_titulacao`
--

INSERT INTO `apoio_titulacao` (`id_ap_tit`, `ap_tit_codigo`, `ap_tit_titulo`, `ap_tit_idioma`, `at_tit_ativo`, `ap_ordem`) VALUES
(1, '008', 'Pos-Grad.', 'pt_BR', 1, 0),
(2, '007', 'Esp.a', 'pt_BR', 1, 0),
(3, '001', 'Msc.', 'pt_BR', 1, 0),
(4, '003', 'Dra.', 'pt_BR', 1, 0),
(5, '004', 'Grad.', 'pt_BR', 1, 0),
(6, '005', 'Esp.', 'pt_BR', 1, 0),
(7, '002', 'Dr.', 'pt_BR', 1, 0),
(8, '006', 'PhD', 'pt_BR', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `calender`
--

CREATE TABLE IF NOT EXISTS `calender` (
`id_cal` bigint(20) unsigned NOT NULL,
  `cal_date` int(11) DEFAULT NULL,
  `cal_time` char(5) DEFAULT NULL,
  `cal_cod` char(3) DEFAULT NULL,
  `cal_description` char(80) DEFAULT NULL,
  `cal_ativo` int(11) DEFAULT NULL,
  `cal_public` char(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `calender`
--

INSERT INTO `calender` (`id_cal`, `cal_date`, `cal_time`, `cal_cod`, `cal_description`, `cal_ativo`, `cal_public`) VALUES
(1, 20152312, '10:00', '001', 'ReuniÃ£o', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `calender_type`
--

CREATE TABLE IF NOT EXISTS `calender_type` (
`id_calt` bigint(20) unsigned NOT NULL,
  `calt_codigo` char(3) DEFAULT NULL,
  `calt_descricao` char(80) DEFAULT NULL,
  `calt_ativo` int(11) DEFAULT NULL,
  `calt_color` char(7) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `calender_type`
--

INSERT INTO `calender_type` (`id_calt`, `calt_codigo`, `calt_descricao`, `calt_ativo`, `calt_color`) VALUES
(1, '001', 'Meeting', 1, '#9EB5CA'),
(2, '002', 'Deadline to submit protocol', 1, '#C0C0C0');

-- --------------------------------------------------------

--
-- Table structure for table `cep_action`
--

CREATE TABLE IF NOT EXISTS `cep_action` (
`id_action` bigint(20) unsigned NOT NULL,
  `action_status` char(1) NOT NULL,
  `action_descricao` char(100) NOT NULL,
  `action_caption` char(30) NOT NULL,
  `action_ativa` int(11) NOT NULL,
  `action_code` char(3) NOT NULL,
  `action_color` char(7) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `cep_action`
--

INSERT INTO `cep_action` (`id_action`, `action_status`, `action_descricao`, `action_caption`, `action_ativa`, `action_code`, `action_color`) VALUES
(1, 'A', 'Checklist for Accept Manuscript to Revision', 'action_009_accept', 1, '009', '#80DD47'),
(2, 'A', 'return_to_submission', 'action_003_return_sub', 1, '003', '#FE9C9C'),
(3, 'H', 'Manuscript Surver Ethical Question', 'action_015_survey', 1, '015', '#FF9966'),
(4, 'H', 'Checklist for Accept Manuscript from ADMIN', 'action_016_accept_direct', 1, '016', '#80DD47'),
(5, 'B', 'Atribuie Caae Number', 'action_017_caae', 1, '017', '#80DD47'),
(6, 'C', 'Indicar Avaliadores', 'evaluators_indicate', 1, '002', '#000000'),
(7, 'C', 'indicate_to_meeting', 'indicate_to_meeting', 1, '011', '#000000'),
(8, 'D', 'draft_opinion', 'draft_opinion', 1, '012', '#000000'),
(9, 'E', 'finally_opinion', 'finally_opinion', 1, '013', '#000000'),
(10, 'D', 'Indicar Avaliadores', 'evaluators_indicate', 1, '002', '#000000'),
(11, 'E', 'reedit_draft_opinion', 'reedit_draft_opinion', 1, '014', '#000000'),
(12, 'C', 'Indicate Ad-Hoc', 'action_005_adhoc', 1, '005', ''),
(13, 'D', 'Indicate Ad-Hoc', 'action_005_adhoc', 1, '005', ''),
(16, 'D', 'upload_draft_opinion', 'upload_draft_opinion', 1, '020', '#000000'),
(18, 'D', 'send_to_secretary', 'send_to_secretary', 1, '021', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `cep_action_permission`
--

CREATE TABLE IF NOT EXISTS `cep_action_permission` (
`id_actionp` bigint(20) unsigned NOT NULL,
  `actionp_action` char(3) NOT NULL,
  `actionp_perfil` char(4) NOT NULL,
  `actionp_ativa` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `cep_action_permission`
--

INSERT INTO `cep_action_permission` (`id_actionp`, `actionp_action`, `actionp_perfil`, `actionp_ativa`) VALUES
(1, '001', '#ADM', 1),
(2, '001', '#SCR', 1),
(3, '001', '#MEM', 1),
(4, '009', '#ADM', 1),
(5, '003', '#ADM', 1),
(6, '005', '#ADM', 1),
(7, '002', '#ADM', 1),
(8, '011', '#ADM', 1),
(9, '012', '#ADM', 1),
(10, '013', '#ADM', 1),
(11, '014', '#ADM', 1),
(12, '015', '#ADM', 1),
(13, '016', '#ADM', 1),
(14, '017', '#ADM', 1),
(15, '001', '#SCR', 1),
(16, '009', '#SCR', 1),
(17, '003', '#SCR', 1),
(18, '005', '#SCR', 1),
(19, '002', '#SCR', 1),
(20, '011', '#SCR', 1),
(21, '012', '#SCR', 1),
(22, '013', '#SCR', 1),
(23, '014', '#SCR', 1),
(24, '015', '#SCR', 1),
(25, '016', '#SCR', 1),
(26, '017', '#SCR', 1),
(27, '015', '#MEM', 1),
(28, '020', '#SCR', 0),
(29, '020', '#SCR', 0),
(30, '020', '#SCR', 0),
(31, '020', '#SCR', 0),
(32, '020', '#ADM', 0),
(33, '021', '#SCR', 0),
(34, '020', '#ADM', 0),
(35, '020', '#ADM', 0),
(36, '020', '#ADM', 0),
(37, '021', '#ADM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cep_amendment_type`
--

CREATE TABLE IF NOT EXISTS `cep_amendment_type` (
`id_amt` bigint(20) unsigned NOT NULL,
  `amt_codigo` char(3) NOT NULL,
  `amt_descrip` char(100) NOT NULL,
  `amt_ativo` int(11) NOT NULL,
  `amt_form` char(5) NOT NULL,
  `amt_ord` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cep_amendment_type`
--

INSERT INTO `cep_amendment_type` (`id_amt`, `amt_codigo`, `amt_descrip`, `amt_ativo`, `amt_form`, `amt_ord`) VALUES
(1, '001', 'amendment_001', 0, '00001', 1),
(2, '002', 'amendment_002', 1, '00002', 2),
(3, '003', 'amendment_003', 1, '00003', 3),
(4, '004', 'amendment_004', 1, '00004', 4),
(5, '005', 'amendment_005', 1, '00005', 5),
(6, '006', 'amendment_006', 1, '00006', 0),
(7, '007', 'amendment_007', 1, '00007', 9),
(8, '008', 'amendment_008', 1, '00008', 8),
(9, '009', 'amendment_009', 1, '00009', 9),
(10, '010', 'amendment_010', 0, '00010', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cep_comment`
--

CREATE TABLE IF NOT EXISTS `cep_comment` (
`id_cepc` bigint(20) unsigned NOT NULL,
  `cepc_codigo` char(7) DEFAULT NULL,
  `cepc_user` char(8) DEFAULT NULL,
  `cepc_comment` text,
  `cepc_data` bigint(20) DEFAULT NULL,
  `cepc_hora` char(8) DEFAULT NULL,
  `cepc_avaliation` char(1) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cep_comment`
--

INSERT INTO `cep_comment` (`id_cepc`, `cepc_codigo`, `cepc_user`, `cepc_comment`, `cepc_data`, `cepc_hora`, `cepc_avaliation`) VALUES
(1, '0000005', '0000001', 'teste', 20160520, '18:35:59', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cep_dictamen`
--

CREATE TABLE IF NOT EXISTS `cep_dictamen` (
`id_pp` bigint(20) unsigned NOT NULL,
  `pp_nrparecer` char(7) DEFAULT NULL,
  `pp_tipo` char(5) DEFAULT NULL,
  `pp_protocolo` char(7) DEFAULT NULL,
  `pp_protocolo_mae` char(7) DEFAULT NULL,
  `pp_avaliador` char(7) DEFAULT NULL,
  `pp_revisor` char(7) DEFAULT NULL,
  `pp_status` char(1) DEFAULT NULL,
  `pp_pontos` bigint(20) DEFAULT '0',
  `pp_pontos_pp` bigint(20) DEFAULT '0',
  `pp_data` bigint(20) DEFAULT NULL,
  `pp_hora` char(5) DEFAULT NULL,
  `pp_parecer_data` bigint(20) DEFAULT NULL,
  `pp_parecer_hora` char(5) DEFAULT NULL,
  `pp_p01` char(5) DEFAULT NULL,
  `pp_p02` char(5) DEFAULT NULL,
  `pp_p03` char(5) DEFAULT NULL,
  `pp_p04` char(5) DEFAULT NULL,
  `pp_p05` char(5) DEFAULT NULL,
  `pp_p06` char(5) DEFAULT NULL,
  `pp_p07` char(5) DEFAULT NULL,
  `pp_p08` char(5) DEFAULT NULL,
  `pp_p09` char(5) DEFAULT NULL,
  `pp_p10` char(5) DEFAULT NULL,
  `pp_p11` char(5) DEFAULT NULL,
  `pp_p12` char(5) DEFAULT NULL,
  `pp_p13` char(5) DEFAULT NULL,
  `pp_p14` char(5) DEFAULT NULL,
  `pp_p15` char(5) DEFAULT NULL,
  `pp_p16` char(5) DEFAULT NULL,
  `pp_p17` char(5) DEFAULT NULL,
  `pp_p18` char(5) DEFAULT NULL,
  `pp_p19` char(5) DEFAULT NULL,
  `pp_abe_01` text,
  `pp_abe_02` text,
  `pp_abe_03` text,
  `pp_abe_04` text,
  `pp_abe_05` text,
  `pp_abe_06` text,
  `pp_abe_07` text,
  `pp_abe_08` text,
  `pp_abe_09` text,
  `pp_abe_10` text,
  `pr_protocol` char(20) DEFAULT NULL,
  `pr_versao` char(5) DEFAULT NULL,
  `pr_situacao` char(5) DEFAULT NULL,
  `pr_status` char(1) DEFAULT NULL,
  `pp_data_leitura` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cep_dictamen`
--

INSERT INTO `cep_dictamen` (`id_pp`, `pp_nrparecer`, `pp_tipo`, `pp_protocolo`, `pp_protocolo_mae`, `pp_avaliador`, `pp_revisor`, `pp_status`, `pp_pontos`, `pp_pontos_pp`, `pp_data`, `pp_hora`, `pp_parecer_data`, `pp_parecer_hora`, `pp_p01`, `pp_p02`, `pp_p03`, `pp_p04`, `pp_p05`, `pp_p06`, `pp_p07`, `pp_p08`, `pp_p09`, `pp_p10`, `pp_p11`, `pp_p12`, `pp_p13`, `pp_p14`, `pp_p15`, `pp_p16`, `pp_p17`, `pp_p18`, `pp_p19`, `pp_abe_01`, `pp_abe_02`, `pp_abe_03`, `pp_abe_04`, `pp_abe_05`, `pp_abe_06`, `pp_abe_07`, `pp_abe_08`, `pp_abe_09`, `pp_abe_10`, `pr_protocol`, `pr_versao`, `pr_situacao`, `pr_status`, `pp_data_leitura`) VALUES
(1, '', 'PAREC', '000002', '', '0000001', '', 'B', 0, 0, 20151221, '17:45', 20151221, '17:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19000101),
(2, '', 'PAREC', '000001', '', '0000001', '', 'B', 0, 0, 20151221, '18:23', 20151221, '18:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd', 'asd', 'asd', 'asd', '12312', 'asd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19000101);

-- --------------------------------------------------------

--
-- Table structure for table `cep_email`
--

CREATE TABLE IF NOT EXISTS `cep_email` (
  `id_email` int(11) NOT NULL,
  `email_research` char(8) NOT NULL,
  `email_data` int(11) NOT NULL,
  `email_hora` char(8) NOT NULL,
  `email_assunto` char(100) NOT NULL,
  `email_texto` text NOT NULL,
  `email_protocolo` char(10) NOT NULL,
  `email_status` char(1) NOT NULL,
  `email_log` char(8) NOT NULL,
  `email_id_msg` char(8) NOT NULL,
  `email_read` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cep_email`
--

INSERT INTO `cep_email` (`id_email`, `email_research`, `email_data`, `email_hora`, `email_assunto`, `email_texto`, `email_protocolo`, `email_status`, `email_log`, `email_id_msg`, `email_read`) VALUES
(0, '', 20151221, '19:23:36', 'Protocolo no aprobado', 'problema', '0000003', 'A', '', '', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `cep_ged_documento`
--

CREATE TABLE IF NOT EXISTS `cep_ged_documento` (
`id_doc` bigint(20) unsigned NOT NULL,
  `doc_dd0` char(7) DEFAULT NULL,
  `doc_tipo` char(5) DEFAULT NULL,
  `doc_ano` char(4) DEFAULT NULL,
  `doc_filename` text,
  `doc_status` char(1) DEFAULT NULL,
  `doc_data` int(11) DEFAULT NULL,
  `doc_hora` char(5) DEFAULT NULL,
  `doc_arquivo` text,
  `doc_extensao` char(4) DEFAULT NULL,
  `doc_size` double DEFAULT NULL,
  `doc_ativo` int(11) DEFAULT NULL,
  `doc_versao` char(2) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `cep_ged_documento`
--

INSERT INTO `cep_ged_documento` (`id_doc`, `doc_dd0`, `doc_tipo`, `doc_ano`, `doc_filename`, `doc_status`, `doc_data`, `doc_hora`, `doc_arquivo`, `doc_extensao`, `doc_size`, `doc_ativo`, `doc_versao`) VALUES
(1, '0000001', 'REEAD', '2015', 'carta_de_motivacao_sheron.pdf', 'A', 20151221, '17:07', 'D:/projeto/proethos/document/2015/12/0000001-2cefc-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 1, ''),
(2, '0000001', 'PROJ', '2015', 'Proposal_000001_v1.pdf', 'A', 20151221, '17:09', 'document/2015/12/0000001-b0440-1-project.pdf', 'pdf', 5132, 0, ''),
(3, '000001', 'REEAD', '2015', 'carta_de_motivacao_sheron.pdf', 'A', 20151221, '17:09', 'D:/projeto/proethos/document/2015/12/0000001-2cefc-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 0, '1'),
(4, '000001', 'PROJ', '2015', 'Proposal_000001_v1.pdf', 'A', 20151221, '17:09', 'document/2015/12/0000001-b0440-1-project.pdf', 'pdf', 5132, 0, '1'),
(5, '0000002', 'REEAD', '2015', 'carta_supervisor_estrangeiro.pdf', 'A', 20151221, '17:28', 'D:/projeto/proethos/document/2015/12/0000002-c104a-carta_supervisor_estrangeiro.pdf', 'pdf', 48484, 1, ''),
(6, '0000002', 'PROJ', '2015', 'Proposal_000002_v1.pdf', 'A', 20151221, '17:29', 'document/2015/12/0000002-1f223-1-project.pdf', 'pdf', 4498, 1, ''),
(7, '000002', 'REEAD', '2015', 'carta_supervisor_estrangeiro.pdf', 'A', 20151221, '17:29', 'D:/projeto/proethos/document/2015/12/0000002-c104a-carta_supervisor_estrangeiro.pdf', 'pdf', 48484, 1, '1'),
(8, '000002', 'PROJ', '2015', 'Proposal_000002_v1.pdf', 'A', 20151221, '17:29', 'document/2015/12/0000002-1f223-1-project.pdf', 'pdf', 4498, 1, '1'),
(9, '000002', 'DICT', '2015', 'DictÃ¡menes20151221_1744.pdf', '@', 20151221, '17:44', 'document/2015/12/0000026fff5_dictamen.pdf', 'pdf', 9250, 1, ''),
(10, '000002', 'DICTM', '2015', 'carta_de_motivacao_sheron.pdf', '@', 20151221, '18:18', 'D:/projeto/proethos/document/2015/12/000002-bfb4a-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 0, ''),
(11, '000002', 'DICTM', '2015', 'carta_de_motivacao_sheron.pdf', '@', 20151221, '18:21', 'D:/projeto/proethos/document/2015/12/000002-a09f1-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 0, ''),
(12, '000001', 'DICT', '2015', 'Parecer de relatoria20151221_1824.pdf', '@', 20151221, '18:24', 'document/2015/12/000001d7346_dictamen.pdf', 'pdf', 9281, 1, ''),
(13, '000001', 'DICT', '2015', 'carta_de_motivacao_sheron.pdf', '@', 20151221, '18:24', 'D:/projeto/proethos/document/2015/12/000001-a02d2-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 1, ''),
(14, '000002', 'DICTM', '2015', 'carta_de_motivacao_sheron.pdf', '@', 20151221, '18:47', 'D:/projeto/proethos/document/2015/12/000002-3e219-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 1, ''),
(15, '0000003', 'TCLE', '2015', 'carta_de_motivacao_sheron.pdf', 'A', 20151221, '19:22', 'D:/projeto/proethos/document/2015/12/0000003-11089-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 1, ''),
(16, '0000003', 'PROJ', '2015', 'Proposal_000003_v1.pdf', 'A', 20151221, '19:22', 'document/2015/12/0000003-e781f-1-project.pdf', 'pdf', 4025, 1, ''),
(17, '000003', 'TCLE', '2015', 'carta_de_motivacao_sheron.pdf', 'A', 20151221, '19:22', 'D:/projeto/proethos/document/2015/12/0000003-11089-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 1, '1'),
(18, '000003', 'PROJ', '2015', 'Proposal_000003_v1.pdf', 'A', 20151221, '19:22', 'document/2015/12/0000003-e781f-1-project.pdf', 'pdf', 4025, 1, '1'),
(19, '0000001', 'PROJ', '2015', 'Proposal_000001_v1.pdf', 'A', 20151221, '19:28', 'document/2015/12/0000001-2c2f1-1-project.pdf', 'pdf', 5242, 1, ''),
(20, '000001', 'REEAD', '2015', 'carta_de_motivacao_sheron.pdf', 'A', 20151221, '19:28', 'D:/projeto/proethos/document/2015/12/0000001-2cefc-carta_de_motivacao_sheron.pdf', 'pdf', 333982, 1, '1'),
(21, '000001', 'PROJ', '2015', 'Proposal_000001_v1.pdf', 'A', 20151221, '19:28', 'document/2015/12/0000001-2c2f1-1-project.pdf', 'pdf', 5242, 1, '1'),
(22, '0000005', 'REEAD', '2016', 'dialogo-12617.pdf', 'A', 20160520, '17:58', 'D:/projeto/proethos/document/2016/05/0000005-3d565-dialogo-12617.pdf', 'pdf', 622314, 1, ''),
(23, '0000005', 'PROJ', '2016', 'Proposal_000004_v1.pdf', 'A', 20160520, '17:58', 'document/2016/05/0000005-1987e-1-project.pdf', 'pdf', 4105, 1, ''),
(24, '000004', 'REEAD', '2016', 'dialogo-12617.pdf', 'A', 20160520, '17:58', 'D:/projeto/proethos/document/2016/05/0000005-3d565-dialogo-12617.pdf', 'pdf', 622314, 1, '1'),
(25, '000004', 'PROJ', '2016', 'Proposal_000004_v1.pdf', 'A', 20160520, '17:58', 'document/2016/05/0000005-1987e-1-project.pdf', 'pdf', 4105, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `cep_ged_documento_tipo`
--

CREATE TABLE IF NOT EXISTS `cep_ged_documento_tipo` (
`id_doct` bigint(20) unsigned NOT NULL,
  `doct_nome` char(50) DEFAULT NULL,
  `doct_codigo` char(5) DEFAULT NULL,
  `doct_publico` int(11) DEFAULT NULL,
  `doct_avaliador` int(11) DEFAULT NULL,
  `doct_autor` int(11) DEFAULT NULL,
  `doct_restrito` int(11) DEFAULT NULL,
  `doct_ativo` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cep_ged_documento_tipo`
--

INSERT INTO `cep_ged_documento_tipo` (`id_doct`, `doct_nome`, `doct_codigo`, `doct_publico`, `doct_avaliador`, `doct_autor`, `doct_restrito`, `doct_ativo`) VALUES
(1, 'Proposal', 'PROJ', 0, 1, 0, 0, 1),
(2, 'Informed Consent', 'TCLE', 1, 1, 1, 0, 1),
(3, 'Other', 'outhe', 1, 1, 1, 0, 1),
(4, 'Budget', 'DICTA', 1, 1, 1, 0, 1),
(5, 'Insurance policy', 'SEGU', 1, 1, 1, 0, 1),
(6, 'International Clinical Trials Registry Platform', 'ICTRP', 0, 0, 1, 1, 1),
(7, 'Local Ethical Approval', 'DICT', 0, 0, 1, 0, 1),
(8, 'Termo de In', 'AGEND', 0, 1, 1, 1, 0),
(9, 'Adverse events report', 'REEAD', 1, 1, 1, 0, 1),
(10, 'OpiniÃ³n interina', 'DICTM', 1, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cep_parecer`
--

CREATE TABLE IF NOT EXISTS `cep_parecer` (
`id_pr` bigint(20) unsigned NOT NULL,
  `pr_protocol` char(15) NOT NULL,
  `pr_versao` int(15) NOT NULL,
  `pr_situacao` char(3) NOT NULL,
  `pr_status` char(1) NOT NULL,
  `pr_texto_1` text NOT NULL,
  `pr_texto_2` text NOT NULL,
  `pr_texto_3` text NOT NULL,
  `pr_texto_4` text NOT NULL,
  `pr_texto_5` text NOT NULL,
  `pr_texto_6` text NOT NULL,
  `pr_texto_7` text NOT NULL,
  `pr_texto_8` text NOT NULL,
  `pr_texto_9` text NOT NULL,
  `pr_relator` char(7) NOT NULL,
  `pr_revisor` char(7) NOT NULL,
  `pr_data` int(11) NOT NULL,
  `pr_hora` char(8) NOT NULL,
  `pr_log` char(7) NOT NULL,
  `pr_ativo` int(11) NOT NULL,
  `pr_data_emissao` int(11) NOT NULL,
  `pr_ass` char(7) NOT NULL,
  `pr_accompaniment` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cep_parecer`
--

INSERT INTO `cep_parecer` (`id_pr`, `pr_protocol`, `pr_versao`, `pr_situacao`, `pr_status`, `pr_texto_1`, `pr_texto_2`, `pr_texto_3`, `pr_texto_4`, `pr_texto_5`, `pr_texto_6`, `pr_texto_7`, `pr_texto_8`, `pr_texto_9`, `pr_relator`, `pr_revisor`, `pr_data`, `pr_hora`, `pr_log`, `pr_ativo`, `pr_data_emissao`, `pr_ass`, `pr_accompaniment`) VALUES
(1, '000002', 1, 'APR', 'F', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'APR', 'asd', '', '', 20151221, '17:44', '', 1, 20151221, '', 180),
(2, '000001', 1, 'APR', 'F', '34v34c', '34c', '34c', '34c', '34c', '3c4', '34', 'APR', '34c', '', '', 20151221, '18:24', '', 1, 20151221, '', 180);

-- --------------------------------------------------------

--
-- Table structure for table `cep_protocolos`
--

CREATE TABLE IF NOT EXISTS `cep_protocolos` (
`id_cep` bigint(20) unsigned NOT NULL,
  `cep_codigo` char(7) DEFAULT NULL,
  `cep_tipo` char(3) DEFAULT NULL,
  `cep_protocol` char(15) DEFAULT NULL,
  `cep_fr` char(15) DEFAULT NULL,
  `cep_versao` char(15) DEFAULT NULL,
  `cep_data` bigint(20) DEFAULT NULL,
  `cep_hora` char(5) DEFAULT NULL,
  `cep_resumo` text,
  `cep_study_type` text NOT NULL,
  `cep_goal` text NOT NULL,
  `cep_pesquisador` char(7) DEFAULT NULL,
  `cep_local_realizacao` char(120) DEFAULT NULL,
  `cep_status` char(1) DEFAULT NULL,
  `cep_ata` char(10) DEFAULT NULL,
  `cep_dt_parecer` bigint(20) DEFAULT NULL,
  `cep_titulacao` char(10) DEFAULT NULL,
  `cep_grupo` char(4) DEFAULT NULL,
  `cep_titulo` text,
  `cep_titulo_public` text NOT NULL,
  `cep_acronym` char(50) NOT NULL,
  `cep_conhecimento` char(100) DEFAULT NULL,
  `cep_caae` char(30) DEFAULT NULL,
  `cep_caae_original` char(30) NOT NULL,
  `cep_atualizado` bigint(20) DEFAULT '19000101',
  `cep_atual` char(7) DEFAULT NULL,
  `cep_relator` char(7) DEFAULT NULL,
  `cep_reuniao` bigint(20) DEFAULT NULL,
  `cep_st_parecer` char(1) DEFAULT NULL,
  `cep_nr_parecer` char(7) DEFAULT NULL,
  `cep_revisor` char(7) DEFAULT NULL,
  `cep_atual_revisor` char(7) DEFAULT NULL,
  `cep_submit` char(7) DEFAULT NULL,
  `cep_dt_ciencia` bigint(20) DEFAULT '0',
  `cep_dt_liberacao` bigint(20) DEFAULT '0',
  `cep_sinte` text,
  `cep_comment_pos` int(11) NOT NULL,
  `cep_comment_neg` int(11) NOT NULL,
  `cep_dictamen` int(11) NOT NULL,
  `cep_approved` int(11) NOT NULL,
  `cep_clinic` char(1) NOT NULL,
  `cep_xml` text NOT NULL,
  `cep_recrutamento` int(11) NOT NULL,
  `cep_recrutamento_status` char(40) NOT NULL,
  `cep_monitoring` int(11) NOT NULL,
  `cep_pr_protocol` char(20) DEFAULT NULL,
  `cep_aproved` int(11) NOT NULL,
  `cep_fld_001` text NOT NULL,
  `cep_fld_002` text NOT NULL,
  `cep_fld_003` text NOT NULL,
  `cep_fld_004` text NOT NULL,
  `cep_fld_005` text NOT NULL,
  `cep_fld_006` text NOT NULL,
  `cep_fld_007` text NOT NULL,
  `cep_fld_008` text NOT NULL,
  `cep_fld_009` text NOT NULL,
  `cep_fld_010` text NOT NULL,
  `cep_fld_011` text NOT NULL,
  `cep_fld_012` text NOT NULL,
  `cep_fld_013` text NOT NULL,
  `cep_fld_014` text NOT NULL,
  `cep_fld_015` text NOT NULL,
  `cep_fld_016` text NOT NULL,
  `cep_fld_017` text NOT NULL,
  `cep_fld_018` text NOT NULL,
  `cep_fld_019` text NOT NULL,
  `cep_fld_020` text NOT NULL,
  `cep_fld_021` text NOT NULL,
  `cep_fld_022` text NOT NULL,
  `cep_fld_023` text NOT NULL,
  `cep_fld_024` text NOT NULL,
  `cep_fld_025` text NOT NULL,
  `cep_fld_026` text NOT NULL,
  `cep_fld_027` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cep_protocolos`
--

INSERT INTO `cep_protocolos` (`id_cep`, `cep_codigo`, `cep_tipo`, `cep_protocol`, `cep_fr`, `cep_versao`, `cep_data`, `cep_hora`, `cep_resumo`, `cep_study_type`, `cep_goal`, `cep_pesquisador`, `cep_local_realizacao`, `cep_status`, `cep_ata`, `cep_dt_parecer`, `cep_titulacao`, `cep_grupo`, `cep_titulo`, `cep_titulo_public`, `cep_acronym`, `cep_conhecimento`, `cep_caae`, `cep_caae_original`, `cep_atualizado`, `cep_atual`, `cep_relator`, `cep_reuniao`, `cep_st_parecer`, `cep_nr_parecer`, `cep_revisor`, `cep_atual_revisor`, `cep_submit`, `cep_dt_ciencia`, `cep_dt_liberacao`, `cep_sinte`, `cep_comment_pos`, `cep_comment_neg`, `cep_dictamen`, `cep_approved`, `cep_clinic`, `cep_xml`, `cep_recrutamento`, `cep_recrutamento_status`, `cep_monitoring`, `cep_pr_protocol`, `cep_aproved`, `cep_fld_001`, `cep_fld_002`, `cep_fld_003`, `cep_fld_004`, `cep_fld_005`, `cep_fld_006`, `cep_fld_007`, `cep_fld_008`, `cep_fld_009`, `cep_fld_010`, `cep_fld_011`, `cep_fld_012`, `cep_fld_013`, `cep_fld_014`, `cep_fld_015`, `cep_fld_016`, `cep_fld_017`, `cep_fld_018`, `cep_fld_019`, `cep_fld_020`, `cep_fld_021`, `cep_fld_022`, `cep_fld_023`, `cep_fld_024`, `cep_fld_025`, `cep_fld_026`, `cep_fld_027`) VALUES
(1, '0000001', 'PRO', '000001', '0000001', '1', 20151221, '17:09', '', '', '', '0000002', '', 'B', '', 20151221, '', 'I', 'Title #2015-12-21#', 'Title #2015-12-21#', '', '', 'PAHO.161600004.001', '', 20160527, '', '', 20152312, '', '', '', NULL, '', 19000101, 20151221, '', 0, 0, 0, 0, '0', '', 0, '', 180, 'pm_APR', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '0000002', 'PRO', '000002', '0000002', '1', 20151221, '17:29', '', '', '', '0000003', '', 'A', '', 20151221, '', 'I', '#projeto - 2#', '#projeto - 2#', '', '', 'PAHO.162147483648.001', '', 20160527, '', '', 20152312, '', '', '', NULL, '', 19000101, 19000101, '', 0, 0, 0, 0, '1', '', 0, '', 180, 'pm_APR', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '0000003', 'PRO', '000003', '0000003', '1', 20151221, '19:22', '', '', '', '0000002', '', 'A', '', 19000101, '', 'I', '#teste #2015-12-21#', '#teste #2015-12-21#', '', '', 'PAHO.16161600006.001', '', 20160527, '', '', 19000101, '', '', '', NULL, '', 19000101, 19000101, '', 0, 0, 0, 0, '0', '', 0, '', 0, NULL, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '0000005', 'PRO', '000004', '0000005', '1', 20160520, '17:58', '', '', '', '0000003', '', 'A', '', 19000101, '', 'I', 'teste', 'teste', '', '', 'PAHO.1600002.001', '', 20160523, '', '', 19000101, '', '', '', NULL, '', 19000101, 19000101, '', 1, 0, 0, 0, '1', '', 0, '', 0, NULL, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cep_protocolos_historic`
--

CREATE TABLE IF NOT EXISTS `cep_protocolos_historic` (
`id_his` bigint(20) unsigned NOT NULL,
  `his_protocol` char(15) NOT NULL,
  `his_codigo` char(3) NOT NULL,
  `his_data` int(11) NOT NULL,
  `his_time` char(8) NOT NULL,
  `his_comment` char(100) NOT NULL,
  `his_log` char(8) NOT NULL,
  `his_caae` char(15) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `cep_protocolos_historic`
--

INSERT INTO `cep_protocolos_historic` (`id_his`, `his_protocol`, `his_codigo`, `his_data`, `his_time`, `his_comment`, `his_log`, `his_caae`) VALUES
(1, '000001', 'SUB', 20151221, '17:09', 'Initial submission', '0000002', ''),
(2, '000002', 'SUB', 20151221, '17:29', 'Initial submission', '0000003', ''),
(3, '000002', '009', 20151221, '17:35', 'need_consultation_to_accept', '0000001', ''),
(4, '000002', '016', 20151221, '17:35', 'manuscript_accepted_direct', '0000001', ''),
(5, '000002', '017', 20151221, '17:35', 'assign_record_number', '0000001', 'PAHO.000002.001'),
(6, '000002', '011', 20151221, '17:42', 'Asignar para reuniÃ³n', '0000001', 'PAHO.000002.001'),
(7, '000002', 'PAE', 20151221, '17:44', 'DecisiÃ³n emitida', '', '000002'),
(8, '000002', '010', 20151221, '17:45', 'Asignar evaluador(es)', '0000001', 'PAHO.000002.001'),
(9, '000002', '021', 20151221, '18:21', 'finish_avaliation', '0000001', 'PAHO.000002.001'),
(10, '000002', '013', 20151221, '18:21', 'return_to_edition', '0000001', 'PAHO.000002.001'),
(11, '000001', '010', 20151221, '18:22', 'manuscript_accepted', '0000001', ''),
(12, '000001', '017', 20151221, '18:22', 'assign_record_number', '0000001', 'PAHO.000001.001'),
(13, '000001', '011', 20151221, '18:22', 'Indicar para reuniÃ£o', '0000001', 'PAHO.000001.001'),
(14, '000001', '010', 20151221, '18:23', 'Indicar avaliador', '0000001', 'PAHO.000001.001'),
(15, '000001', 'PAE', 20151221, '18:24', 'emited_dictamen', '', '000001'),
(16, '000001', '021', 20151221, '18:24', 'finish_avaliation', '0000001', 'PAHO.000001.001'),
(17, '000001', '013', 20151221, '18:24', 'investigator_reported', '0000001', 'PAHO.000001.001'),
(18, '000003', 'SUB', 20151221, '19:22', 'PresentaciÃ³n inicial', '0000002', ''),
(19, '000003', '', 20151221, '19:23', 'Regresar protocolo', '0000001', ''),
(20, '000004', 'SUB', 20160520, '17:58', 'submitted_by_the_author', '0000003', ''),
(21, '0000004', '009', 20160523, '11:16:42', '', '1', ''),
(22, '0000001', '009', 20160523, '12:23:41', '', '1', ''),
(23, '0000001', '009', 20160523, '12:26:30', '', '1', ''),
(24, '0000004', '009', 20160523, '12:47:39', '', '1', ''),
(25, '0000078', '009', 20160523, '12:50:59', '', '1', ''),
(26, '0000078', '009', 20160523, '12:51:50', '', '1', ''),
(27, '0000078', '009', 20160523, '12:51:53', '', '1', ''),
(28, '0000078', '009', 20160523, '12:52:08', '', '1', ''),
(29, '0000078', '009', 20160523, '12:52:41', '', '1', ''),
(30, '0000078', '009', 20160523, '12:52:50', '', '1', ''),
(31, '0000078', '009', 20160523, '12:53:06', '', '1', ''),
(32, '0000078', '009', 20160523, '12:53:20', '', '1', ''),
(33, '0000078', '009', 20160523, '12:53:36', '', '1', ''),
(34, '0000004', '009', 20160523, '12:56:54', '', '1', ''),
(35, '0000004', '010', 20160523, '12:56:54', '', '1', ''),
(36, '0000001', '009', 20160523, '12:58:30', '', '1', ''),
(37, '0000001', '010', 20160523, '12:58:30', '', '1', ''),
(38, '0000078', '009', 20160523, '13:08:50', '', '1', ''),
(39, '0000078', '010', 20160523, '13:08:51', '', '1', ''),
(40, '0000078', '009', 20160523, '13:38:25', '', '1', ''),
(41, '0000078', '010', 20160523, '13:38:26', '', '1', ''),
(42, '0000078', '009', 20160523, '13:57:28', '', '1', ''),
(43, '0000078', '010', 20160523, '13:57:28', '', '1', ''),
(44, '0000003', '009', 20160527, '09:07:28', '', '1', ''),
(45, '0000003', '010', 20160527, '09:07:28', '', '1', ''),
(46, '0000002', '009', 20160527, '14:26:38', '', '1', ''),
(47, '0000002', '010', 20160527, '14:26:38', '', '1', ''),
(48, '0000001', '004', 20160527, '17:05:23', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `cep_protocol_log`
--

CREATE TABLE IF NOT EXISTS `cep_protocol_log` (
`id_cl` bigint(20) unsigned NOT NULL,
  `cl_data` int(11) NOT NULL,
  `cl_hora` char(8) NOT NULL,
  `cl_protocol` char(8) NOT NULL,
  `cl_cod` char(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cep_protocol_log`
--

INSERT INTO `cep_protocol_log` (`id_cl`, `cl_data`, `cl_hora`, `cl_protocol`, `cl_cod`) VALUES
(1, 20151221, '17:09:20', '0000001', '#status_A'),
(2, 20151221, '17:29:07', '0000002', '#status_A'),
(3, 20151221, '19:22:56', '0000003', '#status_A'),
(4, 20151221, '19:28:27', '0000001', '#status_A'),
(5, 20160520, '17:58:30', '0000005', '#status_A');

-- --------------------------------------------------------

--
-- Table structure for table `cep_status`
--

CREATE TABLE IF NOT EXISTS `cep_status` (
`id_ess` bigint(20) unsigned NOT NULL,
  `ess_status` char(1) DEFAULT NULL,
  `ess_codigo` char(5) DEFAULT NULL,
  `ess_encaminhar` char(7) DEFAULT NULL,
  `ess_acompanha` char(7) DEFAULT NULL,
  `ess_status_mst` char(1) DEFAULT NULL,
  `ess_descricao_1` char(60) DEFAULT NULL,
  `ess_descricao_2` char(60) DEFAULT NULL,
  `ess_descricao_3` char(60) DEFAULT NULL,
  `ess_descricao_4` char(60) DEFAULT NULL,
  `ess_descricao_5` text,
  `ess_journal_id` bigint(20) DEFAULT '1',
  `ess_prazo` bigint(20) DEFAULT '0',
  `ess_limpa_atual` bigint(20) DEFAULT '0',
  `ess_atualiza_prazo` bigint(20) DEFAULT '0',
  `ess_status_1` char(1) DEFAULT NULL,
  `ess_status_2` char(1) DEFAULT NULL,
  `ess_status_3` char(1) DEFAULT NULL,
  `ess_status_4` char(1) DEFAULT NULL,
  `ess_limpa_parecerista_1` bigint(20) DEFAULT NULL,
  `ess_limpa_parecerista_2` bigint(20) DEFAULT NULL,
  `ess_limpa_revisor` bigint(20) DEFAULT NULL,
  `ess_limpa_normalizador` bigint(20) DEFAULT NULL,
  `ess_limpa_editor` bigint(20) DEFAULT NULL,
  `ess_limpa_diagramador` bigint(20) DEFAULT NULL,
  `ess_limpa_secretaria` bigint(20) DEFAULT NULL,
  `ess_ativo` bigint(20) DEFAULT '1',
  `ess_limpa_geral` bigint(20) DEFAULT '0',
  `ess_nucleo` char(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `cep_status`
--

INSERT INTO `cep_status` (`id_ess`, `ess_status`, `ess_codigo`, `ess_encaminhar`, `ess_acompanha`, `ess_status_mst`, `ess_descricao_1`, `ess_descricao_2`, `ess_descricao_3`, `ess_descricao_4`, `ess_descricao_5`, `ess_journal_id`, `ess_prazo`, `ess_limpa_atual`, `ess_atualiza_prazo`, `ess_status_1`, `ess_status_2`, `ess_status_3`, `ess_status_4`, `ess_limpa_parecerista_1`, `ess_limpa_parecerista_2`, `ess_limpa_revisor`, `ess_limpa_normalizador`, `ess_limpa_editor`, `ess_limpa_diagramador`, `ess_limpa_secretaria`, `ess_ativo`, `ess_limpa_geral`, `ess_nucleo`) VALUES
(37, 'A', '00001', NULL, NULL, NULL, 'subm_to_accept', 'subm_to_accept', 'subm_to_accept', 'subm_to_accept', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, ''),
(38, 'B', '00002', NULL, NULL, NULL, 'pesq_revisao', 'pesq_revisao', 'pesq_revisao', 'pesq_revisao', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, ''),
(39, 'C', '00003', NULL, NULL, NULL, 'pesq_assignada', 'pesq_assignada', 'pesq_assignada', 'pesq_assignada', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, ''),
(40, 'D', '00004', NULL, NULL, NULL, 'pesq_reunion', 'pesq_reunion', 'pesq_reunion', 'pesq_reunion', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_country`
--

CREATE TABLE IF NOT EXISTS `cep_submit_country` (
`id_ctr` bigint(20) unsigned NOT NULL,
  `ctr_protocol` char(7) NOT NULL,
  `ctr_country` char(5) NOT NULL,
  `ctr_ativo` int(11) NOT NULL,
  `ctr_target` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cep_submit_country`
--

INSERT INTO `cep_submit_country` (`id_ctr`, `ctr_protocol`, `ctr_country`, `ctr_ativo`, `ctr_target`) VALUES
(1, '0000001', '00040', 1, 12),
(2, '0000002', '00040', 1, 12),
(3, '0000003', '00040', 1, 100),
(4, '0000005', '00040', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_crono`
--

CREATE TABLE IF NOT EXISTS `cep_submit_crono` (
`id_scrono` bigint(20) unsigned NOT NULL,
  `scrono_descricao` char(100) NOT NULL,
  `scrono_date_start` int(11) NOT NULL,
  `scrono_date_end` int(11) NOT NULL,
  `scrono_protocol` char(7) NOT NULL,
  `scrono_ativo` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cep_submit_crono`
--

INSERT INTO `cep_submit_crono` (`id_scrono`, `scrono_descricao`, `scrono_date_start`, `scrono_date_end`, `scrono_protocol`, `scrono_ativo`) VALUES
(1, 'Title #2015-12-21#', 201501, 201607, '0000001', 1),
(2, '#projeto - 2#', 201501, 201501, '0000002', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_documento`
--

CREATE TABLE IF NOT EXISTS `cep_submit_documento` (
`id_doc` bigint(20) unsigned NOT NULL,
  `doc_1_titulo` text,
  `doc_1_titulo_public` text NOT NULL,
  `doc_protocolo` char(7) DEFAULT NULL,
  `doc_tipo` char(5) NOT NULL,
  `doc_human` int(11) NOT NULL,
  `doc_clinic` int(11) NOT NULL,
  `doc_data` int(11) DEFAULT '0',
  `doc_hora` char(8) DEFAULT NULL,
  `doc_dt_atualizado` int(11) DEFAULT '19000101',
  `doc_autor_principal` char(7) DEFAULT NULL,
  `doc_research_main` char(8) NOT NULL,
  `doc_status` char(7) DEFAULT NULL,
  `doc_xml` text NOT NULL,
  `doc_type` char(3) NOT NULL,
  `doc_caae` char(20) NOT NULL,
  `doc_acronym` char(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cep_submit_documento`
--

INSERT INTO `cep_submit_documento` (`id_doc`, `doc_1_titulo`, `doc_1_titulo_public`, `doc_protocolo`, `doc_tipo`, `doc_human`, `doc_clinic`, `doc_data`, `doc_hora`, `doc_dt_atualizado`, `doc_autor_principal`, `doc_research_main`, `doc_status`, `doc_xml`, `doc_type`, `doc_caae`, `doc_acronym`) VALUES
(1, 'Title #2015-12-21#', 'Title #2015-12-21#', '0000001', 'PROJE', 1, 0, 20151221, '19:28', 20151221, '0000002', '0000002', 'A', '', '', '', 'Title #2015-12-21#'),
(2, '#projeto - 2#', '#projeto - 2#', '0000002', 'PROJE', 1, 1, 20151221, '17:26', 20151221, '0000003', '0000003', 'Z', '', '', '', '#projeto - 2#'),
(3, '#teste #2015-12-21#', '#teste #2015-12-21#', '0000003', 'PROJE', 1, 0, 20151221, '19:20', 20151221, '0000002', '0000002', '$', '', '', '', '#teste #2015-12-21#'),
(4, 'teste', 'teste', '0000004', 'PROJE', 1, 0, 20160520, '14:29', 20160520, '0000001', '0000001', '@', '', '', '', 'teste'),
(5, 'teste', 'teste', '0000005', 'PROJE', 1, 1, 20160520, '17:56', 20160520, '0000003', '0000003', 'A', '', '', '', 'teste');

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_documentos_obrigatorio`
--

CREATE TABLE IF NOT EXISTS `cep_submit_documentos_obrigatorio` (
`id_sdo` bigint(20) unsigned NOT NULL,
  `sdo_codigo` char(7) DEFAULT NULL,
  `sdo_descricao` char(50) DEFAULT NULL,
  `sdo_content` text,
  `sdo_info` text,
  `sdo_ativo` int(11) DEFAULT '1',
  `sdo_obrigatorio` int(11) DEFAULT '0',
  `sdo_tipo` char(5) DEFAULT NULL,
  `sdo_upload` int(11) DEFAULT '0',
  `sdo_modelo` char(100) DEFAULT NULL,
  `sdo_ordem` int(11) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cep_submit_documentos_obrigatorio`
--

INSERT INTO `cep_submit_documentos_obrigatorio` (`id_sdo`, `sdo_codigo`, `sdo_descricao`, `sdo_content`, `sdo_info`, `sdo_ativo`, `sdo_obrigatorio`, `sdo_tipo`, `sdo_upload`, `sdo_modelo`, `sdo_ordem`) VALUES
(1, '00004', 'Parecer', 'Clique aqui para visualizar ou imprimir o parecer de seu protocolo.', 'S? s?o disponibilizados via internet os pareceres considerados com pend?ncias. Se o seu parecer tiver outro tipo de resultado de aprecia??o, voc? dever? busc?-lo na secretaria do CEP PUCPR nos hor?rios e atendimento externo.', 1, 0, 'PAR', 1, '', 20),
(2, '00007', 'Compromissso do Pesquisador e Delega??o de Poderes', '<font color="#366FF">Declara??o de compromisso do pesquisador respons?vel e termo de delega??o de poderes para o acompanhamento do projeto por terceiros.</font>\r\n<p><font color="#366FF">ESTE DOCUMENTO ? NECESS?RIO PARA QUE OUTRAS PESSOAS, AL?M DO PESQUISADOR RESPONS?VEL, POSSAM ACOMPANHAR O ANDAMENTO DO PROCESSO NO CEP, INCLUINDO A RETIRADA DE PARECERES. SEU ENVIO ? OBRIGAT?RIO, MESMO QUE O PESQUISADOR N?O DESEJE DELEGAR O DIREITO DE ACOMPANHAR O PROCESSO NO CEP.</font></p>', 'Esta declara??o ? obrigat?ria e somente as pessoas cujos nomes constarem no documento, poder?o acompanhar o andamento do processo no CEP PUCPR, incluindo a retirada de pareceres na Secretaria do Comit?.', 1, 0, 'JPG', 1, 'http://www.pucpr.br/pesquisa_cientifica/cep/documentos/SPAT.doc', 5),
(3, '00002', 'Termo de Compromisso de Utiliza??o de Dados', '<font color="#366FF">A apresenta??o do TCUD ? <b>obrigat?ria</b> para todos os projetos nos quais ser? realizada qualquer tipo de pesquisa em um banco de dados. Relacione no documento todos os pesquisadores que poder?o acessar os arquivos.</font> \r\n<p><font color="#366FF"> A FALTA INJUSTIFICADA DA APRESENTA??O DESTE TERMO OU DO TERMO DE CONSENTIMENTO LIVRE E ESCLARECIDO, CONFORME O CASO, IMPLICAR? NA REJEI??O DA SUBMISS?O DE SEU PROTOCOLO".</font></p>', 'Anexe aqui o modelo de seu Termo de Compromisso de Utiliza??o de Dados. Voc? poder? usar o modelo sugerido que pode ser obtido clicando na op??o "baixe um modelo deste documento". Tenha claro que ? obrigat?ria a apresenta??o deste documento em protocolos nos quais ser?o pesquisados documentos que constam de banco de dados, como arquivos de prontu?rios m?dicos e de outros documentos que contenham dados de pessoas. Relacione no documento todos os pesquisadores que poder?o acessar os arquivos.', 1, -2, 'TCUD', 1, 'http://www.pucpr.br/pesquisa_cientifica/cep/documentos/compromisso.doc', 2),
(4, '00006', 'Outros documentos', '<font color="#366FF">Carregue aqui outros documentos digitalizados que julgar importante como parte do protocolo do estudo.</font>', 'Aqui voc? poder? anexar ao seu protocolo qualquer outro documento que n?o se enquadre como TCLE ou Termo de Compromisso de Uso de Dados, como por exemplo uma declara??o de responsabilidade pelo financiamento do or?amento ou uma autoriza??o especial para alguma atividade do projeto.', 1, -1, '', 1, '', 12),
(5, '00005', 'Formul?rio ou question?rio', '<font color="#366FF">Se houver, anexe o formul?rio de pesquisa ou o question?rio que ser? aplicado aos sujeitos do estudo. Quando se aplicar, a apresenta??o do conte?do do instrumento de pesquisa ? <b>obrigat?ria</b></font>.', 'Se voc? for submeter um question?rio ou outro tipo de instrumento de pesquisa aos sujeitos, ? <b>obrigat?ria</b> a apresenta??o do seu conte?do ao CEP. Neste espa?o voc? poder? anex?-lo ao seu protocolo.', 1, -1, 'FOR', 1, '', 10),
(7, '00001', 'Termo de Consentimento Livre e Esclarecido', '<font color="#366FF">A apresenta??o do TCLE ? <b>obrigat?ria</b> para todos os projetos nos quais ser? realizada qualquer tipo de abordagem direta a seres humanos, mesmo que seja somente uma entrevista com sujeitos.</font> \r\n<p> <font color="#366FF">A FALTA INJUSTIFICADA DA APRESENTA??O DESTE TERMO OU DO TERMO DE COMPROMISSO DE UTILIZA??O DE DADOS, CONFORME O CASO, IMPLICAR? NA REJEI??O DA SUBMISS?O DE SEU PROTOCOLO".</font></p>', 'Envie o modelo do TCLE de seu projeto. A apresenta??o deste documento ? obrigat?ria para todos os projetos nos quais ser? realizada qualquer tipo de abordagem a seres humanos. Clicando em "baixe um modelo deste documento" voc? poder? acessar o modelo sugerido de TCLE . N?o esque?a de adaptar o modelo para as peculiaridades de seu projeto.', 1, -2, 'TCLE', 1, 'http://www.pucpr.br/arquivosUpload/1237436911258119968.doc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_documento_valor`
--

CREATE TABLE IF NOT EXISTS `cep_submit_documento_valor` (
`id_spc` bigint(20) unsigned NOT NULL,
  `spc_codigo` char(7) DEFAULT NULL,
  `spc_projeto` char(7) DEFAULT NULL,
  `spc_content` text,
  `spc_ativo` int(11) DEFAULT '1',
  `spc_pagina` char(3) DEFAULT NULL,
  `spc_autor` char(7) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=249 ;

--
-- Dumping data for table `cep_submit_documento_valor`
--

INSERT INTO `cep_submit_documento_valor` (`id_spc`, `spc_codigo`, `spc_projeto`, `spc_content`, `spc_ativo`, `spc_pagina`, `spc_autor`) VALUES
(1, '00065', '0000001', '', 1, '002', '0000002'),
(2, '00064', '0000001', '', 1, '002', '0000002'),
(3, '00066', '0000001', '', 1, '002', '0000002'),
(4, '00006', '0000001', '', 1, '002', '0000002'),
(5, '00002', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '002', '0000002'),
(6, '00008', '0000001', 'Title #2015-12-21#', 1, '002', '0000002'),
(7, '00007', '0000001', '', 1, '002', '0000002'),
(8, '00003', '0000001', '', 1, '002', '0000002'),
(9, '00004', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '002', '0000002'),
(10, '00030', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '002', '0000002'),
(11, '00011', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '002', '0000002'),
(12, '00005', '0000001', '', 1, '002', '0000002'),
(13, '00035', '0000001', '', 1, '003', '0000002'),
(14, '00010', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(15, '00001', '0000001', '', 1, '003', '0000002'),
(16, '00067', '0000001', '', 1, '003', '0000002'),
(17, '00069', '0000001', '#men', 1, '003', '0000002'),
(18, '00029', '0000001', '12', 1, '003', '0000002'),
(19, '00070', '0000001', '16', 1, '003', '0000002'),
(20, '00071', '0000001', '3', 1, '003', '0000002'),
(21, '00027', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(22, '00028', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(23, '00068', '0000001', '', 1, '003', '0000002'),
(24, '00072', '0000001', '', 1, '003', '0000002'),
(25, '00022', '0000001', '11/01/2015', 1, '003', '0000002'),
(26, '00042', '0000001', '', 1, '003', '0000002'),
(27, '00026', '0000001', '', 1, '003', '0000002'),
(28, '00073', '0000001', '', 1, '003', '0000002'),
(29, '00020', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(30, '00016', '0000001', '', 1, '003', '0000002'),
(31, '00017', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(32, '00018', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(33, '00019', '0000001', '', 1, '003', '0000002'),
(34, '00031', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(35, '00032', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(36, '00023', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '003', '0000002'),
(37, '00038', '0000001', '', 1, '004', '0000002'),
(38, '00039', '0000001', '', 1, '004', '0000002'),
(39, '00034', '0000001', '', 1, '004', '0000002'),
(40, '00045', '0000001', '', 1, '004', '0000002'),
(41, '00047', '0000001', '', 1, '004', '0000002'),
(42, '00033', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '004', '0000002'),
(43, '00040', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '004', '0000002'),
(44, '00041', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '004', '0000002'),
(45, '00046', '0000001', '', 1, '004', '0000002'),
(46, '00036', '0000001', '', 1, '004', '0000002'),
(62, '00056', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '005', '0000002'),
(63, '00057', '0000001', '', 1, '005', '0000002'),
(64, '00084', '0000001', '', 1, '005', '0000002'),
(61, '00054', '0000001', '', 1, '005', '0000002'),
(60, '00050', '0000001', '', 1, '005', '0000002'),
(59, '00024', '0000001', 'Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#Title #2015-12-21#', 1, '005', '0000002'),
(58, '00049', '0000001', '', 1, '005', '0000002'),
(65, '00083', '0000001', '#YES', 1, '005', '0000002'),
(66, '00086', '0000001', '', 1, '005', '0000002'),
(67, '00085', '0000001', '', 1, '005', '0000002'),
(68, '00043', '0000001', '', 1, '005', '0000002'),
(69, '00065', '0000002', '', 1, '002', '0000003'),
(70, '00064', '0000002', '', 1, '002', '0000003'),
(71, '00066', '0000002', '', 1, '002', '0000003'),
(72, '00006', '0000002', '', 1, '002', '0000003'),
(73, '00002', '0000002', '#projeto - 2#', 1, '002', '0000003'),
(74, '00008', '0000002', '#projeto - 2#', 1, '002', '0000003'),
(75, '00007', '0000002', '', 1, '002', '0000003'),
(76, '00003', '0000002', '', 1, '002', '0000003'),
(77, '00004', '0000002', '#projeto - 2#', 1, '002', '0000003'),
(78, '00030', '0000002', '#projeto - 2#', 1, '002', '0000003'),
(79, '00011', '0000002', '#projeto - 2#', 1, '002', '0000003'),
(80, '00005', '0000002', '', 1, '002', '0000003'),
(81, '00035', '0000002', '', 1, '003', '0000003'),
(82, '00010', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(83, '00001', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(84, '00067', '0000002', '', 1, '003', '0000003'),
(85, '00069', '0000002', '#men', 1, '003', '0000003'),
(86, '00029', '0000002', '12', 1, '003', '0000003'),
(87, '00070', '0000002', '18', 1, '003', '0000003'),
(88, '00071', '0000002', '18', 1, '003', '0000003'),
(89, '00027', '0000002', '#projeto - 2##projeto - 2#', 1, '003', '0000003'),
(90, '00028', '0000002', '', 1, '003', '0000003'),
(91, '00068', '0000002', '', 1, '003', '0000003'),
(92, '00072', '0000002', '', 1, '003', '0000003'),
(93, '00022', '0000002', '12/22/2015', 1, '003', '0000003'),
(94, '00042', '0000002', 'recruiting', 1, '003', '0000003'),
(95, '00026', '0000002', '', 1, '003', '0000003'),
(96, '00073', '0000002', '', 1, '003', '0000003'),
(97, '00020', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(98, '00016', '0000002', '', 1, '003', '0000003'),
(99, '00017', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(100, '00018', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(101, '00019', '0000002', '', 1, '003', '0000003'),
(102, '00031', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(103, '00032', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(104, '00023', '0000002', '#projeto - 2#', 1, '003', '0000003'),
(105, '00038', '0000002', '', 1, '004', '0000003'),
(106, '00039', '0000002', '', 1, '004', '0000003'),
(107, '00034', '0000002', '#projeto - 2#', 1, '004', '0000003'),
(108, '00045', '0000002', '', 1, '004', '0000003'),
(109, '00047', '0000002', '', 1, '004', '0000003'),
(110, '00033', '0000002', '#projeto - 2#', 1, '004', '0000003'),
(111, '00040', '0000002', '#projeto - 2#', 1, '004', '0000003'),
(112, '00041', '0000002', '#projeto - 2#', 1, '004', '0000003'),
(113, '00046', '0000002', '', 1, '004', '0000003'),
(114, '00036', '0000002', '', 1, '004', '0000003'),
(115, '00049', '0000002', '', 1, '005', '0000003'),
(116, '00024', '0000002', '#projeto - 2#', 1, '005', '0000003'),
(117, '00050', '0000002', '', 1, '005', '0000003'),
(118, '00054', '0000002', '', 1, '005', '0000003'),
(119, '00056', '0000002', '#projeto - 2#', 1, '005', '0000003'),
(120, '00057', '0000002', '', 1, '005', '0000003'),
(121, '00084', '0000002', '', 1, '005', '0000003'),
(122, '00083', '0000002', '#YES', 1, '005', '0000003'),
(123, '00086', '0000002', '', 1, '005', '0000003'),
(124, '00085', '0000002', '', 1, '005', '0000003'),
(125, '00043', '0000002', '', 1, '005', '0000003'),
(126, '00065', '0000003', '', 1, '002', '0000002'),
(127, '00064', '0000003', '', 1, '002', '0000002'),
(128, '00066', '0000003', '', 1, '002', '0000002'),
(129, '00006', '0000003', '', 1, '002', '0000002'),
(130, '00002', '0000003', '#teste #2015-12-21#', 1, '002', '0000002'),
(131, '00008', '0000003', '#teste #2015-12-21#', 1, '002', '0000002'),
(132, '00007', '0000003', '', 1, '002', '0000002'),
(133, '00003', '0000003', '', 1, '002', '0000002'),
(134, '00004', '0000003', '#teste #2015-12-21#', 1, '002', '0000002'),
(135, '00030', '0000003', '#teste #2015-12-21#', 1, '002', '0000002'),
(136, '00011', '0000003', '#teste #2015-12-21#', 1, '002', '0000002'),
(137, '00005', '0000003', '', 1, '002', '0000002'),
(138, '00035', '0000003', '', 1, '003', '0000002'),
(139, '00010', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(140, '00001', '0000003', '', 1, '003', '0000002'),
(141, '00067', '0000003', '', 1, '003', '0000002'),
(142, '00069', '0000003', '#both', 1, '003', '0000002'),
(143, '00029', '0000003', '100', 1, '003', '0000002'),
(144, '00070', '0000003', '18', 1, '003', '0000002'),
(145, '00071', '0000003', '72', 1, '003', '0000002'),
(146, '00027', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(147, '00028', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(148, '00068', '0000003', '', 1, '003', '0000002'),
(149, '00072', '0000003', '', 1, '003', '0000002'),
(150, '00022', '0000003', '14/12/2015', 1, '003', '0000002'),
(151, '00042', '0000003', '', 1, '003', '0000002'),
(152, '00026', '0000003', '', 1, '003', '0000002'),
(153, '00073', '0000003', '', 1, '003', '0000002'),
(154, '00020', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(155, '00016', '0000003', '', 1, '003', '0000002'),
(156, '00017', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(157, '00018', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(158, '00019', '0000003', '', 1, '003', '0000002'),
(159, '00031', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(160, '00032', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(161, '00023', '0000003', '#teste #2015-12-21#', 1, '003', '0000002'),
(162, '00038', '0000003', '', 1, '004', '0000002'),
(163, '00039', '0000003', '', 1, '004', '0000002'),
(164, '00034', '0000003', '', 1, '004', '0000002'),
(165, '00045', '0000003', '', 1, '004', '0000002'),
(166, '00047', '0000003', '', 1, '004', '0000002'),
(167, '00033', '0000003', '#teste #2015-12-21#', 1, '004', '0000002'),
(168, '00040', '0000003', '#teste #2015-12-21#', 1, '004', '0000002'),
(169, '00041', '0000003', '#teste #2015-12-21#', 1, '004', '0000002'),
(170, '00046', '0000003', '', 1, '004', '0000002'),
(171, '00036', '0000003', '', 1, '004', '0000002'),
(191, '00086', '0000003', '', 1, '005', '0000002'),
(190, '00083', '0000003', '#NO', 1, '005', '0000002'),
(189, '00084', '0000003', '', 1, '005', '0000002'),
(188, '00057', '0000003', '', 1, '005', '0000002'),
(187, '00056', '0000003', '#teste #2015-12-21#', 1, '005', '0000002'),
(186, '00054', '0000003', '', 1, '005', '0000002'),
(185, '00050', '0000003', '', 1, '005', '0000002'),
(184, '00024', '0000003', '#teste #2015-12-21#', 1, '005', '0000002'),
(183, '00049', '0000003', '', 1, '005', '0000002'),
(192, '00085', '0000003', '', 1, '005', '0000002'),
(193, '00043', '0000003', '', 1, '005', '0000002'),
(194, '00065', '0000005', '', 1, '002', '0000003'),
(195, '00064', '0000005', '', 1, '002', '0000003'),
(196, '00066', '0000005', '', 1, '002', '0000003'),
(197, '00006', '0000005', '', 1, '002', '0000003'),
(198, '00002', '0000005', 'teste', 1, '002', '0000003'),
(199, '00008', '0000005', 'teste', 1, '002', '0000003'),
(200, '00007', '0000005', '', 1, '002', '0000003'),
(201, '00003', '0000005', '', 1, '002', '0000003'),
(202, '00004', '0000005', 'teste', 1, '002', '0000003'),
(203, '00030', '0000005', 'teste', 1, '002', '0000003'),
(204, '00011', '0000005', 'teste', 1, '002', '0000003'),
(205, '00005', '0000005', '', 1, '002', '0000003'),
(206, '00035', '0000005', '', 1, '003', '0000003'),
(207, '00010', '0000005', 'teste', 1, '003', '0000003'),
(208, '00001', '0000005', 'teste', 1, '003', '0000003'),
(209, '00067', '0000005', '', 1, '003', '0000003'),
(210, '00069', '0000005', '#men', 1, '003', '0000003'),
(211, '00029', '0000005', '', 1, '003', '0000003'),
(212, '00070', '0000005', '16', 1, '003', '0000003'),
(213, '00071', '0000005', '63', 1, '003', '0000003'),
(214, '00027', '0000005', 'test', 1, '003', '0000003'),
(215, '00028', '0000005', 'eteste', 1, '003', '0000003'),
(216, '00068', '0000005', '', 1, '003', '0000003'),
(217, '00072', '0000005', '', 1, '003', '0000003'),
(218, '00022', '0000005', '20/05/2016', 1, '003', '0000003'),
(219, '00042', '0000005', 'pending', 1, '003', '0000003'),
(220, '00026', '0000005', '', 1, '003', '0000003'),
(221, '00073', '0000005', '', 1, '003', '0000003'),
(222, '00020', '0000005', 'teste', 1, '003', '0000003'),
(223, '00016', '0000005', '', 1, '003', '0000003'),
(224, '00017', '0000005', 'teste', 1, '003', '0000003'),
(225, '00018', '0000005', 'teste', 1, '003', '0000003'),
(226, '00019', '0000005', '', 1, '003', '0000003'),
(227, '00031', '0000005', 'teste', 1, '003', '0000003'),
(228, '00032', '0000005', 'teste', 1, '003', '0000003'),
(229, '00023', '0000005', 'teste', 1, '003', '0000003'),
(230, '00038', '0000005', '', 1, '004', '0000003'),
(231, '00039', '0000005', '', 1, '004', '0000003'),
(232, '00034', '0000005', 'teste', 1, '004', '0000003'),
(233, '00045', '0000005', '', 1, '004', '0000003'),
(234, '00033', '0000005', 'teste', 1, '004', '0000003'),
(235, '00040', '0000005', 'teste', 1, '004', '0000003'),
(236, '00041', '0000005', 'teste', 1, '004', '0000003'),
(237, '00046', '0000005', '', 1, '004', '0000003'),
(238, '00036', '0000005', '', 1, '004', '0000003'),
(239, '00049', '0000005', '', 1, '005', '0000003'),
(240, '00024', '0000005', 'teste', 1, '005', '0000003'),
(241, '00050', '0000005', '', 1, '005', '0000003'),
(242, '00054', '0000005', '', 1, '005', '0000003'),
(243, '00056', '0000005', 'teste', 1, '005', '0000003'),
(244, '00057', '0000005', '', 1, '005', '0000003'),
(245, '00084', '0000005', '', 1, '005', '0000003'),
(246, '00083', '0000005', '#YES', 1, '005', '0000003'),
(247, '00086', '0000005', '', 1, '005', '0000003'),
(248, '00085', '0000005', '', 1, '005', '0000003');

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_ged_files`
--

CREATE TABLE IF NOT EXISTS `cep_submit_ged_files` (
`id_pl` bigint(20) unsigned NOT NULL,
  `pl_type` char(3) DEFAULT NULL,
  `pl_filename` char(255) DEFAULT NULL,
  `pl_texto` text,
  `pl_texto_sql` text,
  `pl_size` bigint(20) DEFAULT NULL,
  `pl_data` bigint(20) DEFAULT NULL,
  `pl_hora` char(5) DEFAULT NULL,
  `pl_versao` bigint(20) DEFAULT '1',
  `pl_acesso` bigint(20) DEFAULT '0',
  `pl_codigo` char(7) DEFAULT NULL,
  `pl_tp_doc` char(7) DEFAULT NULL,
  `pl_tp_projeto` char(7) DEFAULT NULL,
  `pl_post` char(7) DEFAULT NULL,
  `pl_autor` char(7) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_grupos`
--

CREATE TABLE IF NOT EXISTS `cep_submit_grupos` (
`id_sg` bigint(20) unsigned NOT NULL,
  `sg_descricao` char(100) NOT NULL,
  `sg_participantes` int(11) NOT NULL,
  `sg_centro` int(11) NOT NULL,
  `sg_outros` int(11) NOT NULL,
  `sg_internacional` int(11) NOT NULL,
  `sg_criterio_inclusao` text NOT NULL,
  `sg_criterio_exclusao` text NOT NULL,
  `sg_riscos` text NOT NULL,
  `sg_intervencao` text NOT NULL,
  `sg_protocolo` char(7) NOT NULL,
  `sg_ativo` int(11) NOT NULL,
  `sg_data` int(11) NOT NULL,
  `sg_grupo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_institution_dados`
--

CREATE TABLE IF NOT EXISTS `cep_submit_institution_dados` (
`id_sid` bigint(20) unsigned NOT NULL,
  `sid_institution` char(7) NOT NULL,
  `sid_protocol` char(7) NOT NULL,
  `sid_field` char(7) NOT NULL,
  `sid_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_manuscrito_field`
--

CREATE TABLE IF NOT EXISTS `cep_submit_manuscrito_field` (
`id_sub` bigint(20) unsigned NOT NULL,
  `sub_pos` int(11) DEFAULT '0',
  `sub_field` text,
  `sub_css` text,
  `sub_descricao` char(80) DEFAULT NULL,
  `sub_ativo` int(11) DEFAULT '1',
  `sub_codigo` char(5) DEFAULT NULL,
  `sub_pag` char(5) DEFAULT NULL,
  `sub_obrigatorio` int(11) DEFAULT '0',
  `sub_editavel` int(11) DEFAULT '1',
  `sub_informacao` text,
  `sub_projeto_tipo` char(5) DEFAULT NULL,
  `sub_ordem` int(11) DEFAULT '0',
  `sub_pdf_title` char(60) DEFAULT NULL,
  `sub_pdf_mostra` int(11) DEFAULT '0',
  `sub_pdf_align` char(10) DEFAULT NULL,
  `sub_pdf_font_size` int(11) DEFAULT '12',
  `sub_pdf_space` int(11) DEFAULT '8',
  `sub_limite` char(7) DEFAULT NULL,
  `sub_caption` text,
  `sub_id` char(7) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `cep_submit_manuscrito_field`
--

INSERT INTO `cep_submit_manuscrito_field` (`id_sub`, `sub_pos`, `sub_field`, `sub_css`, `sub_descricao`, `sub_ativo`, `sub_codigo`, `sub_pag`, `sub_obrigatorio`, `sub_editavel`, `sub_informacao`, `sub_projeto_tipo`, `sub_ordem`, `sub_pdf_title`, `sub_pdf_mostra`, `sub_pdf_align`, `sub_pdf_font_size`, `sub_pdf_space`, `sub_limite`, `sub_caption`, `sub_id`) VALUES
(87, 5, '$T70:8', 'form_textarea_full', 'health_condition', 1, '00001', '3', 0, 0, '', '00001', 5, 'health_condition', 1, 'J', 12, 12, '99999', '', 'CLINIC'),
(88, 10, '$T60:6', 'form_textarea_full', 'abstract', 1, '00002', '2', 1, 0, '', '00001', 10, 'abstract', 1, 'J', 12, 6, '99999', '', ''),
(89, 10, '$S150', 'form_textarea_full', 'keywords', 1, '00008', '2', 1, 0, '', '00001', 15, 'keywords', 1, 'L', 12, 12, '99999', 'keywords', 'keyword'),
(90, 15, '${', '', 'introduction', 1, '00003', '2', 0, 0, '', '00001', 1, 'introduction', 0, 'L', 12, 12, '99999', '', ''),
(91, 15, '$T70:10', 'form_textarea_full', 'introduction', 1, '00004', '2', 1, 0, '', '00001', 6, 'introduction', 1, 'J', 12, 12, '99999', 'introduction_inf', 'intro'),
(92, 17, '$}', '', 'introduction - close', 1, '00005', '2', 0, 0, '', '00001', 10, '', 0, 'L', 12, 12, '99999', '', ''),
(93, 10, '${', '', 'abstract_field', 1, '00006', '2', 0, 0, '', '00001', 1, 'abstract', 0, 'L', 12, 12, '99999', '', ''),
(94, 10, '$}', '', 'abstract', 1, '00007', '2', 0, 0, '', '00001', 20, '', 0, 'L', 12, 12, '99999', '', ''),
(95, 36, '${', '', 'design study', 0, '00009', '3', 0, 0, '', '00001', 1, 'design study', 1, 'L', 12, 12, '99999', '', ''),
(96, 2, '$T70:5', 'form_textarea_full', 'design study', 1, '00010', '3', 1, 0, '', '00001', 5, 'design study', 1, 'J', 12, 12, '99999', 'design study', ''),
(97, 16, '$T70:4', 'form_textarea_full', 'Objectives', 1, '00011', '2', 1, 0, '', '00001', 16, 'Objectives', 1, 'J', 12, 12, '99999', '', 'GOAL'),
(98, 17, '$T60:6', 'form_textarea_full', 'specific_goal', 0, '00012', '', 0, 0, '', '00001', 18, 'specific_goal', 1, 'J', 12, 12, '0', 'specific_goal', 'SGOAL'),
(99, 49, '$}', '', 'design study', 0, '00013', '3', 0, 0, '', '00001', 20, '', 0, 'L', 12, 12, '99999', '', ''),
(100, 99, '$T80:10', 'form_textarea_full', 'methodology', 0, '00014', '3', 0, 0, '', '00001', 1, 'methodology', 1, 'J', 12, 12, '99999', 'methodology', ''),
(101, 99, '$B8', '', 'Save and Next', 1, '00015', '2', 0, 0, '', '00001', 1, '', 0, 'L', 12, 12, '99999', '', ''),
(102, 15, '${', '', 'outcome', 1, '00016', '3', 0, 0, '', '00001', 1, 'outcome', 0, 'L', 12, 12, '99999', '', ''),
(103, 15, '$T70:5', 'form_textarea_full', 'primary_outcome', 1, '00017', '3', 1, 0, '', '00001', 5, 'primary_outcome', 1, 'L', 12, 12, '99999', 'primary_outcome', ''),
(104, 15, '$T60:4', 'form_textarea_full', 'seconday_outcome', 1, '00018', '3', 0, 0, '', '00001', 11, 'seconday_outcome', 1, 'J', 12, 12, '99999', 'seconday_outcome', ''),
(105, 15, '$}', '', 'outcome', 1, '00019', '3', 0, 0, '', '00001', 15, 'outcome', 0, 'L', 12, 12, '99999', 'outcome', ''),
(106, 14, '$T60:8', 'form_textarea_full', 'intervention', 1, '00020', '3', 1, 0, '', '00001', 5, 'intervention', 1, 'L', 12, 12, '99999', 'intervention', ''),
(107, 99, '$B8', '', 'Save and Next', 1, '00021', '3', 0, 0, '', '00001', 1, '', 0, 'L', 12, 12, '99999', '', ''),
(108, 12, '$D8', '', 'Date of enrollment of first participant', 1, '00022', '3', 1, 0, '', '00001', 4, 'Date of enrollment of first participant', 1, 'L', 12, 12, '99999', '', 'ENROLL'),
(109, 40, '$T60:5', 'form_textarea_full', 'ethical_considerations', 1, '00023', '3', 0, 0, '', '00001', 1, 'ethical_considerations', 0, 'L', 12, 12, '99999', '', ''),
(110, 5, '$T60:18', 'form_textarea_full', 'reference', 1, '00024', '5', 1, 0, '', '00001', 10, 'reference', 1, 'L', 12, 12, '99999', 'reference', 'REFER'),
(111, 99, '$B8', '', 'Save and Next', 1, '00025', '4', 0, 0, '', '00001', 1, '', 0, 'L', 12, 12, '99999', '', ''),
(112, 12, '$COUNTRY', 'form_textarea_full', 'countries_recruitment', 1, '00026', '3', 0, 0, '', '00001', 13, 'countries_recruitment', 1, 'L', 12, 6, '99999', '', ''),
(113, 10, '$T60:5', 'form_textarea_full', 'key_inclusion', 1, '00027', '3', 1, 0, '', '00001', 5, 'key_inclusion', 1, 'L', 12, 6, '99999', '', 'KEYI'),
(114, 10, '$T60:3', 'form_textarea_full', 'key_exclusion', 1, '00028', '3', 1, 0, '', '00001', 6, 'key_exclusion', 1, 'L', 12, 6, '99999', '', 'KEYE'),
(115, 9, '$I8', 'form_textarea_full', 'target_sample_size', 1, '00029', '3', 0, 0, '', '00001', 15, 'target_sample_size', 1, 'J', 12, 6, '99999', '', ''),
(116, 15, '$T70:4', 'form_textarea_full', 'justificativa', 1, '00030', '2', 1, 0, '', '00001', 8, 'justificativa', 1, 'L', 12, 6, '99999', '', ''),
(117, 18, '$T60:4', 'form_textarea_full', 'general_procedures', 1, '00031', '3', 0, 0, '', '00001', 1, 'general_procedures', 1, 'J', 12, 6, '99999', '', ''),
(118, 19, '$T60:5', 'form_textarea_full', 'analysis_plan', 1, '00032', '3', 0, 0, '', '00001', 1, 'analysis_plan', 1, 'L', 12, 6, '99999', '', ''),
(119, 10, '$T60:5', 'form_textarea_full', 'source_monetary', 1, '00033', '4', 1, 0, '', '00001', 1, 'source_monetary', 1, 'L', 12, 6, '99999', '', ''),
(120, 6, '$T70:3', 'form_textarea_full', 'secondary_register_other', 1, '00034', '4', 0, 0, '', '00001', 3, 'secondary_register_other', 1, 'J', 12, 6, '99999', '', 'CLINIC'),
(121, 1, '${', '', 'general_description', 1, '00035', '3', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(122, 17, '$CRONO', 'schedule', 'schedule', 1, '00036', '4', 0, 0, '', '00001', 1, 'crono', 1, 'L', 12, 6, '99999', '', ''),
(123, 9, '$BUDGET', '', 'budget', 1, '00037', '4', 0, 0, '', '00001', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(124, 3, '$REGISTER_P', '', 'primary_register', 1, '00038', '4', 0, 0, '', '00001', 1, 'primary_register', 1, 'L', 12, 6, '99999', '', 'CLINIC'),
(125, 4, '$REGISTER_S', '', 'sencondary_register', 1, '00039', '4', 0, 0, '', '00001', 1, 'sencondary_register', 0, 'L', 12, 6, '99999', '', 'CLINIC'),
(126, 11, '$T60:4', 'form_textarea_full', 'primary_sponsor', 1, '00040', '4', 1, 0, '', '00001', 1, 'primary_sponsor', 1, 'L', 12, 6, '99999', '', ''),
(127, 12, '$T60:5', 'form_textarea_full', 'secondary_sponsor', 1, '00041', '4', 0, 0, '', '00001', 1, 'secondary_sponsor', 1, 'L', 12, 6, '99999', '', ''),
(128, 12, '$O pending:pending &recruiting:recruiting &suspended:suspended &completed:completed &other:other', 'form_textarea_full', 'recruitment_status', 1, '00042', '3', 0, 0, '', '00001', 7, 'recruitment_status', 1, 'L', 12, 6, '99999', '', 'CLINIC'),
(129, 20, '$FILE', '', 'Files', 1, '00043', '6', 0, 0, '', '00001', 1, '#FILES_ATTACH', 1, 'L', 12, 6, '99999', '#FILES_ATTACH', ''),
(130, 6, '$TERM', '', 'TERM_SUBMIT', 1, '00044', '7', 0, 0, '', '00001', 1, 'TERM_SUBMIT', 1, 'L', 12, 6, '99999', '', 'TERM'),
(131, 8, '${', '', 'BUDGET', 1, '00045', '4', 0, 0, '', '00001', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(132, 12, '$}', '', 'BUDGET', 1, '00046', '4', 0, 0, '', '00001', 19, '', 0, 'L', 12, 6, '99999', '', ''),
(133, 9, '$H8', '', 'HIDDEN', 1, '00047', '9', 0, 0, '', '00001', 2, '', 0, 'L', 12, 6, '99999', '', ''),
(134, 20, '$B8', '', 'Save and Next', 1, '00048', '5', 0, 0, '', '00001', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(135, 5, '${', '', 'references', 1, '00049', '5', 0, 0, '', '00001', 1, 'references', 0, 'L', 12, 6, '99999', '', ''),
(136, 5, '$}', '', 'references', 1, '00050', '5', 0, 0, '', '00001', 20, '', 0, 'L', 12, 6, '99999', '', ''),
(137, 10, '${', '', 'team', 0, '00051', '', 0, 0, '', '00001', 1, 'team', 0, 'L', 12, 6, '0', '', ''),
(138, 10, '$}', '', 'team', 0, '00052', '', 0, 0, '', '00001', 20, '', 0, 'L', 12, 6, '0', '', ''),
(139, 10, '$T60:15', '', 'team', 0, '00053', '', 0, 0, '', '00001', 5, 'team', 1, 'L', 12, 6, '0', '', 'TEAM'),
(140, 6, '${', '', 'contacts', 1, '00054', '5', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(141, 6, '$T60:4', '', 'public_contact', 0, '00055', '', 0, 0, '', '00001', 2, 'public_contact', 1, 'L', 12, 6, '0', '', ''),
(142, 6, '$T60:4', '', 'scientific_contact', 1, '00056', '5', 1, 0, '', '00001', 7, 'scientific_contact', 1, 'L', 12, 6, '99999', '', ''),
(143, 6, '$}', '', 'contacts', 1, '00057', '5', 0, 0, '', '00001', 17, '', 1, 'L', 12, 6, '99999', '', ''),
(144, 1, '${', '', 'justify', 1, '00058', '12', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(145, 5, '$T60:6', '', 'justify', 1, '00059', '12', 0, 0, '', '00001', 1, 'justify', 1, 'J', 12, 6, '99999', '', ''),
(146, 10, '$}', '', 'justify', 1, '00060', '12', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(147, 20, '$FILE', '', '$FILE', 1, '00061', '12', 0, 0, '', '00001', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(148, 1, '$TERM', '', 'TERM_SUBMIT', 1, '00063', '12', 0, 0, '', '00001', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(149, 99, '$B8', '', 'Save and Next', 1, '00062', '12', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(150, 3, '$TEAM', '', 'team', 1, '00064', '2', 0, 0, '', '00001', 7, 'team', 1, 'L', 12, 6, '99999', '', 'CLINIC'),
(151, 3, '${', '', 'team', 1, '00065', '2', 0, 0, '', '00001', 5, '', 0, 'L', 12, 6, '99999', '', ''),
(152, 3, '$}', '', 'team', 1, '00066', '2', 0, 0, '', '00001', 10, '', 0, 'L', 12, 6, '99999', '', ''),
(153, 9, '${', '', 'sample', 1, '00067', '3', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(154, 10, '$}', '', 'sample', 1, '00068', '3', 0, 0, '', '00001', 20, '', 0, 'L', 12, 6, '99999', '', ''),
(155, 9, '$O : &#men:#men &#women:#women &#both:#both &#not_applicable:#not_applicable', '', 'gender', 1, '00069', '3', 1, 0, '', '00001', 14, 'gender', 0, 'L', 12, 6, '99999', '', 'GENDER'),
(156, 9, '$[0-120]', '', 'minimum age', 1, '00070', '3', 1, 0, '', '00001', 16, 'minimum age', 0, 'L', 12, 6, '99999', '', 'AGEMIN'),
(157, 9, '$[0-120]', '', 'maximum age', 1, '00071', '3', 1, 0, '', '00001', 18, 'maximum age', 0, 'L', 12, 6, '99999', '', 'AGEMAX'),
(158, 12, '${', '', 'recruitment', 1, '00072', '3', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', 'CLINIC'),
(159, 12, '$}', '', 'recruitment', 1, '00073', '3', 0, 0, '', '00001', 20, '', 0, 'L', 12, 6, '99999', '', 'CLINIC'),
(160, 5, '$D8', '', 'date_suspension', 1, '00074', '', 0, 0, '', '00001', 1, 'date_suspension', 1, 'L', 12, 6, '0', '', 'dt_susp'),
(161, 15, '$T60:6', '', 'justify', 1, '00075', '', 0, 0, '', '00001', 1, 'justify', 1, 'L', 12, 6, '0', '', 'JUSTIFY'),
(162, 40, '$B8', '', 'Save and Next', 1, '00076', '6', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(163, 2, '$M', '', 'amendment_005', 1, '00077', '', 0, 0, '', '00001', 5, 'amendment_005', 1, 'L', 12, 6, '0', '', ''),
(164, 2, '${', '', 'amendment_005', 1, '00078', '', 0, 0, '', '00001', 1, '', 0, 'L', 12, 6, '0', '', ''),
(165, 2, '$}', '', 'amendment_005', 1, '00079', '', 0, 0, '', '00001', 10, '', 0, 'L', 12, 6, '0', '', ''),
(166, 1, '$FILE', '', 'file', 1, '00080', '42', 0, 0, '', '00001', 1, 'file', 1, 'L', 12, 6, '99999', '', ''),
(167, 1, '$FILE', '', 'file', 1, '00081', '32', 0, 0, '', '00001', 1, 'file', 1, 'L', 12, 6, '99999', '', ''),
(168, 1, '$FILE', '', 'file', 1, '00082', '22', 0, 0, '', '00001', 1, 'file', 1, 'L', 12, 6, '99999', '', ''),
(169, 15, '$O : &#YES:#YES&#NO:#NO', '', 'local_ethical_approval', 1, '00083', '5', 1, 0, '', '00001', 5, 'local_ethical_approval', 1, 'L', 12, 6, '99999', '', ''),
(170, 15, '${', 'local_ethical_approval', 'local_ethical_approval', 1, '00084', '5', 0, 0, '', '00001', 3, '', 0, 'L', 12, 6, '99999', '', ''),
(171, 15, '$}', 'local_ethical_approval', 'local_ethical_approval', 1, '00085', '5', 0, 0, '', '00001', 19, '', 0, 'L', 12, 6, '99999', '', ''),
(172, 15, '$M', '', 'local_ethical', 1, '00086', '5', 0, 0, '', '00001', 16, '', 0, 'L', 12, 6, '99999', '', ''),
(173, 5, '$FILE', '', 'Amendment_file', 1, '00087', '1', 0, 0, '', '00002', 16, 'Amendment_file', 1, 'L', 12, 6, '99999', '', ''),
(174, 6, '$T80:6', '', 'justify', 1, '00088', '2', 0, 0, '', '00002', 6, 'justify', 1, 'J', 12, 6, '99999', 'justify', ''),
(175, 99, '$B8', '', 'Save and Next', 1, '00089', '1', 0, 0, '', '00002', 6, '', 0, 'L', 12, 6, '99999', '', ''),
(176, 19, '$B8', '', 'Save and Next', 1, '00090', '2', 0, 0, '', '00002', 19, 'Save and Next', 0, 'L', 12, 6, '99999', '', ''),
(177, 1, '$FILE', '', 'Subir reporte', 1, '00091', '2', 0, 0, '', '00003', 0, 'Reporte de evento adverso', 1, 'L', 12, 6, '99999', '', ''),
(178, 13, '$B', '', 'Save and Next', 1, '00092', '1', 0, 0, '', '00003', 0, '', 1, 'L', 12, 6, '99999', '', ''),
(179, 90, '$B8', '', 'Next', 1, '00093', '2', 0, 0, '', '00003', 0, '', 1, 'L', 12, 6, '99999', '', ''),
(180, 2, '$S20', '', 'Metodologia', 1, '00095', '', 0, 0, '', '00001', 7, 'Metodologia', 1, 'J', 12, 6, '99999', '', ''),
(181, 1, '$T80:10', '', 'ConclusiÃ³n del estudio', 1, '00094', '1', 0, 0, '', '00003', 1, '', 0, 'L', 12, 6, '99999', '', ''),
(182, 1, '$FILE', '', 'Subir reporte', 1, '00096', '2', 0, 0, '', '00004', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(183, 3, '$T80:10', '', 'Justify', 1, '00097', '1', 0, 0, '', '00004', 3, '', 1, 'L', 12, 6, '99999', '', ''),
(184, 4, '$T80:5', '', 'justify', 1, '00098', '1', 1, 1, '', '00006', 4, '', 1, 'L', 12, 6, '99999', '', ''),
(185, 14, '$B8', '', 'Save and Next', 1, '00215', '1', 0, 0, '', '00004', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(186, 6, '$B8', '', 'Save and Next', 1, '00216', '2', 0, 0, '', '00004', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(187, 3, '$T80:10', '', 'Justify', 1, '00217', '1', 0, 0, '', '00005', 10, '', 1, 'L', 12, 6, '99999', '', ''),
(188, 16, '$B8', '', 'Save and Next', 1, '00218', '1', 0, 0, '', '00005', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(189, 8, '$FILE', '', 'Subir arquivo', 1, '00219', '2', 0, 0, '', '00005', 0, '', 1, 'L', 12, 6, '99999', '', ''),
(190, 13, '$B8', '', 'Save and Next', 1, '00220', '2', 0, 0, '', '00005', 9, '', 1, 'L', 12, 6, '99999', '', ''),
(191, 9, '$T80:10', '', 'Justify', 1, '00221', '1', 1, 1, '', '00007', 8, '', 1, 'L', 12, 6, '99999', '', ''),
(192, 16, '$B8', '', 'Save and Next', 1, '00222', '1', 0, 0, '', '00007', 14, '', 1, 'L', 12, 6, '99999', '', ''),
(193, 15, '$B8', '', 'Save and Next', 1, '00223', '2', 0, 0, '', '00007', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(194, 4, '$FILE', '', 'File', 1, '00224', '2', 0, 0, '', '00007', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(195, 15, '$B8', '', 'Save and Next', 1, '00225', '1', 0, 0, '', '00009', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(196, 15, '$B8', '', 'Save and Next', 1, '00226', '2', 0, 0, '', '00009', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(197, 5, '$T80:10', '', 'Justify', 1, '00227', '1', 1, 1, '', '00009', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(198, 4, '$FILE', '', 'File', 1, '00228', '2', 0, 0, '', '00009', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(199, 15, '$B8', '', 'Save and Next', 1, '00229', '1', 0, 0, '', '00006', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(200, 15, '$B8', '', 'Save and Next', 1, '00230', '2', 0, 0, '', '00006', 1, '', 1, 'L', 12, 6, '99999', '', ''),
(201, 5, '$FILE', '', 'file', 1, '00231', '2', 0, 0, '', '00006', 1, '', 1, 'L', 12, 6, '99999', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_manuscrito_tipo`
--

CREATE TABLE IF NOT EXISTS `cep_submit_manuscrito_tipo` (
`id_sp` bigint(20) unsigned NOT NULL,
  `sp_codigo` char(5) DEFAULT NULL,
  `sp_descricao` char(50) DEFAULT NULL,
  `sp_ordem` int(11) DEFAULT '0',
  `sp_content` text,
  `sp_ativo` int(11) DEFAULT '1',
  `sp_nucleo` char(7) DEFAULT NULL,
  `sp_caption` text
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cep_submit_manuscrito_tipo`
--

INSERT INTO `cep_submit_manuscrito_tipo` (`id_sp`, `sp_codigo`, `sp_descricao`, `sp_ordem`, `sp_content`, `sp_ativo`, `sp_nucleo`, `sp_caption`) VALUES
(1, '00001', '#protocolo', 1, NULL, 1, 'CEP', '#research_protocol');

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_orca`
--

CREATE TABLE IF NOT EXISTS `cep_submit_orca` (
`id_sorca` bigint(20) unsigned NOT NULL,
  `sorca_descricao` char(100) NOT NULL,
  `sorca_unid` int(11) NOT NULL,
  `sorca_valor` float NOT NULL,
  `sorca_protocol` char(7) NOT NULL,
  `sorca_ativo` int(11) NOT NULL,
  `sorca_finan` char(7) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cep_submit_orca`
--

INSERT INTO `cep_submit_orca` (`id_sorca`, `sorca_descricao`, `sorca_unid`, `sorca_valor`, `sorca_protocol`, `sorca_ativo`, `sorca_finan`) VALUES
(1, '12e12e', 12, 12, '0000001', 1, ''),
(2, '#projeto - 2#', 12, 12, '0000002', 1, ''),
(3, 'teste', 12, 12, '0000005', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_register_unit`
--

CREATE TABLE IF NOT EXISTS `cep_submit_register_unit` (
`id_csru` bigint(20) unsigned NOT NULL,
  `csru_protocolo` int(11) NOT NULL,
  `csru_unit` char(5) NOT NULL,
  `csru_number` char(20) NOT NULL,
  `csru_ativo` int(11) NOT NULL,
  `csru_data` char(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cep_submit_register_unit`
--

INSERT INTO `cep_submit_register_unit` (`id_csru`, `csru_protocolo`, `csru_unit`, `csru_number`, `csru_ativo`, `csru_data`) VALUES
(1, 5, '00012', '123123', 1, '.asd.');

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_team`
--

CREATE TABLE IF NOT EXISTS `cep_submit_team` (
`id_ct` bigint(20) unsigned NOT NULL,
  `ct_protocol` char(7) NOT NULL,
  `ct_author` char(7) NOT NULL,
  `ct_type` char(1) NOT NULL,
  `ct_data` int(11) NOT NULL,
  `ct_ativo` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cep_submit_team`
--

INSERT INTO `cep_submit_team` (`id_ct`, `ct_protocol`, `ct_author`, `ct_type`, `ct_data`, `ct_ativo`) VALUES
(1, '0000001', '0000002', 'C', 20151221, 1),
(2, '0000002', '0000003', 'C', 20151221, 1),
(3, '0000003', '0000002', 'C', 20151221, 1),
(4, '0000004', '0000001', 'C', 20160520, 1),
(5, '0000005', '0000003', 'C', 20160520, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_tipo`
--

CREATE TABLE IF NOT EXISTS `cep_submit_tipo` (
`id_sp` bigint(20) unsigned NOT NULL,
  `sp_codigo` char(5) DEFAULT NULL,
  `sp_descricao` char(50) DEFAULT NULL,
  `sp_ordem` int(11) DEFAULT '0',
  `sp_content` text,
  `sp_ativo` int(11) DEFAULT '1',
  `sp_nucleo` char(7) DEFAULT NULL,
  `sp_caption` text,
  `sp_cab_number` int(15) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cep_submit_tipo`
--

INSERT INTO `cep_submit_tipo` (`id_sp`, `sp_codigo`, `sp_descricao`, `sp_ordem`, `sp_content`, `sp_ativo`, `sp_nucleo`, `sp_caption`, `sp_cab_number`) VALUES
(1, '00001', 'Protocolo de pesquisa', 1, '', 1, 'CEP', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `cep_submit_valor`
--

CREATE TABLE IF NOT EXISTS `cep_submit_valor` (
`id_spc` bigint(20) unsigned NOT NULL,
  `spc_codigo` char(7) DEFAULT NULL,
  `spc_projeto` char(7) DEFAULT NULL,
  `spc_content` text,
  `spc_ativo` int(11) DEFAULT '1',
  `spc_pagina` char(3) DEFAULT NULL,
  `spc_autor` char(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cep_survey`
--

CREATE TABLE IF NOT EXISTS `cep_survey` (
`id_sr` bigint(20) unsigned NOT NULL,
  `sr_protocolo` char(8) NOT NULL,
  `sr_member` char(8) NOT NULL,
  `sr_yes` int(11) NOT NULL,
  `sr_no` int(11) NOT NULL,
  `sr_date` int(11) NOT NULL,
  `sr_time` char(8) NOT NULL,
  `sr_ip` char(15) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cep_survey`
--

INSERT INTO `cep_survey` (`id_sr`, `sr_protocolo`, `sr_member`, `sr_yes`, `sr_no`, `sr_date`, `sr_time`, `sr_ip`) VALUES
(1, '0000002', '0000001', 1, 0, 20151221, '17:35', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `cep_team`
--

CREATE TABLE IF NOT EXISTS `cep_team` (
`id_ct` bigint(20) unsigned NOT NULL,
  `ct_protocol` char(7) NOT NULL,
  `ct_author` char(7) NOT NULL,
  `ct_type` char(1) NOT NULL,
  `ct_data` int(11) NOT NULL,
  `ct_ativo` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cep_team`
--

INSERT INTO `cep_team` (`id_ct`, `ct_protocol`, `ct_author`, `ct_type`, `ct_data`, `ct_ativo`) VALUES
(1, '000001', '0000002', 'C', 20151221, 1),
(2, '000002', '0000003', 'C', 20151221, 1),
(3, '000003', '0000002', 'C', 20151221, 1),
(4, '000004', '0000003', 'C', 20160520, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discentes`
--

CREATE TABLE IF NOT EXISTS `discentes` (
`id_pa` bigint(20) unsigned NOT NULL,
  `pa_nome` char(100) DEFAULT NULL,
  `pa_nome_asc` char(100) DEFAULT NULL,
  `pa_nasc` char(10) DEFAULT NULL,
  `pa_codigo` char(7) DEFAULT NULL,
  `pa_cracha` char(15) DEFAULT NULL,
  `pa_login` char(30) DEFAULT NULL,
  `pa_escolaridade` char(20) DEFAULT NULL,
  `pa_titulacao` char(5) DEFAULT NULL,
  `pa_carga_semanal` int(11) DEFAULT '0',
  `pa_ss` char(1) DEFAULT NULL,
  `pa_cpf` char(20) DEFAULT NULL,
  `pa_negocio` char(30) DEFAULT NULL,
  `pa_centro` char(100) DEFAULT NULL,
  `pa_curso` char(100) DEFAULT NULL,
  `pa_telefone` char(35) DEFAULT NULL,
  `pa_celular` char(35) DEFAULT NULL,
  `pa_tel1` char(35) DEFAULT NULL,
  `pa_tel2` char(35) DEFAULT NULL,
  `pa_lattes` char(100) DEFAULT NULL,
  `pa_email` char(100) DEFAULT NULL,
  `pa_email_1` char(100) DEFAULT NULL,
  `pa_senha` char(20) DEFAULT NULL,
  `pa_endereco` text,
  `pa_afiliacao` char(7) DEFAULT NULL,
  `pa_ativo` int(11) DEFAULT '1',
  `pa_update` int(11) DEFAULT '19000101',
  `pa_cc_banco` char(5) DEFAULT NULL,
  `pa_cc_agencia` char(6) DEFAULT NULL,
  `pa_cc_conta` char(15) DEFAULT NULL,
  `pa_cc_tipo` char(1) DEFAULT NULL,
  `pa_obs` text,
  `pa_bolsa_anterior` char(1) DEFAULT NULL,
  `pa_bolsa` char(1) DEFAULT NULL,
  `pa_rg` char(20) DEFAULT NULL,
  `pa_pai` char(100) DEFAULT NULL,
  `pa_mae` char(100) DEFAULT NULL,
  `pa_cep` char(10) DEFAULT NULL,
  `pa_periodo` char(20) DEFAULT NULL,
  `pa_ass` char(100) DEFAULT NULL,
  `pa_img_rg` char(100) DEFAULT NULL,
  `pa_img_cpf` char(100) DEFAULT NULL,
  `pa_img_residencia` char(100) DEFAULT NULL,
  `pa_bairro` char(20) DEFAULT NULL,
  `pa_cidade` char(20) DEFAULT NULL,
  `pa_estado` char(2) DEFAULT NULL,
  `pa_motivo` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `docentes`
--

CREATE TABLE IF NOT EXISTS `docentes` (
`id_pp` bigint(20) unsigned NOT NULL,
  `pp_nome` char(100) DEFAULT NULL,
  `pp_nome_asc` char(100) DEFAULT NULL,
  `pp_nasc` char(10) DEFAULT NULL,
  `pp_codigo` char(7) DEFAULT NULL,
  `pp_cracha` char(15) DEFAULT NULL,
  `pp_login` char(30) DEFAULT NULL,
  `pp_escolaridade` char(20) DEFAULT NULL,
  `pp_titulacao` char(5) DEFAULT NULL,
  `pp_carga_semanal` int(11) DEFAULT '0',
  `pp_ss` char(1) DEFAULT NULL,
  `pp_cpf` char(20) DEFAULT NULL,
  `pp_negocio` char(30) DEFAULT NULL,
  `pp_centro` char(50) DEFAULT NULL,
  `pp_curso` char(50) DEFAULT NULL,
  `pp_telefone` char(20) DEFAULT NULL,
  `pp_celular` char(20) DEFAULT NULL,
  `pp_lattes` char(100) DEFAULT NULL,
  `pp_email` char(100) DEFAULT NULL,
  `pp_email_1` char(100) DEFAULT NULL,
  `pp_senha` char(20) DEFAULT NULL,
  `pp_endereco` text,
  `pp_afiliacao` char(7) DEFAULT NULL,
  `pp_ativo` int(11) DEFAULT '1',
  `pp_grestudo` text,
  `pp_prod` bigint(20) DEFAULT '0',
  `pp_ass` char(100) DEFAULT NULL,
  `pp_instituicao` char(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
`id_faq` bigint(20) unsigned NOT NULL,
  `faq_pergunta` text,
  `faq_resposta` text,
  `faq_ordem` int(11) DEFAULT '0',
  `faq_ativo` int(11) DEFAULT '1',
  `faq_seccao` char(10) DEFAULT NULL,
  `faq_idioma` char(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id_faq`, `faq_pergunta`, `faq_resposta`, `faq_ordem`, `faq_ativo`, `faq_seccao`, `faq_idioma`) VALUES
(1, '¿Qué está sujeto a revisión ética?', 'Toda investigación con seres humanos debe obtener aprobación ética por parte de un comité de revisión ética antes de iniciarse. Para constituir investigación con seres humanos la propuesta debe ser una investigación y debe obtener información de personas. \r\n\r\nLa investigación se define como la actividad de ciencias sociales, biomédicas, del comportamiento o epidemiológica que implica recabar o analizar datos sistemáticamente con el objetivo de desarrollar conocimiento generalizable. Se define a seres humanos como personas que que (i) se vuelven identificables individualmente por la recolección, preparación o uso de material biológico o records médicos o de otro tipo, o (ii) están expuestos a la manipulación, intervención, observación u otra interacción con los investigadores directamente o por medio de la alteración de su entorno. \r\n\r\nLa investigación con seres humanos incluye estudios que usan tejidos, muestras, datos u otros records de personas, así como estudios que involucran la conducción de entrevistas, grupos focales o encuestas, o la observación del comportamiento privado.\r\n\r\nLas actividades que no constituyen investigación con seres humanos están exentas de revisión ética. Estas pueden ser actividades que no buscan la producción de conocimiento generalizable o no involucran a seres humanos en las maneras descritas. Por ejemplo, las siguientes actividades no constituyen investigación con seres humanos y están por ello exentas de revisión ética:\r\n\r\n• Estudios que utilizan datos que están disponibles públicamente o son generados por la observación de comportamiento público.\r\n\r\n• Estudios que usan datos, muestras o tejidos ya existentes (previamente obtenido por otros) que son recibidos por los investigadores de manera tal que la identidad de los individuos no puede ser establecida.\r\n\r\n• Actividades de salud pública llevadas a cabo por la autoridad reconocida de salud pública con el objetivo de prevenir o controlar una enfermedad o daño, incluidas actividades de vigilancia que buscan solo identificar o controlar un problema de salud. Estas son actividades que buscan el beneficio de los participantes o las comunidades de los participantes, y no buscan generar conocimiento que es aplicable a otras poblaciones.\r\n\r\n• Actividades de control de calidad o evaluaciones de programas que buscan mejorar el programa en cuestión y sin intención de producir conocimiento generalizable.\r\n\r\nHay proyectos que pueden tener múltiples componentes, algunos de los cuales pueden constituir investigación con seres humanos mientras que otros pueden no serlo. El componente que constituye investigación con seres humanos debe pasar por revisión ética. La determinación de si una propuesta no está exenta de revisión ética la debe hacer una parte independiente, como un comité de revisión ética.', 1, 1, 'CEP', 'es'),
(2, '¿Qué pautas éticas internacionales gobiernan la investigación con animales- humanos?', 'Declaración de Helsinki de la Asociación Médica Mundial (revisión del 2013): http://www.iacs.aragon.es/econocimiento/documentos/ceica/2013-declaracion-helsinki-brasil.pdf \r\nPautas éticas internacionales para la investigación biomédica en seres humanos del Consejo de Organizaciones Internacionales de las Ciencias Médicas (CIOMS): http://www.cioms.ch/publications/guidelines/pautas_eticas_internacionales.htm \r\nPautas internacionales para la evaluación ética de los estudios epidemiológicos del CIOMS: http://www.ms.gba.gov.ar/sitios/ccis/files/2012/08/PAUTASINTERNACIONALESEVALUACIONETICAESTUDIOSEPIDEMIOLOGICOS1991.pdf\r\n', 3, 1, 'CEP', 'es'),
(3, '¿Cuáles son los estándares de cada país para la investigación con seres humanos?', 'Compilación internacional de estándares para la investigación con seres humanos (edición del 2015): http://www.hhs.gov/ohrp/international/index.html', 5, 1, 'CEP', 'es'),
(4, '¿Cómo debe funcionar un comité de revisión ética de la investigación con seres humanos?', 'Pautas y orientación operativa para la revisión ética de la investigación en salud con seres humanos publicadas por OPS/OMS: http://www.paho.org/hq/index.php?option=com_docman&task=doc_view&Itemid=270&gid=22738&lang=es', 7, 1, 'CEP', 'es'),
(5, '5 ¿Qué preguntas deben guiar la revisión ética de la investigación con seres humanos?', 'Valor social: \r\n¿Puede el estudio llevar a mejoras en la salud o el bienestar? \r\n¿Cuál es el valor potencial de la investigación para cada uno de los posibles beneficiarios?\r\n\r\nValidez científica: \r\n¿Es la investigación metodológicamente válida y científica (y estadísticamente) sólida? \r\n¿Va el estudio a generar datos válidos y confiables que puedan ser generalizables? \r\n¿Es viable? \r\n¿Permite el diseño del estudio dar a los participantes aquellos servicios de salud que les corresponden?\r\n Si no es el caso, hay razones metodológicas poderosas para no hacerlo y se protege a los participantes de daños serios? \r\n\r\nSelección justa de participantes: \r\n¿Cuáles son los criterios para incluir y excluir participantes? \r\n¿Se basa la selección en criterios científicos? \r\n¿Se selecciona a participantes de manera que se minimicen los riesgos y se maximicen los beneficios potenciales? Si los participantes son vulnerables, \r\n¿hay salvaguardas para protegerlos? \r\n¿Se distribuyen los riesgos y potenciales beneficios del estudio de manera equitativa?\r\n\r\nBalance favorable de riesgos y beneficios: \r\n¿Pueden minimizarse los riesgos para los participantes? \r\n¿Pueden mejorarse los beneficios potenciales para los individuos y la sociedad? \r\n¿Son los beneficios potenciales para la sociedad y los individuos superiores a los riesgos?\r\n\r\nConsentimiento informado: \r\n¿Se da a los potenciales participantes la información acertada, clara, relevante y completa? \r\n¿Son los procedimientos de reclutamiento, el proceso de consentimiento y los incentivos apropiados para la cultura y el contexto? \r\n¿Hay un plan apropiado para obtener la autorización de quienes no pueden consentir por si mismos? \r\n¿Se aclara a los participantes que tienen derecho a no participar? ¿Son libres de no participar?\r\n\r\nRespeto por los participantes: \r\n¿Cómo se va a monitorear la salud y el bienestar de los participantes para minimizar daños? \r\n¿Cómo se va a proteger su privacidad? \r\n¿Pueden retirarse del estudio sin represalias? \r\n¿Cuáles son los planes de atención luego de terminado el estudio?\r\n¿Se les va a dar a los participantes cualquier nueva información (incluidos los resultados del estudio)?\r\n\r\n(Adaptado de (1) Emanuel E, Wendler D, Grady C. An ethical framework for biomedical research. In: Emanuel E et al. eds. The Oxford textbook of clinical research ethics. New York, NY: Oxford University Press; 2008: 123-135. (2) Emanuel E, Wendler D, Grady C. What makes clinical research ethical? JAMA 2000;283:2701-27711. (3) Emanuel E, Wendler D, Killen J, Grady C. What makes clinical research in developing countries ethical? The benchmarks of ethical research. JID 2004;189:930-937.)', 9, 1, 'CEP', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `frases`
--

CREATE TABLE IF NOT EXISTS `frases` (
`id_fr` bigint(20) unsigned NOT NULL,
  `fr_word` char(20) DEFAULT NULL,
  `fr_texto` text,
  `fr_idioma` char(5) DEFAULT 'pt_BR',
  `journal_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ged_documento`
--

CREATE TABLE IF NOT EXISTS `ged_documento` (
`id_doc` bigint(20) unsigned NOT NULL,
  `doc_dd0` char(7) DEFAULT NULL,
  `doc_tipo` char(5) DEFAULT NULL,
  `doc_ano` char(4) DEFAULT NULL,
  `doc_filename` text,
  `doc_status` char(1) DEFAULT NULL,
  `doc_data` int(11) DEFAULT NULL,
  `doc_hora` char(8) DEFAULT NULL,
  `doc_arquivo` text,
  `doc_extensao` char(4) DEFAULT NULL,
  `doc_size` float DEFAULT NULL,
  `doc_ativo` int(11) DEFAULT NULL,
  `doc_versao` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ged_documento_tipo`
--

CREATE TABLE IF NOT EXISTS `ged_documento_tipo` (
`id_doct` bigint(20) unsigned NOT NULL,
  `doct_nome` char(50) DEFAULT NULL,
  `doct_codigo` char(5) DEFAULT NULL,
  `doct_publico` int(11) DEFAULT NULL,
  `doct_avaliador` int(11) DEFAULT NULL,
  `doct_autor` int(11) DEFAULT NULL,
  `doct_restrito` int(11) DEFAULT NULL,
  `doct_ativo` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ged_documento_tipo`
--

INSERT INTO `ged_documento_tipo` (`id_doct`, `doct_nome`, `doct_codigo`, `doct_publico`, `doct_avaliador`, `doct_autor`, `doct_restrito`, `doct_ativo`) VALUES
(2, 'Template for Investigador', '00002', 1, 0, 0, 1, 1),
(3, 'Template for Committee', '00003', 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ic_noticia`
--

CREATE TABLE IF NOT EXISTS `ic_noticia` (
`id_nw` bigint(20) unsigned NOT NULL,
  `nw_dt_cadastro` bigint(20) DEFAULT NULL,
  `nw_secao` int(11) DEFAULT NULL,
  `nw_link` char(120) DEFAULT NULL,
  `nw_fonte` char(120) DEFAULT NULL,
  `nw_titulo` char(120) DEFAULT NULL,
  `nw_descricao` text,
  `nw_dt_de` bigint(20) DEFAULT NULL,
  `nw_dt_ate` bigint(20) DEFAULT NULL,
  `nw_log` char(10) DEFAULT NULL,
  `nw_ativo` smallint(6) DEFAULT NULL,
  `nw_ref` char(20) DEFAULT NULL,
  `nw_thema` char(7) DEFAULT NULL,
  `nw_idioma` char(5) DEFAULT NULL,
  `nw_journal` int(11) DEFAULT NULL,
  `journal_id` int(11) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `ic_noticia`
--

INSERT INTO `ic_noticia` (`id_nw`, `nw_dt_cadastro`, `nw_secao`, `nw_link`, `nw_fonte`, `nw_titulo`, `nw_descricao`, `nw_dt_de`, `nw_dt_ate`, `nw_log`, `nw_ativo`, `nw_ref`, `nw_thema`, `nw_idioma`, `nw_journal`, `journal_id`) VALUES
(1, 20151221, 1, '', '', '123', '123', 19000101, 19000101, NULL, NULL, '123', NULL, 'es', 0, 0),
(2, 20151203, 1, '', '', 'Indicaciones para revisor(a)', 'Estimado $name,&#13;\r\n&#13;\r\nRecientemente se presentÃ³ una nueva propuesta al comitÃ© y usted ha sido seleccionado como evaluador de este proyecto titulado &quot;$title&quot;.&#13;\r\n&#13;\r\nProtocol: &lt;B&gt;$protocol&lt;/B&gt;&#13;\r\n&#13;\r\nPara tener acceso a este proyecto, por favor ingrese al sistema. Si tiene cualquier pregunta o duda, contÃ¡ctenos a XXX@XXX&#13;\r\n&#13;\r\nSaludos cordiales,&#13;\r\n&#13;\r\n&lt;B&gt;ComitÃ© de Ã©tica&lt;/B&gt;&#13;\r\n&#13;\r\n$link', 19000101, 19000101, '', 1, 'indicate_email', '', 'es', 0, 0),
(3, 20150820, 1, '', '', 'Senha info', 'Prezado Investigador,&#13;\r\n&#13;\r\nConforme sua solicitaÃ§Ã£o foi encaminho um e-mail com sua senha.', 19000101, 19000101, '', 1, 'send_email_text', '', 'pt_BR', 0, 0),
(4, 20150820, 1, '', '', 'End of review process', 'Dear Investigador,&#13;\r\n&#13;\r\nThe review process of the protocol you submitted to this committee has finalized.&#13;\r\n&#13;\r\nPlease log into the system to access the official decision.&#13;\r\n&#13;\r\nRegards,&#13;\r\n&#13;\r\nEthics Committee', 19000101, 19000101, '', 1, 'communicate_investig', '', 'en_US', 0, 0),
(5, 20150820, 1, '', '', 'Your password information', 'Dear User,&#13;\r\n&#13;\r\nYour password has been sent to your e-mail address on file.&#13;\r\n&#13;\r\nRegards,', 19000101, 19000101, '', 1, 'send_email_content', '', 'es', 0, 0),
(6, 20151203, 1, '', '', 'Forgotten password information', 'Dear Investigator,&#13;\r\n&#13;\r\nAs requested, an email has been sent to you with your password information.&#13;\r\n&#13;\r\nRegards, best wishes!&#13;\r\n&#13;\r\nEthics Committee', 19000101, 19000101, '', 1, 'send_email_text', '', 'en_US', 0, 0),
(7, 20150611, 1, '', '', 'Â¿OlvidÃ³ su contraseÃ±a?', 'Estimado investigador,&#13;\r\n&#13;\r\nTal como lo solicitÃ³, se le ha enviado un email con la informaciÃ³n de su contraseÃ±a.&#13;\r\n&#13;\r\nSaludos,&#13;\r\n&#13;\r\nComitÃ© de Ã‰tica', 19000101, 19000101, '', 1, 'send_email_text', '', 'es', 0, 0),
(8, 20150611, 1, '', '', 'Instructions for reviewers', 'Dear $name,&#13;\r\n&#13;\r\nA new proposal was recently submitted to this committee and you have been selected as evaluator of the project titled. &quot;$title&quot;.&#13;\r\n&#13;\r\nProtocol: &lt;B&gt;$protocol&lt;/B&gt;&#13;\r\n&#13;\r\nTo access this project, please log into the system. If you have any questions or comments, please contact us at pahoerc@paho.org &#13;\r\n&#13;\r\nKind regards,&#13;\r\n&#13;\r\n&lt;B&gt;Ethics Committee&lt;/B&gt;&#13;\r\n&#13;\r\n$link', 19000101, 19000101, '', 1, 'indicate_email', '', 'en_US', 0, 0),
(9, 20150820, 1, '', '', 'FinalizaciÃ³n del proceso de revisiÃ³n', 'Estimado investigador,&#13;\r\n&#13;\r\nEl proceso de revisiÃ³n del protocolo presentado a este comitÃ© ha finalizado.&#13;\r\n&#13;\r\nPor favor entre al sistema para acceder la decisiÃ³n oficial.&#13;\r\n&#13;\r\nSaludos,&#13;\r\n&#13;\r\nComitÃ© de Ã‰tica', 19000101, 19000101, '', 1, 'communicate_investig', '', 'es', 0, 0),
(10, 20150820, 1, '', '', 'Protocol returned for corrections', 'Dear Investigator,&#13;\r\n&#13;\r\nYour proposal presents certain issues that we need you to correct. Please revise and resubmit when corrected.&#13;\r\n&#13;\r\nKind regards,&#13;\r\n&#13;\r\nEthics Committee', 19000101, 19000101, '', 1, 'communicate_return', '', 'en_US', 0, 0),
(11, 20150316, 1, '', '', 'ConfirmaciÃ³n de creaciÃ³n de usuario', 'Estimado $name,&#13;\r\n($email)&#13;\r\n&#13;\r\nMuchas gracias por la creaciÃ³n de su usuario. Haga clic acÃ¡: $link&#13;\r\n&#13;\r\nHasta luego,&#13;\r\n&#13;\r\nComitÃ© de Ã‰tica', 19000101, 19000101, '', 1, 'email_confirm_email', '', 'es', 0, 0),
(12, 20151014, 1, '', '', 'Protocolo asignado para su revisiõn', 'Estimado revisor, $name\r\n\r\nEl protocolo en menciõn le ha sido asignado para su revisiõn.\r\n\r\nPor favor ingrese al sistema ProEthos para acceder a este protocolo.\r\n\r\nSi tiene cualquier duda, por favor no dude en comunicarse con nosotros.\r\n\r\nSaludos', 19000101, 19000101, '', 1, 'survey_email', '', 'es', 1, 0),
(13, 20151014, 1, '', '', 'Protocol assigned for your review', 'Dear reviewer\r\n\r\nThe protocol here mentioned has been assigned to you for review.\r\n\r\nPlease go to the ProEthos system in order to access this protocol.\r\n\r\nIf you have any questions, please don/t hesitate to contact us.\r\n\r\nRegards,', 19000101, 19000101, '', 1, 'survey_email', '', 'en_US', 1, 0),
(14, 20150611, 1, '', '', 'Senha info', 'Estimado Investigador&#13;\r\n&#13;\r\nConforme a lo solicitado, se le esta enviando un correo con su contraseÃ±a.&#13;\r\n&#13;\r\nSaludos', 19000101, 19000101, '', 1, 'send_email_tex', '', 'es', 0, 0),
(15, 20151203, 1, '', '', 'Su protocolo ha sido presentado exitosamente', '$INFORMACION_DEL_PROTOCOLO&#13;\r\n&#13;\r\nEstimado investigador,&#13;\r\n&#13;\r\nEl protocolo arriba mencionado ha sido presentado a este comitÃ© exitosamente.&#13;\r\nLo mantendremos informado del avance del proceso de revisiÃ³n Ã©tica de su proyecto.&#13;\r\n&#13;\r\nSaludos,&#13;\r\n&#13;\r\n$INFORMACION_DEL_COMITE', 19000101, 19000101, '', 1, 'email_confirm_subm', '', 'es', 0, 0),
(16, 20150819, 1, '', '', 'Hay un nuevo protocolo presentado para revisiÃ³n', '$INFORMACION_DEL_PROTOCOLO&#13;\r\n&#13;\r\nUn nuevo protocolo ha sido presentado para revisiÃ³n.&#13;\r\n&#13;\r\nPara mayor informaciÃ³n, por favor ingrese al sistema.&#13;\r\n&#13;\r\nProEthos&#13;\r\n', 19000101, 19000101, '', 1, 'email_notify_subm', '', 'es', 0, 0),
(17, 20151014, 1, '', '', 'La acciÃ³n de seguimiento de su protocolo ha sido recibida', 'Estimado investigador,&#13;\r\n&#13;\r\nHemos recibido la acciÃ³n de seguimiento de su protocolo.&#13;\r\n&#13;\r\nLe mantendremos informando del avance de este proceso.&#13;\r\n&#13;\r\nSaludos,&#13;\r\n&#13;\r\nComitÃ© de Ã‰tica', 19000101, 19000101, '', 1, 'email_monitoreo_subm', '', 'es', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `instituion_action`
--

CREATE TABLE IF NOT EXISTS `instituion_action` (
`id_ia` bigint(20) unsigned NOT NULL,
  `ia_codigo` char(5) DEFAULT NULL,
  `ia_descricao` char(60) DEFAULT NULL,
  `ess_ativo` bigint(20) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE IF NOT EXISTS `institution` (
`id_i` bigint(20) unsigned NOT NULL,
  `i_name` char(200) NOT NULL,
  `i_name_2` char(100) NOT NULL,
  `i_name_3` char(100) NOT NULL,
  `i_address_1` char(200) NOT NULL,
  `i_address_2` char(200) NOT NULL,
  `i_address_3` char(200) NOT NULL,
  `i_city` char(20) NOT NULL,
  `i_fone` char(20) NOT NULL,
  `i_fax` char(20) NOT NULL,
  `i_email` char(100) NOT NULL,
  `i_cordenation` char(200) NOT NULL,
  `i_information` text NOT NULL,
  `i_system` char(5) NOT NULL,
  `i_opas_cod` char(20) NOT NULL,
  `i_date_format` char(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`id_i`, `i_name`, `i_name_2`, `i_name_3`, `i_address_1`, `i_address_2`, `i_address_3`, `i_city`, `i_fone`, `i_fax`, `i_email`, `i_cordenation`, `i_information`, `i_system`, `i_opas_cod`, `i_date_format`) VALUES
(1, 'CEP - PUCPR', '', '', 'Rua Imaculada Conceicao', 'Curitiba - Paran? - Brasil', 'CEP 80.000-000', 'Curitiba', '41 3271-0000', '', 'nep@pucpr.br', 'Nain', '', 'CEP', '55.001', 'DD/MM/AAAA');

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE IF NOT EXISTS `institutions` (
`id_it` bigint(20) unsigned NOT NULL,
  `it_codigo` char(7) NOT NULL,
  `it_nome` char(100) NOT NULL,
  `it_nome_abrev` char(100) NOT NULL,
  `it_tipo` char(1) NOT NULL,
  `it_estrangeiro` char(1) NOT NULL,
  `it_endereco` char(60) NOT NULL,
  `it_bairro` char(40) NOT NULL,
  `it_cidade` char(30) NOT NULL,
  `it_pais` char(7) NOT NULL,
  `it_status` char(1) NOT NULL,
  `it_id_fiscal` char(20) NOT NULL,
  `it_ativo` int(1) NOT NULL,
  `it_author` char(7) NOT NULL,
  `it_abreviatura` char(10) NOT NULL,
  `it_contato` char(30) NOT NULL,
  `it_telefone` char(15) NOT NULL,
  `it_fax` char(15) NOT NULL,
  `it_email` char(70) NOT NULL,
  `it_site` char(100) NOT NULL,
  `it_obs` text NOT NULL,
  `it_search` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id_it`, `it_codigo`, `it_nome`, `it_nome_abrev`, `it_tipo`, `it_estrangeiro`, `it_endereco`, `it_bairro`, `it_cidade`, `it_pais`, `it_status`, `it_id_fiscal`, `it_ativo`, `it_author`, `it_abreviatura`, `it_contato`, `it_telefone`, `it_fax`, `it_email`, `it_site`, `it_obs`, `it_search`) VALUES
(3, '0000003', 'Universidade Federal do ParanÃ¡', '', '2', '', 'Rua XV de Novembro, 1299', 'Centro', '', '0000001', 'V', '', 1, '0000017', 'UFPR', '', '', '', 'ufpr@ufpr.br', 'www.ufprbr', '', ''),
(2, '0000002', 'PontifÃ­cia Universidade CatÃ³lica do ParanÃ¡', '', '2', '', 'Rua Imaculada ConceiÃ§Ã£o, 1155', 'Bairro Prado Velho', '', '0000001', 'V', '', 1, '0000017', 'PUCPR', '', '', '', 'pucpr@pucpr.br', 'www.pucpr.br', '', ''),
(4, '0000004', 'Universidade de SÃ£o Paulo', '', '2', '', '', '', 'SÃ£o Paulo', '0000001', '', '', 1, '0000017', 'USP', '', '', '', '', 'www.usp.br', '', ''),
(5, '0000005', 'Universidade de Brasilia', '', '2', '', '', '', 'BrasÃ­lia', '0000001', '', '', 1, '0000017', 'UnB', '', '', '', '', 'www.unb.br', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `institution_action`
--

CREATE TABLE IF NOT EXISTS `institution_action` (
`id_ia` bigint(20) unsigned NOT NULL,
  `ia_codigo` char(5) DEFAULT NULL,
  `ia_descricao` char(60) DEFAULT NULL,
  `ia_ativo` bigint(20) DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `institution_action`
--

INSERT INTO `institution_action` (`id_ia`, `ia_codigo`, `ia_descricao`, `ia_ativo`) VALUES
(37, '00001', '#SPONSOR', 1),
(38, '00002', '#ASSISTENT', 1),
(39, '00003', '#CONTRIBUTOR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE IF NOT EXISTS `journals` (
`journal_id` bigint(20) unsigned NOT NULL,
  `title` char(200) DEFAULT NULL,
  `description` text,
  `path` char(30) DEFAULT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `enabled` smallint(6) DEFAULT NULL,
  `layout` char(4) DEFAULT NULL,
  `journal_issn` char(30) DEFAULT NULL,
  `jn_bgcor` char(8) DEFAULT NULL,
  `jn_id` char(60) DEFAULT NULL,
  `jn_http` char(100) DEFAULT NULL,
  `jn_email` char(100) DEFAULT NULL,
  `jn_send` char(1) DEFAULT NULL,
  `jn_noticia` char(1) DEFAULT NULL,
  `jn_suplemento` char(1) DEFAULT NULL,
  `jn_eissn` char(15) DEFAULT NULL,
  `jn_isbn` char(20) DEFAULT NULL,
  `jn_title` char(100) DEFAULT NULL,
  `jn_send_suspense` int(11) DEFAULT NULL,
  `editor` char(150) DEFAULT NULL,
  `assinatura` text,
  `jnl_html_cab` text,
  `jnl_google` char(20) DEFAULT NULL,
  `jnl_codidgo` char(7) DEFAULT NULL,
  `jnl_codigo` char(7) DEFAULT NULL,
  `jnl_journals_tipo` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nucleo`
--

CREATE TABLE IF NOT EXISTS `nucleo` (
`id_n` bigint(20) unsigned NOT NULL,
  `n_codigo` char(5) NOT NULL,
  `n_descricao` char(50) NOT NULL,
  `n_ativo` int(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nucleo`
--

INSERT INTO `nucleo` (`id_n`, `n_codigo`, `n_descricao`, `n_ativo`) VALUES
(1, 'CEP', 'Comite de Etica em Pesquisa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parecer_modelo`
--

CREATE TABLE IF NOT EXISTS `parecer_modelo` (
`id_pm` bigint(20) unsigned NOT NULL,
  `pm_name` char(30) NOT NULL,
  `pm_message` char(20) NOT NULL,
  `pm_type` char(3) NOT NULL,
  `pm_decision` char(3) NOT NULL,
  `pm_codigo` char(5) NOT NULL,
  `pm_approved` int(11) NOT NULL,
  `pm_0` int(11) NOT NULL,
  `pm_1` int(11) NOT NULL,
  `pm_2` int(11) NOT NULL,
  `pm_3` int(11) NOT NULL,
  `pm_4` int(11) NOT NULL,
  `pm_5` int(11) NOT NULL,
  `pm_6` int(11) NOT NULL,
  `pm_7` int(11) NOT NULL,
  `pm_8` int(11) NOT NULL,
  `pm_accompaniment` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `parecer_modelo`
--

INSERT INTO `parecer_modelo` (`id_pm`, `pm_name`, `pm_message`, `pm_type`, `pm_decision`, `pm_codigo`, `pm_approved`, `pm_0`, `pm_1`, `pm_2`, `pm_3`, `pm_4`, `pm_5`, `pm_6`, `pm_7`, `pm_8`, `pm_accompaniment`) VALUES
(1, 'Approved', '', 'PRO', 'APR', '00001', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1),
(2, 'Exempt', '', 'PRO', 'NOA', '00002', 2, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(3, 'Not Approved', '', 'PRO', 'NOT', '00003', -1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(4, 'Conditional Approval', '', 'PRO', 'PRO', '00004', -2, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1),
(5, 'Amendment Approved', '', 'AME', 'APR', '00005', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(6, 'Amendment Not Approved', '', 'AME', 'NOA', '00006', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(7, 'Expedited', '', 'PRO', 'APR', '00007', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `register_unit`
--

CREATE TABLE IF NOT EXISTS `register_unit` (
`id_ru` bigint(20) unsigned NOT NULL,
  `ru_codigo` char(5) NOT NULL,
  `ru_name` char(80) NOT NULL,
  `ru_obs` text NOT NULL,
  `ru_ativo` int(11) NOT NULL,
  `ru_type` char(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `register_unit`
--

INSERT INTO `register_unit` (`id_ru`, `ru_codigo`, `ru_name`, `ru_obs`, `ru_ativo`, `ru_type`) VALUES
(1, '00001', 'Registro Brasileiro de Ensaios ClÃ­nicos (Rebec)', '', 1, 'P'),
(2, '00002', 'Australian New Zealand Clinical Trials Registry (ANZCTR)', '', 1, 'P'),
(3, '00003', 'Chinese Clinical Trial Registry (ChiCTR)', '', 1, 'P'),
(4, '00004', 'EU Clinical Trials Register', '', 1, 'P'),
(5, '00005', 'Clinical Trials Registry - India (CTRI)', '', 1, 'P'),
(6, '00006', 'Cuban Public Registry of Clinical Trials (RPCEC)', '', 1, 'P'),
(7, '00007', 'German Clinical Trials Register (DRKS)', '', 1, 'P'),
(15, '00015', 'Universal Trial Number (UTN)', '', 1, 'P'),
(8, '00008', 'Iranian Registry of Clinical Trials (IRCT)', '', 1, 'P'),
(9, '00009', 'International Standard Randomised Controlled Trial Number (ISRCTN.org)', '', 1, 'P'),
(10, '00010', 'Japan Primary Registries Network (JPRN)', '', 1, 'P'),
(11, '00011', 'Netherlands National Trial Register (NTR)', '', 1, 'P'),
(12, '00012', 'Pan African Clinical Trial Registry (PACTR)', '', 1, 'P'),
(13, '00013', 'Sri Lanka Clinical Trials Registry (SLCTR)', '', 1, 'P'),
(14, '-----', ':: select ::', '', 1, 'P'),
(16, '00016', 'Clinical Trials.gov', '', 1, 'P'),
(17, '00017', 'Anvisa', '', 0, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `submit_manuscrito_field`
--

CREATE TABLE IF NOT EXISTS `submit_manuscrito_field` (
`id_sub` bigint(20) unsigned NOT NULL,
  `sub_pos` int(11) DEFAULT '0',
  `sub_field` text,
  `sub_css` text,
  `sub_descricao` char(80) DEFAULT NULL,
  `sub_ativo` int(11) DEFAULT '1',
  `sub_codigo` char(5) DEFAULT NULL,
  `sub_pag` char(5) DEFAULT NULL,
  `sub_obrigatorio` int(11) DEFAULT '0',
  `sub_editavel` int(11) DEFAULT '1',
  `sub_informacao` text,
  `sub_projeto_tipo` char(5) DEFAULT NULL,
  `sub_ordem` int(11) DEFAULT '0',
  `sub_pdf_title` char(60) DEFAULT NULL,
  `sub_pdf_mostra` int(11) DEFAULT '0',
  `sub_pdf_align` char(10) DEFAULT NULL,
  `sub_pdf_font_size` int(11) DEFAULT '12',
  `sub_pdf_space` int(11) DEFAULT '8',
  `sub_limite` char(7) DEFAULT NULL,
  `sub_caption` text,
  `sub_id` char(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `submit_manuscrito_tipo`
--

CREATE TABLE IF NOT EXISTS `submit_manuscrito_tipo` (
`id_sp` bigint(20) unsigned NOT NULL,
  `sp_codigo` char(5) DEFAULT NULL,
  `sp_descricao` char(50) DEFAULT NULL,
  `sp_ordem` int(11) DEFAULT '0',
  `sp_content` text,
  `sp_ativo` int(11) DEFAULT '1',
  `sp_nucleo` char(7) DEFAULT NULL,
  `sp_caption` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id_us` bigint(20) unsigned NOT NULL,
  `us_codigo` char(7) NOT NULL,
  `us_nome` char(100) NOT NULL,
  `us_login` char(100) NOT NULL,
  `us_nivel` int(11) NOT NULL,
  `us_status` char(1) NOT NULL,
  `us_senha` char(40) NOT NULL,
  `us_cracha` char(8) NOT NULL,
  `us_md5` int(11) NOT NULL,
  `us_niver` int(11) NOT NULL,
  `us_ativo` int(1) NOT NULL,
  `us_email` char(100) NOT NULL,
  `us_email_alt` char(100) NOT NULL,
  `us_email_ativo` int(11) NOT NULL,
  `us_endereco` text NOT NULL,
  `us_genero` char(1) NOT NULL,
  `us_instituition` char(100) NOT NULL,
  `us_empresa` char(7) NOT NULL,
  `us_country` char(7) NOT NULL,
  `us_confirmed` int(11) NOT NULL,
  `us_mother` char(100) NOT NULL,
  `us_nasc` int(11) NOT NULL,
  `us_perfil` char(30) NOT NULL,
  `us_cadastro` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_us`, `us_codigo`, `us_nome`, `us_login`, `us_nivel`, `us_status`, `us_senha`, `us_cracha`, `us_md5`, `us_niver`, `us_ativo`, `us_email`, `us_email_alt`, `us_email_ativo`, `us_endereco`, `us_genero`, `us_instituition`, `us_empresa`, `us_country`, `us_confirmed`, `us_mother`, `us_nasc`, `us_perfil`, `us_cadastro`) VALUES
(1, '0000001', 'ProEthos Admin', '0000001', 0, '', 'proethos', '0000001', 0, 0, 1, 'admin', '', 1, '', '', 'PAHO', '', '00040', 0, '', 0, '#RES#ADM#MST#MEM', 0),
(2, '0000002', 'Rene Faustino Gabriel Junior', '0000002', 0, '', 'Andre@19', '0000002', 0, 0, 1, 'renefgj@gmail.com', 'rene@sisdoc.com.br', 0, '', '', 'PUCPR', '', '00040', 0, '', 0, '', 20151221),
(3, '0000003', 'Rene Faustino Gabriel Junior (pucpr)', '0000003', 0, '', 'Andre@19', '0000003', 0, 0, 1, 'rene.gabriel@pucpr.br', 'rene@sisdoc.com.br', 0, '', '', 'PUCPR', '', '00040', 0, '', 0, '#RES#MEM', 20151221);

-- --------------------------------------------------------

--
-- Table structure for table `usuario_perfil`
--

CREATE TABLE IF NOT EXISTS `usuario_perfil` (
`id_usp` bigint(20) unsigned NOT NULL,
  `usp_codigo` char(4) NOT NULL,
  `usp_descricao` char(50) NOT NULL,
  `usp_ativo` int(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `usuario_perfil`
--

INSERT INTO `usuario_perfil` (`id_usp`, `usp_codigo`, `usp_descricao`, `usp_ativo`) VALUES
(6, '#ADM', 'Admin', 1),
(7, '#COO', 'Coordenador', 1),
(8, '#SCR', 'Secretary', 1),
(9, '#RES', 'Investigador', 1),
(10, '#MEM', 'Member of committee', 1),
(11, '#ADC', 'Ad Hoc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuario_perfis_ativo`
--

CREATE TABLE IF NOT EXISTS `usuario_perfis_ativo` (
`id_up` bigint(20) unsigned NOT NULL,
  `up_perfil` char(4) DEFAULT NULL,
  `up_usuario` char(7) DEFAULT NULL,
  `up_data` bigint(20) DEFAULT NULL,
  `up_data_end` bigint(20) DEFAULT NULL,
  `up_ativo` bigint(20) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `usuario_perfis_ativo`
--

INSERT INTO `usuario_perfis_ativo` (`id_up`, `up_perfil`, `up_usuario`, `up_data`, `up_data_end`, `up_ativo`) VALUES
(1, '#MAS', '0000001', 20120906, 19000101, 1),
(2, '#MEM', '0000001', 20120906, 19000101, 1),
(3, '#COO', '0000001', 20120906, 19000101, 1),
(4, '#MEM', '0000002', 20160523, 19000101, 1),
(5, '#MEM', '0000003', 20160523, 19000101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_committee`
--

CREATE TABLE IF NOT EXISTS `_committee` (
`id_cm` bigint(20) unsigned NOT NULL,
  `cm_name` char(100) NOT NULL,
  `cm_site` char(150) NOT NULL,
  `cm_admin_name` char(100) NOT NULL,
  `cm_admin_email` char(100) NOT NULL,
  `cm_admin_email_tipo` char(5) NOT NULL,
  `cm_admin_email_pass` char(30) NOT NULL,
  `cm_admin_email_smtp` char(100) NOT NULL,
  `cm_email_replay` char(100) NOT NULL,
  `cm_admin_email_port` char(10) NOT NULL,
  `cm_committe` char(8) NOT NULL,
  `cm_admin_key` char(40) NOT NULL,
  `cm_admin_key_harveting` char(40) NOT NULL,
  `cm_charcode` char(40) NOT NULL,
  `cm_address` text NOT NULL,
  `cm_city` char(40) NOT NULL,
  `cm_country` char(40) NOT NULL,
  `cm_phone` char(40) NOT NULL,
  `cm_type` char(4) DEFAULT NULL,
  `cm_language` char(5) DEFAULT NULL,
  `cm_lat` char(10) NOT NULL,
  `cm_long` char(10) NOT NULL,
  `cm_niec` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `_committee`
--

INSERT INTO `_committee` (`id_cm`, `cm_name`, `cm_site`, `cm_admin_name`, `cm_admin_email`, `cm_admin_email_tipo`, `cm_admin_email_pass`, `cm_admin_email_smtp`, `cm_email_replay`, `cm_admin_email_port`, `cm_committe`, `cm_admin_key`, `cm_admin_key_harveting`, `cm_charcode`, `cm_address`, `cm_city`, `cm_country`, `cm_phone`, `cm_type`, `cm_language`, `cm_lat`, `cm_long`, `cm_niec`) VALUES
(1, 'Comitê de Ética em Pesquisa da PUCPR', 'http://www.pucpr.br/cep', 'Comitê de Ética da PUCPR', 'rene@sisdoc.com.br', 'AUTH', '448545ct', 'mail.sisdoc.com.br', 'nep@pucpr.br', '', 'PUCPR', '0', '', 'utf-8', 'Rua Imaculada Conceição, 1180\r\nPrado Velho - Curitiba - Paraná\r\nFone: +55(41)3271.2103', 'Curitiba', 'Brazil', '41 8811.9061', 'CEP', 'en_US', '-25.450944', '-49.254066', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `_messages`
--

CREATE TABLE IF NOT EXISTS `_messages` (
`id_msg` bigint(20) unsigned NOT NULL,
  `msg_pag` text,
  `msg_language` char(5) NOT NULL,
  `msg_field` char(60) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_ativo` int(11) NOT NULL,
  `msg_update` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8734 ;

--
-- Dumping data for table `_messages`
--

INSERT INTO `_messages` (`id_msg`, `msg_pag`, `msg_language`, `msg_field`, `msg_content`, `msg_ativo`, `msg_update`) VALUES
(3521, '', 'pt_BR', 'save', 'Save', 1, 0),
(3522, '', 'en_US', 'save', 'Save', 1, 0),
(3523, '', 'es', 'save', 'Guardar', 1, 0),
(3524, '', 'fr', 'save', 'Sauver', 1, 0),
(3525, '', 'pt_BR', 'titulo', 'Titulo Protocolo', 1, 0),
(3526, '', 'en_US', 'titulo', 'Decision type', 1, 20160520),
(3527, '', 'es', 'titulo', 'Tipo de decisiÃ³n', 1, 20160520),
(3528, '', 'fr', 'titulo', 'Titre du Protocole', 1, 0),
(3529, '', 'pt_BR', 'logout', 'Logout', 1, 0),
(3530, '', 'en_US', 'logout', 'Logout', 1, 0),
(3531, '', 'es', 'logout', 'Salir', 1, 0),
(3532, '', 'fr', 'logout', 'DÃ©connecter', 1, 0),
(3533, '', 'pt_BR', 'home', 'Home', 1, 0),
(3534, '', 'en_US', 'home', 'Home', 1, 0),
(3535, '', 'es', 'home', 'Home', 1, 0),
(3536, '', 'fr', 'home', 'Accueil', 1, 0),
(3537, '', 'pt_BR', 'research', 'Resumo', 1, 0),
(3538, '', 'en_US', 'research', 'Summary', 1, 0),
(3539, '', 'es', 'research', 'Resumen', 1, 20160520),
(3540, '', 'fr', 'research', 'Sommaire', 1, 0),
(3541, '', 'pt_BR', 'member_committee', 'ComitÃª', 1, 0),
(3542, '', 'en_US', 'member_committee', 'Committee profile', 1, 0),
(3543, '', 'es', 'member_committee', 'Perfil de comitÃ©', 1, 20160520),
(3544, '', 'fr', 'member_committee', 'Profil du ComitÃ©', 1, 0),
(3545, '', 'pt_BR', 'my_account', 'Minha conta', 1, 0),
(3546, '', 'en_US', 'my_account', 'My account', 1, 20160520),
(3547, '', 'es', 'my_account', 'Mi cuenta', 1, 0),
(3548, '', 'fr', 'my_account', 'Mon Compte', 1, 0),
(3549, '', 'pt_BR', 'menu_faq', 'Perguntas FreqÃ¼entes', 1, 0),
(3550, '', 'en_US', 'menu_faq', 'Frequently Asked Questions', 1, 0),
(3551, '', 'es', 'menu_faq', 'Preguntas frecuentes', 1, 0),
(3552, '', 'fr', 'menu_faq', 'FAQ', 1, 0),
(3553, '', 'pt_BR', 'message', 'Mensagens', 1, 0),
(3554, '', 'en_US', 'message', 'Messages', 1, 0),
(3555, '', 'es', 'message', 'Mensaje', 1, 0),
(3556, '', 'fr', 'message', 'Messages', 1, 0),
(3557, '', 'pt_BR', 'resume', 'Resumo dos projetos', 1, 0),
(3558, '', 'en_US', 'resume', 'Summary of protocols for investigators', 1, 20160520),
(3559, '', 'es', 'resume', 'Resumen de protocolos del investigador', 1, 20160520),
(3560, '', 'fr', 'resume', 'Sommaire des projects', 1, 0),
(3561, '', 'pt_BR', 'prot_in_submission', 'Em submissÃ£o', 1, 0),
(3562, '', 'en_US', 'prot_in_submission', 'Pending to submit', 1, 20160520),
(3563, '', 'es', 'prot_in_submission', 'Pendientes de presentar', 1, 20160520),
(3564, '', 'fr', 'prot_in_submission', 'Documents en attente', 1, 0),
(3565, '', 'pt_BR', 'prot_submitted', 'Submetidos', 1, 0),
(3566, '', 'en_US', 'prot_submitted', 'Submitted', 1, 20160520),
(3567, '', 'es', 'prot_submitted', 'Presentados', 1, 20160520),
(3568, '', 'fr', 'prot_submitted', 'Soumit', 1, 0),
(3569, '', 'pt_BR', 'prot_in_analysis', 'Em anÃ¡lise pelo comitÃª', 1, 0),
(3570, '', 'en_US', 'prot_in_analysis', 'In committee review', 1, 20160520),
(3571, '', 'es', 'prot_in_analysis', 'En revisiÃ³n del comitÃ©', 1, 20160520),
(3572, '', 'fr', 'prot_in_analysis', 'En Ã©valuation', 1, 0),
(3573, '', 'pt_BR', 'prot_rejected', 'Projetos pendentes', 1, 0),
(3574, '', 'en_US', 'prot_rejected', 'Returned', 1, 20160520),
(3575, '', 'es', 'prot_rejected', 'Devueltos', 1, 20160520),
(3576, '', 'fr', 'prot_rejected', 'Non approuvÃ©', 1, 0),
(3577, '', 'pt_BR', 'prot_aproved', 'Projetos aprovados', 1, 0),
(3578, '', 'en_US', 'prot_aproved', 'Decision issued', 1, 20160520),
(3579, '', 'es', 'prot_aproved', 'DecisiÃ³n emitida', 1, 20160520),
(3580, '', 'fr', 'prot_aproved', 'ApprouvÃ©', 1, 0),
(3581, '', 'pt_BR', 'submit_new_project', 'Submeter novo projeto', 1, 0),
(3582, '', 'en_US', 'submit_new_project', 'New project submission', 1, 0),
(3583, '', 'es', 'submit_new_project', 'Presentar protocolo nuevo', 1, 20160520),
(3584, '', 'fr', 'submit_new_project', 'PrÃ©sentation dÂ´un nouveau projet', 1, 0),
(3585, '', 'pt_BR', 'committee_member', 'Membro do ComitÃª', 1, 0),
(3586, '', 'en_US', 'committee_member', 'Committee member', 1, 20160520),
(3587, '', 'es', 'committee_member', 'Miembro del comitÃ©', 1, 0),
(3588, '', 'fr', 'committee_member', 'Membre du ComitÃ©', 1, 0),
(3589, '', 'pt_BR', 'protocolo', 'Protocolo', 1, 0),
(3590, '', 'en_US', 'protocolo', 'Protocol ID', 1, 0),
(3591, '', 'es', 'protocolo', 'No. de Protocolo', 1, 20160520),
(3592, '', 'fr', 'protocolo', 'Identification du Protocole', 1, 0),
(3593, '', 'pt_BR', 'data', 'Data', 1, 0),
(3594, '', 'en_US', 'data', 'Date', 1, 0),
(3595, '', 'es', 'data', 'Fecha', 1, 0),
(3596, '', 'fr', 'data', 'Date', 1, 0),
(3597, '', 'pt_BR', 'status', 'Status', 1, 0),
(3598, '', 'en_US', 'status', 'Status', 1, 0),
(3599, '', 'es', 'status', 'Estado', 1, 0),
(3600, '', 'fr', 'status', 'ProgrÃ¨s', 1, 0),
(3601, '', 'pt_BR', 'name', 'Nome completo', 1, 0),
(3602, '', 'en_US', 'name', 'Full name', 1, 20160520),
(3603, '', 'es', 'name', 'Nombre completo', 1, 0),
(3604, '', 'fr', 'name', 'Nom et PrÃ©nom', 1, 0),
(3605, '', 'pt_BR', 'login', 'Login', 1, 0),
(3606, '', 'en_US', 'login', 'Login', 1, 0),
(3607, '', 'es', 'login', 'Usuario', 1, 0),
(3608, '', 'fr', 'login', 'Login', 1, 0),
(3609, '', 'pt_BR', 'email', 'E-Mail', 1, 0),
(3610, '', 'en_US', 'email', 'User&#x2F;s e-mail', 1, 20160520),
(3611, '', 'es', 'email', 'Correo electrÃ³nico del usuario', 1, 20160520),
(3612, '', 'fr', 'email', 'E-Mail', 1, 0),
(3613, '', 'pt_BR', 'email_alt', 'email alternativo', 1, 0),
(3614, '', 'en_US', 'email_alt', 'Alternative e-mail', 1, 0),
(3615, '', 'es', 'email_alt', 'E-mail alternativo', 1, 0),
(3616, '', 'fr', 'email_alt', 'E-Mail alternatif', 1, 0),
(3617, '', 'pt_BR', 'senha', 'senha', 1, 0),
(3618, '', 'en_US', 'senha', 'Password', 1, 0),
(3619, '', 'es', 'senha', 'ContraseÃ±a', 1, 0),
(3620, '', 'fr', 'senha', 'Mot de pass', 1, 0),
(3621, '', 'pt_BR', 'top_submit_menu_1', 'InformaÃ§Ãµes preliminares', 1, 0),
(3622, '', 'en_US', 'top_submit_menu_1', 'Preliminary information', 1, 20160520),
(3623, '', 'es', 'top_submit_menu_1', 'InformaciÃ³n preliminar', 1, 0),
(3624, '', 'fr', 'top_submit_menu_1', 'Informations PrÃ©liminaires', 1, 0),
(3625, '', 'pt_BR', 'top_submit_menu_2', 'Sobre o projeto', 1, 0),
(3626, '', 'en_US', 'top_submit_menu_2', 'About the project', 1, 0),
(3627, '', 'es', 'top_submit_menu_2', 'Sobre el proyecto', 1, 0),
(3628, '', 'fr', 'top_submit_menu_2', 'Au Sujet du Projet', 1, 0),
(3629, '', 'pt_BR', 'top_submit_menu_3', 'Estudo clÃ­nico', 1, 0),
(3630, '', 'en_US', 'top_submit_menu_3', 'Procedures and outcomes', 1, 20160520),
(3631, '', 'es', 'top_submit_menu_3', 'Procedimientos y resultados', 1, 0),
(3632, '', 'fr', 'top_submit_menu_3', 'Objectifs et RÃ©sultats', 1, 0),
(3633, '', 'pt_BR', 'top_submit_menu_4', 'Dados adicionais', 1, 0),
(3634, '', 'en_US', 'top_submit_menu_4', 'Additional information', 1, 20160520),
(3635, '', 'es', 'top_submit_menu_4', 'InformaciÃ³n adicional', 1, 0),
(3636, '', 'fr', 'top_submit_menu_4', 'Informations complÃ©mentaires', 1, 0),
(3637, '', 'pt_BR', 'top_submit_menu_5', 'Anexos, cronograma&lt;BR&gt;e orÃ§amento', 1, 20160520),
(3638, '', 'en_US', 'top_submit_menu_5', 'Bibliography', 1, 20160520),
(3639, '', 'es', 'top_submit_menu_5', 'Bibliografia', 1, 20160520),
(3640, '', 'fr', 'top_submit_menu_5', 'Bibliographie', 1, 20160520),
(3641, '', 'pt_BR', 'top_submit_menu_6', 'Attached files', 1, 20160520),
(3642, '', 'en_US', 'top_submit_menu_6', 'Attached files', 1, 20160520),
(3643, '', 'es', 'top_submit_menu_6', 'Archivos adjuntos', 1, 20160520),
(3644, '', 'fr', 'top_submit_menu_6', 'Annexes', 1, 20160520),
(3645, '', 'pt_BR', 'protocol_submit', 'Submeter o projeto', 1, 0),
(3646, '', 'en_US', 'protocol_submit', 'Submit protocol', 1, 20160520),
(3647, '', 'es', 'protocol_submit', 'EnvÃ­e el protocolo', 1, 20160520),
(3648, '', 'fr', 'protocol_submit', 'Soumettre un projet', 1, 0),
(3649, '', 'pt_BR', 'yes', 'Sim', 1, 0),
(3650, '', 'en_US', 'yes', 'Yes', 1, 0),
(3651, '', 'es', 'yes', 'Si', 1, 0),
(3652, '', 'fr', 'yes', 'Oui', 1, 0),
(3653, '', 'pt_BR', 'no', 'NÃ£o', 1, 0),
(3654, '', 'en_US', 'no', 'No', 1, 0),
(3655, '', 'es', 'no', 'No', 1, 0),
(3656, '', 'fr', 'no', 'Non', 1, 0),
(3657, '', 'pt_BR', 'q_human', 'InvestigaÃ§Ã£o envolvendo seres humanos', 1, 0),
(3658, '', 'en_US', 'q_human', 'Research involving humans', 1, 20160520),
(3659, '', 'es', 'q_human', 'InvestigaciÃ³n con humanos', 1, 0),
(3660, '', 'fr', 'q_human', 'Recherche avec des Ãªtres humains', 1, 0),
(3661, '', 'pt_BR', 'q_clinic_study', 'Estudo ClÃ­nico', 1, 0),
(3662, '', 'en_US', 'q_clinic_study', 'Clinical trial', 1, 20160520),
(3663, '', 'es', 'q_clinic_study', 'Ensayo clÃ­nico', 1, 0),
(3664, '', 'fr', 'q_clinic_study', 'Essai Clinique', 1, 0),
(3665, '', 'pt_BR', 'q_title_main', 'TÃ­tulo cientÃ­fico', 1, 0),
(3666, '', 'en_US', 'q_title_main', 'Scientific title', 1, 20160520),
(3667, '', 'es', 'q_title_main', 'TÃ­tulo cientÃ­fico', 1, 0),
(3668, '', 'fr', 'q_title_main', 'Titre scientifique', 1, 0),
(3669, '', 'pt_BR', 'doc_1_titulo_public', 'TÃ­tulo Publico', 1, 0),
(3670, '', 'en_US', 'doc_1_titulo_public', 'Public title', 1, 20160520),
(3671, '', 'es', 'doc_1_titulo_public', 'TÃ­tulo pÃºblico', 1, 0),
(3672, '', 'fr', 'doc_1_titulo_public', 'Titre Public', 1, 0),
(3673, '', 'pt_BR', 'main_research', 'Autor principal do projeto', 1, 0),
(3674, '', 'en_US', 'main_research', 'Principal investigator', 1, 20160520),
(3675, '', 'es', 'main_research', 'Investigador principal', 1, 0),
(3676, '', 'fr', 'main_research', 'EnquÃªteur principal', 1, 0),
(3677, '', 'pt_BR', 'save_and_next', 'salvar e avanÃ§ar', 1, 0),
(3678, '', 'en_US', 'save_and_next', 'Save and next', 1, 20160520),
(3679, '', 'es', 'save_and_next', 'Guardar y siguiente', 1, 0),
(3680, '', 'fr', 'save_and_next', 'Enregistrer et Suivant', 1, 0),
(3681, '', 'pt_BR', 'pages', 'PÃ¡ginas', 1, 0),
(3682, '', 'en_US', 'pages', 'Page', 1, 0),
(3683, '', 'es', 'pages', 'PÃ¡gina', 1, 0),
(3684, '', 'fr', 'pages', 'Pages', 1, 0),
(3685, '', 'pt_BR', '#yes', 'Yes', 1, 0),
(3686, '', 'en_US', '#yes', 'Yes', 1, 0),
(3687, '', 'es', '#yes', 'Si', 1, 0),
(3688, '', 'fr', '#yes', 'Oui', 1, 0),
(3689, '', 'pt_BR', '#no', 'No', 1, 0),
(3690, '', 'en_US', '#no', 'No', 1, 0),
(3691, '', 'es', '#no', 'No', 1, 0),
(3692, '', 'fr', '#no', 'Non', 1, 0),
(3693, '', 'pt_BR', '', '#save_next_inf', 1, 0),
(3694, '', 'en_US', '', 'Save and Next', 1, 0),
(3695, '', 'es', '', 'Guardar y siguiente', 1, 0),
(3696, '', 'fr', '', 'Sauvegarder et prochain', 1, 0),
(3697, '', 'pt_BR', '#acao', 'Acao', 1, 0),
(3698, '', 'en_US', '#acao', 'Action', 1, 0),
(3699, '', 'es', '#acao', 'Ejecutar', 1, 0),
(3700, '', 'fr', '#acao', 'Action', 1, 0),
(3701, '', 'pt_BR', 'acao', 'AÃ§Ã£o', 1, 0),
(3702, '', 'en_US', 'acao', 'Action', 1, 0),
(3703, '', 'es', 'acao', 'AcciÃ³n', 1, 0),
(3704, '', 'fr', 'acao', 'Action', 1, 0),
(7860, '', 'fr', 'PAHO-FOOT', 'PAHO-FOOT', 1, 0),
(7859, '', 'es', 'PAHO-FOOT', 'OrganizaciÃ³n Panamericana de la Salud', 1, 20160520),
(7858, '', 'en_US', 'PAHO-FOOT', 'Pan American Health Organization', 1, 20160520),
(7857, '', 'pt_BR', 'PAHO-FOOT', 'OrganizaÃ§Ã£o Pan-americana de SaÃºde', 1, 0),
(3709, '', 'pt_BR', 'goals', 'Objetivos', 1, 0),
(3710, '', 'en_US', 'goals', 'Goals', 1, 0),
(3711, '', 'es', 'goals', 'Objetivos', 1, 0),
(3712, '', 'fr', 'goals', 'Objectifs', 1, 0),
(7864, '', 'fr', '_and_', '_and_', 1, 0),
(7863, '', 'es', '_and_', 'y la', 1, 20160520),
(7862, '', 'en_US', '_and_', 'and the', 1, 20160520),
(7861, '', 'pt_BR', '_and_', 'e a', 1, 0),
(7856, '', 'fr', 'is_collaboration', 'is_collaboration', 1, 0),
(7855, '', 'es', 'is_collaboration', 'es una colaboraciÃ³n entre la', 1, 0),
(7854, '', 'en_US', 'is_collaboration', 'is a collaboration between the', 1, 0),
(7853, '', 'pt_BR', 'is_collaboration', 'Ã© uma colaboraÃ§Ã£o entre a', 1, 0),
(7852, '', 'fr', 'OPS-PAHO', '', 1, 0),
(7851, '', 'es', 'OPS-PAHO', 'OPS', 1, 20160520),
(7850, '', 'en_US', 'OPS-PAHO', 'PAHO', 1, 20160520),
(7845, '', 'pt_BR', 'file_inf', 'file_inf', 1, 0),
(7846, '', 'en_US', 'file_inf', 'file_inf', 1, 0),
(7847, '', 'es', 'file_inf', 'InformaciÃ³n del archivo', 1, 20160520),
(7848, '', 'fr', 'file_inf', 'file_inf', 1, 0),
(7849, '', 'pt_BR', 'OPS-PAHO', '', 1, 0),
(7715, '', 'es', 'months', 'meses', 1, 0),
(7714, '', 'en_US', 'months', 'months', 1, 0),
(7713, '', 'pt_BR', 'months', 'months', 1, 0),
(7712, '', 'fr', 'in_taks', 'in_taks ', 1, 0),
(3733, '', 'pt_BR', 'login_cab', 'Login', 1, 20160520),
(3734, '', 'en_US', 'login_cab', 'Login', 1, 0),
(3735, '', 'es', 'login_cab', 'Inicio de sesiÃ³n', 1, 20160520),
(3736, '', 'fr', 'login_cab', 'Se Connecter', 1, 0),
(3737, '', 'pt_BR', 'password', 'Senha', 1, 0),
(3738, '', 'en_US', 'password', 'Password', 1, 0),
(3739, '', 'es', 'password', 'ContraseÃ±a', 1, 0),
(3740, '', 'fr', 'password', 'Mot de Passe', 1, 0),
(7774, '', 'en_US', 'Presupuesto', 'Budget', 1, 20160520),
(7773, '', 'pt_BR', 'Presupuesto', 'Presupuesto', 1, 0),
(3745, '', 'pt_BR', 'not_loged', 'NÃ£o conectado', 1, 0),
(3746, '', 'en_US', 'not_loged', 'Not logged in', 1, 0),
(3747, '', 'es', 'not_loged', 'No ha iniciado la sesiÃ³n', 1, 0),
(3748, '', 'fr', 'not_loged', 'Non connectÃ©', 1, 0),
(3749, '', 'pt_BR', 'user_new', 'Quero me cadastrar no sistema', 1, 0),
(3750, '', 'en_US', 'user_new', 'New user', 1, 0),
(3751, '', 'es', 'user_new', 'Usuario nuevo', 1, 0),
(3752, '', 'fr', 'user_new', 'Nouvel utilisateur', 1, 0),
(3753, '', 'pt_BR', 'about_user', 'InformaÃ§Ãµes do usuÃ¡rio', 1, 0),
(3754, '', 'en_US', 'about_user', 'User info', 1, 0),
(3755, '', 'es', 'about_user', 'InformaciÃ³n del usuario', 1, 0),
(3756, '', 'fr', 'about_user', 'Informations de lÂ´utilisateur', 1, 0),
(3757, '', 'pt_BR', 'new_user_info', 'Cadastro de novo usuÃ¡rio', 1, 0),
(3758, '', 'en_US', 'new_user_info', 'Register as a new user', 1, 0),
(3759, '', 'es', 'new_user_info', 'InformaciÃ³n del usuario nuevo', 1, 20160520),
(3760, '', 'fr', 'new_user_info', 'Inscrivez-vous comme nouvel utilisateur', 1, 0),
(3761, '', 'pt_BR', 'academic_information', 'InstituiÃ§Ã£o de vÃ­nculo', 1, 0),
(3762, '', 'en_US', 'academic_information', 'Institution of affiliation', 1, 0),
(3763, '', 'es', 'academic_information', 'InstituciÃ³n a la que pertenece', 1, 0),
(3764, '', 'fr', 'academic_information', 'Institution dÂ´affiliation', 1, 0),
(3765, '', 'pt_BR', 'institution', 'Institution', 1, 0),
(3766, '', 'en_US', 'institution', 'Institution', 1, 0),
(3767, '', 'es', 'institution', 'InstituciÃ³n', 1, 0),
(3768, '', 'fr', 'institution', 'Institution', 1, 0),
(3769, '', 'pt_BR', 'new_user_insert', 'Nova conta de usuÃ¡rio', 1, 0),
(3770, '', 'en_US', 'new_user_insert', 'New user account', 1, 0),
(3771, '', 'es', 'new_user_insert', 'Nueva cuenta de usuario', 1, 0),
(3772, '', 'fr', 'new_user_insert', 'Nouveau compte utilisateur', 1, 0),
(3773, '', 'pt_BR', 'abstract', 'Resumo', 1, 0),
(3774, '', 'en_US', 'abstract', 'Summary', 1, 20160520),
(3775, '', 'es', 'abstract', 'Resumen', 1, 0),
(3776, '', 'fr', 'abstract', 'RÃ©sumÃ©', 1, 0),
(3777, '', 'pt_BR', '@abstract', 'Resumo', 1, 0),
(3778, '', 'en_US', '@abstract', 'Abstract', 1, 0),
(3779, '', 'es', '@abstract', 'Resumen', 1, 20160520),
(3780, '', 'fr', '@abstract', 'RÃ©sumÃ©', 1, 0),
(3781, '', 'pt_BR', 'in_submit', 'Submetido', 1, 0),
(3782, '', 'en_US', 'in_submit', 'Submitted', 1, 0),
(3783, '', 'es', 'in_submit', 'Presentado', 1, 0),
(3784, '', 'fr', 'in_submit', 'Soumis', 1, 0),
(3785, '', 'pt_BR', 'protocols', 'Protocolos', 1, 0),
(3786, '', 'en_US', 'protocols', 'Protocols', 1, 0),
(3787, '', 'es', 'protocols', 'Protocolos', 1, 0),
(3788, '', 'fr', 'protocols', 'Protocols', 1, 0),
(3789, '', 'pt_BR', 'system_message', 'system_message', 1, 0),
(3790, '', 'en_US', 'system_message', 'System message', 1, 20160520),
(3791, '', 'es', 'system_message', 'Mensaje del sistema', 1, 0),
(3792, '', 'fr', 'system_message', 'Messages du systÃ¨me', 1, 20160520),
(3793, '', 'pt_BR', 'admin_submission', 'Campos da Ã¡rea de submissÃ£o', 1, 0),
(3794, '', 'en_US', 'admin_submission', 'Submission fields of protocols', 1, 20160520),
(3795, '', 'es', 'admin_submission', 'Campos de presentaciÃ³n de los protocolos', 1, 20160520),
(3796, '', 'fr', 'admin_submission', 'Champs de soumission', 1, 0),
(3797, '', 'pt_BR', 'field', 'Campo', 1, 0),
(3798, '', 'en_US', 'field', 'Field', 1, 0),
(3799, '', 'es', 'field', 'Campo', 1, 0),
(3800, '', 'fr', 'field', 'domaine', 1, 0),
(3801, '', 'pt_BR', 'description', 'DescriÃ§Ã£o', 1, 0),
(3802, '', 'en_US', 'description', 'Description', 1, 0),
(3803, '', 'es', 'description', 'DescripciÃ³n', 1, 0),
(3804, '', 'fr', 'description', 'Description', 1, 0),
(3805, '', 'pt_BR', 'pag', 'PÃ¡g', 1, 0),
(3806, '', 'en_US', 'pag', 'Page', 1, 20160520),
(3807, '', 'es', 'pag', 'PÃ¡g', 1, 0),
(3808, '', 'fr', 'pag', 'Pag', 1, 0),
(3809, '', 'pt_BR', 'order', 'Ordem', 1, 0),
(3810, '', 'en_US', 'order', 'Order', 1, 0),
(3811, '', 'es', 'order', 'Orden', 1, 0),
(3812, '', 'fr', 'order', 'Ordre', 1, 0),
(3813, '', 'pt_BR', 'ativo', 'Ativo', 1, 0),
(3814, '', 'en_US', 'ativo', 'Active', 1, 0),
(3815, '', 'es', 'ativo', 'Activo', 1, 0),
(3816, '', 'fr', 'ativo', 'Actif', 1, 0),
(3817, '', 'pt_BR', 'codigo', 'CÃ³digo', 1, 0),
(3818, '', 'en_US', 'codigo', 'Code', 1, 0),
(3819, '', 'es', 'codigo', 'CÃ³digo', 1, 0),
(3820, '', 'fr', 'codigo', 'Code', 1, 0),
(3821, '', 'pt_BR', 'cep_submit_manuscrito_field', 'cep_submit_manuscrito_field', 1, 0),
(3822, '', 'en_US', 'cep_submit_manuscrito_field', 'Protocol fields', 1, 0),
(3823, '', 'es', 'cep_submit_manuscrito_field', 'Campos del protocolo', 1, 20160520),
(3824, '', 'fr', 'cep_submit_manuscrito_field', 'Domaines de cette proposition', 1, 0),
(3825, '', 'pt_BR', 'ordem', 'Ordem', 1, 0),
(3826, '', 'en_US', 'ordem', 'Order', 1, 0),
(3827, '', 'es', 'ordem', 'Orden', 1, 0),
(3828, '', 'fr', 'ordem', 'Classement', 1, 20160520),
(3829, '', 'pt_BR', 'align', 'Alinhar', 1, 0),
(3830, '', 'en_US', 'align', 'Align', 1, 0),
(3831, '', 'es', 'align', 'Alinear', 1, 0),
(3832, '', 'fr', 'align', 'Aligner', 1, 0),
(3833, '', 'pt_BR', 'space', 'space', 1, 0),
(3834, '', 'en_US', 'space', 'Space', 1, 0),
(3835, '', 'es', 'space', 'Espacio', 1, 0),
(3836, '', 'fr', 'space', 'Espace', 1, 0),
(3837, '', 'pt_BR', 'limite_words', 'Limite de palavras', 1, 0),
(3838, '', 'en_US', 'limite_words', 'Word limit', 1, 0),
(3839, '', 'es', 'limite_words', 'Limite de palabras', 1, 0),
(3840, '', 'fr', 'limite_words', 'Limite de mot', 1, 0),
(3841, '', 'pt_BR', 'pagina', 'PÃ¡gina', 1, 0),
(3842, '', 'en_US', 'pagina', 'Page', 1, 0),
(3843, '', 'es', 'pagina', 'PÃ¡gina', 1, 0),
(3844, '', 'fr', 'pagina', 'Page', 1, 0),
(3845, '', 'pt_BR', 'pagina	', 'pagina	', 1, 0),
(3846, '', 'en_US', 'pagina	', 'Page', 1, 0),
(3847, '', 'es', 'pagina	', 'PÃ¡gina', 1, 0),
(3848, '', 'fr', 'pagina	', 'Page', 1, 0),
(7795, '', 'es', 'PÃ³liza de seguro', 'PÃ³liza de seguro', 1, 0),
(7794, '', 'en_US', 'PÃ³liza de seguro', 'Insurance policy', 1, 20160520),
(7785, '', 'pt_BR', 'Propuesta', 'Propuesta', 1, 0),
(7784, '', 'fr', 'AprobaciÃ³n Ã©tica local', 'AprobaciÃ³n Ã©tica local', 1, 0),
(7783, '', 'es', 'AprobaciÃ³n Ã©tica local', 'AprobaciÃ³n Ã©tica local', 1, 0),
(7799, '', 'es', 'Plataforma de registro internacional de', 'Plataforma internacional de registro de', 1, 20160520),
(7798, '', 'en_US', 'Plataforma de registro internacional de', 'International Registry Platform of', 1, 20160520),
(7800, '', 'fr', 'Plataforma de registro internacional de', 'Plataforma de registro internacional de ', 1, 0),
(7793, '', 'pt_BR', 'PÃ³liza de seguro', 'PÃ³liza de seguro', 1, 0),
(7792, '', 'fr', 'Otro', 'Otro', 1, 0),
(7791, '', 'es', 'Otro', 'Otro', 1, 0),
(7786, '', 'en_US', 'Propuesta', 'Protocol', 1, 20160520),
(7787, '', 'es', 'Propuesta', 'Protocolo', 1, 20160520),
(7788, '', 'fr', 'Propuesta', 'Propuesta', 1, 0),
(7789, '', 'pt_BR', 'Otro', 'Otro', 1, 0),
(7790, '', 'en_US', 'Otro', 'Other', 1, 20160520),
(3877, '', 'pt_BR', 'introduction', 'IntroduÃ§Ã£o', 1, 0),
(3878, '', 'en_US', 'introduction', 'Introduction', 1, 0),
(3879, '', 'es', 'introduction', 'IntroducciÃ³n', 1, 0),
(3880, '', 'fr', 'introduction', 'Introduction', 1, 0),
(7648, '', 'fr', 'ethical_considerations_inf', '', 1, 20160520),
(7647, '', 'es', 'ethical_considerations_inf', '', 1, 20160520),
(3885, '', 'pt_BR', 'fields', 'Campos', 1, 0),
(3886, '', 'en_US', 'fields', 'Fields', 1, 0),
(3887, '', 'es', 'fields', 'Campos', 1, 0),
(3888, '', 'fr', 'fields', 'Domaines', 1, 0),
(3889, '', 'pt_BR', 'pos', 'Pos', 1, 0),
(3890, '', 'en_US', 'pos', 'Pos', 1, 0),
(3891, '', 'es', 'pos', 'Pos', 1, 0),
(3892, '', 'fr', 'pos', 'Pos', 1, 0),
(3893, '', 'pt_BR', 'keywords', 'palavras-chave', 1, 0),
(3894, '', 'en_US', 'keywords', 'Keywords', 1, 0),
(3895, '', 'es', 'keywords', 'Palabras clave', 1, 20160520),
(3896, '', 'fr', 'keywords', 'Mots clÃ©s', 1, 0),
(3897, '', 'pt_BR', 'design study', 'desenho do estudo', 1, 0),
(3898, '', 'en_US', 'design study', 'Study design', 1, 20160520),
(3899, '', 'es', 'design study', 'DiseÃ±o del estudio', 1, 0),
(3900, '', 'fr', 'design study', 'Plan de lÂ´Ã©tude', 1, 0),
(3901, '', 'pt_BR', 'primary goal', 'Objetivo', 1, 0),
(3902, '', 'en_US', 'primary goal', 'Primary objective', 1, 20160520),
(3903, '', 'es', 'primary goal', 'Objetivo principal', 1, 0),
(3904, '', 'fr', 'primary goal', 'Objectifs principaux', 1, 0),
(3905, '', 'pt_BR', 'specific_goal', 'Objetivos especÃ­ficos', 1, 20160520),
(3906, '', 'en_US', 'specific_goal', 'Specific objective', 1, 20160520),
(3907, '', 'es', 'specific_goal', 'Objetivo especÃ­fico', 1, 20160520),
(3908, '', 'fr', 'specific_goal', 'Objectif(s) spÃ©cifique(s)', 1, 0),
(3909, '', 'pt_BR', 'methodology', 'Metodologia', 1, 0),
(3910, '', 'en_US', 'methodology', 'Methodology', 1, 0),
(3911, '', 'es', 'methodology', 'MetodologÃ­a', 1, 0),
(3912, '', 'fr', 'methodology', 'MÃ©thodologie', 1, 0),
(3913, '', 'pt_BR', 'primary_register', 'Registro primÃ¡rio', 1, 0),
(3914, '', 'en_US', 'primary_register', 'Primary registry', 1, 20160520),
(3915, '', 'es', 'primary_register', 'Registro primario', 1, 0),
(3916, '', 'fr', 'primary_register', 'Registre primaire', 1, 0),
(3917, '', 'pt_BR', 'date_registration', 'Data de registro', 1, 0),
(3918, '', 'en_US', 'date_registration', 'Registration date', 1, 20160520),
(3919, '', 'es', 'date_registration', 'Fecha de registro', 1, 0),
(3920, '', 'fr', 'date_registration', 'Date dÂ´enregistrement', 1, 0),
(7452, '', 'fr', 'committee_type', 'committee_type', 1, 0),
(7451, '', 'es', 'committee_type', 'Tipo de comitÃ©', 1, 20160520),
(7450, '', 'en_US', 'committee_type', 'Committee type', 1, 20160520),
(3925, '', 'pt_BR', 'inclusion_criteria', 'CritÃ©rios de inclusÃ£o', 1, 0),
(3926, '', 'en_US', 'inclusion_criteria', 'Inclusion criteria', 1, 20160520),
(3927, '', 'es', 'inclusion_criteria', 'Criterios de inclusiÃ³n', 1, 0),
(3928, '', 'fr', 'inclusion_criteria', 'inclusion_criteria', 1, 0),
(3929, '', 'pt_BR', 'study_type', 'study_type', 1, 0),
(3930, '', 'en_US', 'study_type', 'Study type', 1, 20160520),
(3931, '', 'es', 'study_type', 'Tipo de estudio', 1, 0),
(3932, '', 'fr', 'study_type', 'Type dÂ´Ã©tude', 1, 0),
(3933, '', 'pt_BR', 'introduction_info', 'InformaÃ§Ãµes introdutÃ³rias', 1, 0),
(3934, '', 'en_US', 'introduction_info', 'Introduction info', 1, 20160520),
(3935, '', 'es', 'introduction_info', 'InformaciÃ³n introductoria', 1, 0),
(3936, '', 'fr', 'introduction_info', 'Information prÃ©liminaire', 1, 0),
(3937, '', 'pt_BR', 'save_next', 'Salvar e avanÃ§ar', 1, 0),
(3938, '', 'en_US', 'save_next', 'Save and next', 1, 20160520),
(3939, '', 'es', 'save_next', 'Guardar y siguiente', 1, 0),
(3940, '', 'fr', 'save_next', 'Enregistrer et Suivant', 1, 0),
(3941, '', 'pt_BR', 'introduction_inf', 'introduction_inf', 1, 0),
(3942, '', 'en_US', 'introduction_inf', '', 1, 0),
(5281, '', 'pt_BR', 'Desabilitado mode de edi??o', 'Desabilitado mode de edi??o', 1, 0),
(3943, '', 'es', 'introduction_inf', 'InformaciÃ³n introductoria', 1, 0),
(3944, '', 'fr', 'introduction_inf', 'Information prÃ©liminaire', 1, 0),
(3945, '', 'pt_BR', 'health_condition', 'condiÃ§Ãµes de saÃºde dos sujeitos de pesquisa', 1, 0),
(3946, '', 'en_US', 'health_condition', 'Health Condition or Problem Studied', 1, 0),
(3947, '', 'es', 'health_condition', 'CondiciÃ³n de salud o problema estudiado', 1, 0),
(3948, '', 'fr', 'health_condition', 'Etat de SantÃ© ou ProblÃ¨me EtudiÃ©', 1, 0),
(3949, '', 'pt_BR', 'budget_item', 'Ãtem', 1, 0),
(3950, '', 'en_US', 'budget_item', 'Item', 1, 0),
(3951, '', 'es', 'budget_item', 'Item', 1, 0),
(3952, '', 'fr', 'budget_item', 'Article', 1, 0),
(3953, '', 'pt_BR', 'budget_desc', 'DescriÃ§Ã£o da despesa', 1, 0),
(3954, '', 'en_US', 'budget_desc', 'Cost Description', 1, 0),
(3955, '', 'es', 'budget_desc', 'DescripciÃ³n de costos', 1, 0),
(3956, '', 'fr', 'budget_desc', 'Description des CoÃ»ts', 1, 0),
(3957, '', 'pt_BR', 'budget_qt', 'Quantidade', 1, 0),
(3958, '', 'en_US', 'budget_qt', 'Quantity', 1, 0),
(3959, '', 'es', 'budget_qt', 'Cantidad', 1, 0),
(3960, '', 'fr', 'budget_qt', 'Montant', 1, 0),
(3961, '', 'pt_BR', 'budget_vlr', 'Valor unitÃ¡rio', 1, 0),
(3962, '', 'en_US', 'budget_vlr', 'Unit cost (US$)', 1, 0),
(3963, '', 'es', 'budget_vlr', 'Costo por unidad (US$)', 1, 0),
(3964, '', 'fr', 'budget_vlr', 'US$ par unitÃ©', 1, 0),
(3965, '', 'pt_BR', 'budget_vlrt', 'SubTotal', 1, 0),
(3966, '', 'en_US', 'budget_vlrt', 'Total', 1, 0),
(3967, '', 'es', 'budget_vlrt', 'Total', 1, 0),
(3968, '', 'fr', 'budget_vlrt', 'Total', 1, 0),
(3969, '', 'pt_BR', 'budget_post', 'Gravar', 1, 20160520),
(3970, '', 'en_US', 'budget_post', 'Post', 1, 0),
(3971, '', 'es', 'budget_post', 'Grabar', 1, 0),
(3972, '', 'fr', 'budget_post', 'Inscrire', 1, 20160520),
(3973, '', 'pt_BR', 'file_submission', 'SubmissÃ£o de documentos', 1, 0),
(3974, '', 'en_US', 'file_submission', 'File submission', 1, 20160520),
(3975, '', 'es', 'file_submission', 'PresentaciÃ³n de archivos', 1, 0),
(3976, '', 'fr', 'file_submission', 'Soumission des fichiers', 1, 0),
(3977, '', 'pt_BR', 'file_name', 'nome do arquivo', 1, 0),
(3978, '', 'en_US', 'file_name', 'Document type', 1, 20160520),
(3979, '', 'es', 'file_name', 'Tipo de documento', 1, 20160520),
(3980, '', 'fr', 'file_name', 'Type de Fichier', 1, 0),
(3981, '', 'pt_BR', 'file_filename', 'Nome do arquivo', 1, 0),
(3982, '', 'en_US', 'file_filename', 'File Name', 1, 0),
(3983, '', 'es', 'file_filename', 'Nombre del archivo', 1, 0),
(3984, '', 'fr', 'file_filename', 'Nom du Fichier', 1, 0),
(3985, '', 'pt_BR', 'file_size', 'Tamanho', 1, 0),
(3986, '', 'en_US', 'file_size', 'Size', 1, 0),
(3987, '', 'es', 'file_size', 'TamaÃ±o', 1, 20160520),
(3988, '', 'fr', 'file_size', 'Taille', 1, 0),
(3989, '', 'pt_BR', 'file_data', 'Data de postagem', 1, 0),
(3990, '', 'en_US', 'file_data', 'Date and Time', 1, 0),
(3991, '', 'es', 'file_data', 'Fecha y hora', 1, 0),
(3992, '', 'fr', 'file_data', 'Date et Heure', 1, 0),
(3993, '', 'pt_BR', 'file_acao', 'excluir', 1, 0),
(3994, '', 'en_US', 'file_acao', 'Action', 1, 0),
(3995, '', 'es', 'file_acao', 'AcciÃ³n', 1, 0),
(3996, '', 'fr', 'file_acao', 'Action', 1, 0),
(3997, '', 'pt_BR', 'not_file_posted', 'NÃ£o existem arquivos submetidos', 1, 0),
(3998, '', 'en_US', 'not_file_posted', 'No files posted', 1, 20160520),
(3999, '', 'es', 'not_file_posted', 'No hay archivo disponible', 1, 20160520),
(4000, '', 'fr', 'not_file_posted', 'Aucun fichier publiÃ©', 1, 20160520),
(4001, '', 'pt_BR', 'upload_file', 'upload_file', 1, 0),
(4002, '', 'en_US', 'upload_file', 'Upload File', 1, 0),
(4003, '', 'es', 'upload_file', 'Subir archivo', 1, 0),
(4004, '', 'fr', 'upload_file', 'TÃ©lÃ©charger un fichier', 1, 0),
(4005, '', 'pt_BR', 'crono_item', 'NÃºmero do Ã­tem', 1, 0),
(4006, '', 'en_US', 'crono_item', '#', 1, 0),
(4007, '', 'es', 'crono_item', '#', 1, 0),
(4008, '', 'fr', 'crono_item', '#', 1, 0),
(4009, '', 'pt_BR', 'crono_desc', 'DescriÃ§Ã£o da atividade', 1, 0),
(4010, '', 'en_US', 'crono_desc', 'Milestone or activity description', 1, 0),
(4011, '', 'es', 'crono_desc', 'DescripciÃ³n de la actividad', 1, 20160520),
(4012, '', 'fr', 'crono_desc', 'Description de lÂ´activitÃ©', 1, 0),
(4013, '', 'pt_BR', 'crono_qt', 'InÃ­cio', 1, 0),
(4014, '', 'en_US', 'crono_qt', 'Beginning', 1, 0),
(4015, '', 'es', 'crono_qt', 'Inicio', 1, 0),
(4016, '', 'fr', 'crono_qt', 'DÃ©but', 1, 0),
(4017, '', 'pt_BR', 'crono_vlr', 'Fim', 1, 0),
(4018, '', 'en_US', 'crono_vlr', 'End', 1, 0),
(4019, '', 'es', 'crono_vlr', 'Finaliza', 1, 0),
(4020, '', 'fr', 'crono_vlr', 'Fin', 1, 0),
(4021, '', 'pt_BR', 'crono_post', 'Gravar', 1, 0),
(4022, '', 'en_US', 'crono_post', 'Post', 1, 0),
(4023, '', 'es', 'crono_post', 'Grabar', 1, 0),
(4024, '', 'fr', 'crono_post', 'Afficher', 1, 0),
(4025, '', 'pt_BR', 'crono_dtini', 'inÃ­cio', 1, 0),
(4026, '', 'en_US', 'crono_dtini', 'Start date', 1, 20160520),
(4027, '', 'es', 'crono_dtini', 'Fecha de inicio', 1, 0),
(4028, '', 'fr', 'crono_dtini', 'Date dÂ´initiation', 1, 0),
(4029, '', 'pt_BR', 'crono_dtfim', 'Fim', 1, 0),
(4030, '', 'en_US', 'crono_dtfim', 'End date', 1, 20160520),
(4031, '', 'es', 'crono_dtfim', 'Fecha de finalizaciÃ³n', 1, 0),
(4032, '', 'fr', 'crono_dtfim', 'Date de clÃ´ture', 1, 0),
(4033, '', 'pt_BR', 'crono', 'Cronograma', 1, 0),
(4034, '', 'en_US', 'crono', 'Schedule', 1, 0),
(4035, '', 'es', 'crono', 'Calendario', 1, 0),
(4036, '', 'fr', 'crono', 'Emploi du Temps', 1, 0),
(4037, '', 'pt_BR', 'budget', 'OrÃ§amento', 1, 0),
(4038, '', 'en_US', 'budget', 'Budget', 1, 0),
(4039, '', 'es', 'budget', 'Presupuesto', 1, 0),
(4040, '', 'fr', 'budget', 'Budget', 1, 0),
(4041, '', 'pt_BR', 'file_submission_info', 'Arquivos anexados', 1, 0),
(4042, '', 'en_US', 'file_submission_info', 'Attached files', 1, 0),
(4043, '', 'es', 'file_submission_info', 'Subir archivos', 1, 20160520),
(4044, '', 'fr', 'file_submission_info', 'Informations du fichier soumit', 1, 0),
(4045, '', 'pt_BR', 'not_defined', 'Indefinido', 1, 0),
(4046, '', 'en_US', 'not_defined', 'Not defined', 1, 20160520),
(4047, '', 'es', 'not_defined', 'Sin definir', 1, 0),
(4048, '', 'fr', 'not_defined', 'Non dÃ©fini', 1, 0),
(4049, '', 'pt_BR', '#projeto', 'Projeto', 1, 0),
(4050, '', 'en_US', '#projeto', 'Project', 1, 0),
(4051, '', 'es', '#projeto', 'Proyecto', 1, 0),
(4052, '', 'fr', '#projeto', 'Projet', 1, 0),
(4053, '', 'pt_BR', '#tcle', '#tcle', 1, 0),
(4054, '', 'en_US', '#tcle', 'Informed Consent', 1, 0),
(4055, '', 'es', '#tcle', 'Consentimiento informado', 1, 0),
(4056, '', 'fr', '#tcle', 'Accord informe', 1, 0),
(4057, '', 'pt_BR', '#other', 'Outros', 1, 0),
(4058, '', 'en_US', '#other', 'Other', 1, 0),
(4059, '', 'es', '#other', 'Otro', 1, 0),
(4060, '', 'fr', '#other', 'Autre', 1, 0),
(4061, '', 'pt_BR', 'dictame rechassada', 'DecisÃ£o rejeitada', 1, 0),
(4062, '', 'en_US', 'dictame rechassada', 'Decision: Not approved', 1, 20160520),
(4063, '', 'es', 'dictame rechassada', 'DecisiÃ³n no aprobado', 1, 20160520),
(4064, '', 'fr', 'dictame rechassada', 'DÃ©cision RejetÃ©', 1, 0),
(4065, '', 'pt_BR', 'file_tipo', 'File_tipo', 1, 0),
(4066, '', 'en_US', 'file_tipo', 'File type', 1, 20160520),
(4067, '', 'es', 'file_tipo', 'Tipo de archivo', 1, 0),
(4068, '', 'fr', 'file_tipo', 'Type de fichier', 1, 0),
(4069, 'gt_cep_ged_do', 'pt_BR', 'gt_cep_ged_do', 'SubmissÃ£o de arquivos', 1, 0),
(4070, '', 'en_US', 'gt_cep_ged_do', 'Submit file', 1, 20160520),
(4071, '', 'es', 'gt_cep_ged_do', 'Subir archivo', 1, 0),
(4072, '', 'fr', 'gt_cep_ged_do', 'Soumettre un fichier', 1, 0),
(4073, '', 'pt_BR', 'gi_cep_ged_do', 'Submeter um novo arquivo', 1, 0),
(4074, '', 'en_US', 'gi_cep_ged_do', 'Upload new file', 1, 0),
(4075, '', 'es', 'gi_cep_ged_do', 'Subir un archivo nuevo', 1, 0),
(4076, '', 'fr', 'gi_cep_ged_do', 'TÃ©lÃ©charger un fichier nouveau', 1, 0),
(4077, '', 'pt_BR', 'page', 'PÃ¡gina', 1, 0),
(4078, '', 'en_US', 'page', 'Page', 1, 0),
(4079, '', 'es', 'page', 'PÃ¡gina', 1, 0),
(4080, '', 'fr', 'page', 'Page', 1, 0),
(4081, '', 'pt_BR', 'language', 'Idioma', 1, 0),
(4082, '', 'en_US', 'language', 'Language', 1, 0),
(4083, '', 'es', 'language', 'Idioma', 1, 0),
(4084, '', 'fr', 'language', 'Langue', 1, 0),
(4085, '', 'pt_BR', 'content', 'ConteÃºdo', 1, 0),
(4086, '', 'en_US', 'content', 'Content', 1, 0),
(4087, '', 'es', 'content', 'Contenido', 1, 0),
(4088, '', 'fr', 'content', 'Contenu', 1, 0),
(4089, '', 'pt_BR', 'active', 'Ativo', 1, 0),
(4090, '', 'en_US', 'active', 'Active', 1, 0),
(4091, '', 'es', 'active', 'Activo', 1, 0),
(4092, '', 'fr', 'active', 'Actif', 1, 0),
(4093, '', 'pt_BR', 'mensagens', 'Mensagens', 1, 0),
(4094, '', 'en_US', 'mensagens', 'Messages', 1, 0),
(4095, '', 'es', 'mensagens', 'Mensajes', 1, 0),
(4096, '', 'fr', 'mensagens', 'Messages', 1, 0),
(4097, '', 'pt_BR', 'erro_extensao', 'Erro de extensÃ£o', 1, 0),
(4098, '', 'en_US', 'erro_extensao', 'Extension error', 1, 20160520),
(4099, '', 'es', 'erro_extensao', 'Error de extensiÃ³n', 1, 0),
(4100, '', 'fr', 'erro_extensao', 'Erreur dÂ´extension', 1, 0),
(4101, '', 'pt_BR', 'type_doc_not_defined', 'Tipo de documento invÃ¡lido', 1, 0),
(4102, '', 'en_US', 'type_doc_not_defined', 'Invalid File Type', 1, 0),
(4103, '', 'es', 'type_doc_not_defined', 'Tipo de documento no definido', 1, 20160520),
(4104, '', 'fr', 'type_doc_not_defined', 'Type de fichier non valable', 1, 0),
(4105, '', 'pt_BR', '<font color=red >Erro:01 - erro_extensao', '<font color=red >Erro:01 - erro_extensao', 1, 0),
(4106, '', 'en_US', '<font color=red >Erro:01 - erro_extensao', '<font color=red >Error:01 - extension error', 1, 0),
(4107, '', 'es', '<font color=red >Erro:01 - erro_extensao', '<font color=red >Error:01 - error de extensiÃ³n', 1, 0),
(4108, '', 'fr', '<font color=red >Erro:01 - erro_extensao', '<font color=red >Erro:01 - erreur dÂ´extension', 1, 0),
(4109, '', 'pt_BR', 'outcome', 'Resultado da pesquisa', 1, 0),
(4110, '', 'en_US', 'outcome', 'Outcome(s)', 1, 0),
(4111, '', 'es', 'outcome', 'Resultado(s)', 1, 0),
(4112, '', 'fr', 'outcome', 'RÃ©sultat(s)', 1, 0),
(4113, '', 'pt_BR', 'primary_outcome', 'Resultados preliminares', 1, 0),
(4114, '', 'en_US', 'primary_outcome', 'Primary Outcome(s)', 1, 0),
(4115, '', 'es', 'primary_outcome', 'Resultado(s) principal(es) esperado(s)', 1, 20160520),
(4116, '', 'fr', 'primary_outcome', 'RÃ©sultat(s) PrÃ©liminaire(s)', 1, 0),
(4117, '', 'pt_BR', 'seconday_outcome', 'Desfecho secundÃ¡rio', 1, 0),
(4118, '', 'en_US', 'seconday_outcome', 'Key secondary outcome(s)', 1, 20160520),
(4119, '', 'es', 'seconday_outcome', 'Resultado(s) secundario(s) esperados(s)', 1, 20160520),
(4120, '', 'fr', 'seconday_outcome', 'RÃ©sultats Secondaires ClÃ©s', 1, 0),
(4121, '', 'pt_BR', 'intervention', 'IntervenÃ§Ãµes', 1, 0),
(4122, '', 'en_US', 'intervention', 'Intervention(s)', 1, 0),
(4123, '', 'es', 'intervention', 'IntervenciÃ³n(es)', 1, 0),
(4124, '', 'fr', 'intervention', 'Intervention(s)', 1, 0),
(4125, '', 'pt_BR', 'faq_title', 'Perguntas e Respostas FreqÃ¼entes', 1, 0),
(4126, '', 'en_US', 'faq_title', 'FAQ', 1, 20160520),
(4127, '', 'es', 'faq_title', 'Preguntas frecuentes', 1, 0),
(4128, '', 'fr', 'faq_title', 'Questions frÃ©quentes', 1, 0),
(4129, '', 'pt_BR', 'clinic_study', 'Estudo ClÃ­nico', 1, 0),
(4130, '', 'en_US', 'clinic_study', 'Clinical trial', 1, 20160520),
(4131, '', 'es', 'clinic_study', 'Ensayo clÃ­nico', 1, 0),
(4132, '', 'fr', 'clinic_study', 'Essai clinique', 1, 0),
(4133, '', 'pt_BR', 'end', 'Fim', 1, 0),
(4134, '', 'en_US', 'end', 'End', 1, 0),
(4135, '', 'es', 'end', 'Final', 1, 0),
(4136, '', 'fr', 'end', 'Fin', 1, 0),
(4137, '', 'pt_BR', 'reference', 'ReferÃªncias (submeter arquivo ou copiar/colar no espaÃ§o abaixo)', 1, 0),
(4138, '', 'en_US', 'reference', 'Bibliography (Upload file or copy/paste below)', 1, 0),
(4139, '', 'es', 'reference', 'BibliografÃ­a (Subir archivos o copiar/pegar en el espacio de abajo)', 1, 0),
(4140, '', 'fr', 'reference', 'Bibliographie (TÃ©lÃ©charger un fichier ou copier / coller ci-dessous)', 1, 0),
(7797, '', 'pt_BR', 'Plataforma de registro internacional de', 'Plataforma internacional de registro de', 1, 20160520),
(7796, '', 'fr', 'PÃ³liza de seguro', 'PÃ³liza de seguro', 1, 0),
(4145, '', 'pt_BR', 'fieldset', 'DescriÃ§Ã£o do campo', 1, 0),
(4146, '', 'en_US', 'fieldset', 'Field', 1, 0),
(4147, '', 'es', 'fieldset', 'Campo', 1, 0),
(4148, '', 'fr', 'fieldset', 'Domaine', 1, 0),
(4149, '', 'pt_BR', 'check', 'VerificaÃ§Ã£o', 1, 0),
(4150, '', 'en_US', 'check', 'Check', 1, 0),
(4151, '', 'es', 'check', 'VerificaciÃ³n', 1, 0),
(4152, '', 'fr', 'check', 'Verification', 1, 0),
(4153, '', 'pt_BR', 'submit_project', 'enviar protocolo', 1, 0),
(4154, '', 'en_US', 'submit_project', 'Submit Project', 1, 0),
(4155, '', 'es', 'submit_project', 'Presentar protocolo', 1, 20160520),
(4156, '', 'fr', 'submit_project', 'Soumettre projet', 1, 0),
(7546, '', 'en_US', 'Expedited', 'Expedited', 1, 0),
(7545, '', 'pt_BR', 'Expedited', 'Expedited', 1, 0),
(7544, '', 'fr', 'Not Approved', 'Not Approved', 1, 0),
(7543, '', 'es', 'Not Approved', 'No aprobado', 1, 20160520),
(4161, '', 'pt_BR', 'login_invalid', 'UsuÃ¡rio invÃ¡lido', 1, 0),
(4162, '', 'en_US', 'login_invalid', 'Invalid login', 1, 20160520),
(4163, '', 'es', 'login_invalid', 'Usuario no vÃ¡lido', 1, 0),
(4164, '', 'fr', 'login_invalid', 'Utilisateur non valable', 1, 0),
(4165, '', 'pt_BR', 'password_incorrect', 'Senha incorreta', 1, 0),
(4166, '', 'en_US', 'password_incorrect', 'Incorrect password', 1, 20160520),
(4167, '', 'es', 'password_incorrect', 'ContraseÃ±a incorrecta', 1, 0),
(4168, '', 'fr', 'password_incorrect', 'Mot de passe incorrect', 1, 0),
(4169, '', 'pt_BR', 'projeto', 'Projeto', 1, 0),
(4170, '', 'en_US', 'projeto', 'Protocol', 1, 20160520),
(4171, '', 'es', 'projeto', 'Protocolo', 1, 20160520),
(4172, '', 'fr', 'projeto', 'Projet', 1, 0),
(7975, '', 'es', 'show', 'Mostrar', 1, 20160520),
(7976, '', 'fr', 'show', 'show', 1, 0),
(7977, '', 'pt_BR', 'descript', 'descript', 1, 0),
(7978, '', 'en_US', 'descript', 'Description', 1, 20160520),
(7979, '', 'es', 'descript', 'DescripciÃ³n', 1, 20160520),
(7980, '', 'fr', 'descript', 'descript', 1, 0),
(4193, '', 'pt_BR', 'pesq_recebida', 'Pesq_recebida', 1, 0),
(4194, '', 'en_US', 'pesq_recebida', 'Received', 1, 0),
(4195, '', 'es', 'pesq_recebida', 'Recibidos', 1, 0),
(4196, '', 'fr', 'pesq_recebida', 'ReÃ§u', 1, 0),
(4197, '', 'pt_BR', 'pesq_revisao', 'Em tramite no CEP', 1, 0),
(4198, '', 'en_US', 'pesq_revisao', 'Under initial committee screening', 1, 20160520),
(4199, '', 'es', 'pesq_revisao', 'En tamizaje inicial del comitÃ©', 1, 20160520),
(4200, '', 'fr', 'pesq_revisao', 'En rÃ©vision avec le comitÃ©', 1, 0),
(4201, '', 'pt_BR', 'pesq_assignada', 'Em anÃ¡lise', 1, 0),
(4202, '', 'en_US', 'pesq_assignada', 'Under committee review process', 1, 20160520),
(4203, '', 'es', 'pesq_assignada', 'En proceso de revisiÃ³n del comitÃ©', 1, 20160520),
(4204, '', 'fr', 'pesq_assignada', 'En RÃ©vision', 1, 0),
(4205, '', 'pt_BR', 'pesq_reunion', 'Para pauta da prÃ³xima reuniÃ£o', 1, 0),
(4206, '', 'en_US', 'pesq_reunion', 'Assigned for next meeting', 1, 20160520),
(4207, '', 'es', 'pesq_reunion', 'Asignados para prÃ³xima reuniÃ³n', 1, 20160520),
(4208, '', 'fr', 'pesq_reunion', 'Pour la Prochaine RÃ©union du ComitÃ©', 1, 0),
(4209, '', 'pt_BR', 'pesq_filed', 'Aguardando assinatura', 1, 0),
(4210, '', 'en_US', 'pesq_filed', 'Awaiting decision', 1, 20160520),
(4211, '', 'es', 'pesq_filed', 'Esperando decisiÃ³n', 1, 20160520),
(4212, '', 'fr', 'pesq_filed', 'ArchivÃ©s', 1, 0),
(4213, '', 'pt_BR', 'key_exclusion_inclusion', 'Excluir palavra-chave', 1, 0),
(4214, '', 'en_US', 'key_exclusion_inclusion', 'Key exclusion/inclusion', 1, 20160520),
(4215, '', 'es', 'key_exclusion_inclusion', 'ExclusiÃ³n/inclusiÃ³n claves', 1, 20160520),
(4216, '', 'fr', 'key_exclusion_inclusion', 'Exclusion/Inclusion ClÃ©', 1, 0),
(4217, '', 'pt_BR', 'key_inclusion', 'CritÃ©rios de inclusÃ£o', 1, 0),
(4218, '', 'en_US', 'key_inclusion', 'Inclusion criteria', 1, 20160520),
(4219, '', 'es', 'key_inclusion', 'Criterios de inclusiÃ³n', 1, 20160520),
(4220, '', 'fr', 'key_inclusion', 'Principaux CritÃ¨res dÂ´Inclusion', 1, 0),
(4221, '', 'pt_BR', 'key_exclusion', 'CritÃ©rios de exclusÃ£o', 1, 0),
(4222, '', 'en_US', 'key_exclusion', 'Key exclusion criteria', 1, 20160520),
(4223, '', 'es', 'key_exclusion', 'Criterios de exclusiÃ³n clave', 1, 0),
(4224, '', 'fr', 'key_exclusion', 'Principaux critÃ¨res dÂ´exclusion', 1, 0),
(4225, '', 'pt_BR', 'Key Inclusion', 'InclusÃ£o de palavra-chave', 1, 0),
(4226, '', 'en_US', 'Key Inclusion', 'Inclusion of key words', 1, 20160520),
(4227, '', 'es', 'Key Inclusion', 'InclusiÃ³n de palabras clave', 1, 0),
(4228, '', 'fr', 'Key Inclusion', 'Inclusion essentiel', 1, 0),
(4229, '', 'pt_BR', 'submission_end_title', 'SubmissÃ£o enviada com sucesso!', 1, 0),
(4230, '', 'en_US', 'submission_end_title', 'Submission sent successfully!', 1, 0),
(4231, '', 'es', 'submission_end_title', 'PresentaciÃ³n exitosa!', 1, 0),
(4232, '', 'fr', 'submission_end_title', 'Soumission envoyÃ©e avec succÃ¨s!', 1, 0),
(4233, '', 'pt_BR', 'submission_end_text', 'SubmissÃ£o completada com sucesso! Aguarde retorno da validaÃ§Ã£o dos documentos.', 1, 0),
(4234, '', 'en_US', 'submission_end_text', 'Your proposal was submitted!', 1, 0),
(4235, '', 'es', 'submission_end_text', 'Su protocolo fue presentado', 1, 20160520),
(4236, '', 'fr', 'submission_end_text', 'Votre proposition a Ã©tÃ© soumise', 1, 0),
(4237, '', 'pt_BR', 'protocolos', 'Protocolos', 1, 0),
(4238, '', 'en_US', 'protocolos', 'Protocols', 1, 0),
(4239, '', 'es', 'protocolos', 'Protocolos', 1, 0),
(4240, '', 'fr', 'protocolos', 'Protocoles', 1, 0),
(4241, '', 'pt_BR', 'days', 'Dias sem movimento', 1, 0),
(4242, '', 'en_US', 'days', 'Days in review', 1, 0),
(4243, '', 'es', 'days', 'DÃ­as en revisiÃ³n', 1, 0),
(4244, '', 'fr', 'days', 'Jours en dÃ©marche dÂ´Ã©valuation', 1, 0),
(4245, '', 'pt_BR', 'comment', 'ComentÃ¡rios', 1, 0),
(4246, '', 'en_US', 'comment', 'Comments', 1, 0),
(4247, '', 'es', 'comment', 'Comentarios', 1, 0),
(4248, '', 'fr', 'comment', 'Commentaires', 1, 0),
(4249, '', 'pt_BR', 'submited', 'Enviado', 1, 0),
(4250, '', 'en_US', 'submited', 'Submitted', 1, 0),
(4251, '', 'es', 'submited', 'Presentado', 1, 0),
(4252, '', 'fr', 'submited', 'Soumis', 1, 0),
(4253, '', 'pt_BR', 'protocol', 'Protocolo', 1, 0),
(4254, '', 'en_US', 'protocol', 'Protocol', 1, 0),
(4255, '', 'es', 'protocol', 'Protocolo', 1, 0),
(4256, '', 'fr', 'protocol', 'Protocole', 1, 0),
(4257, '', 'pt_BR', 'folha_rosto', 'PÃ¡gina de rosto', 1, 0),
(4258, '', 'en_US', 'folha_rosto', 'Cover letter', 1, 20160520),
(4259, '', 'es', 'folha_rosto', 'Carta de presentaciÃ³n/Portada', 1, 20160520),
(4260, '', 'fr', 'folha_rosto', 'Lettre dÂ´accompagnement', 1, 0),
(4261, '', 'pt_BR', 'data_hora_post', 'Data de submissÃ£o', 1, 0),
(4262, '', 'en_US', 'data_hora_post', 'Submission date', 1, 20160520),
(4263, '', 'es', 'data_hora_post', 'Fecha de presentaciÃ³n', 1, 0),
(4264, '', 'fr', 'data_hora_post', 'Date de dÃ©pÃ´t', 1, 0),
(7944, '', 'fr', 'gi_ged_docume', 'gi_ged_docume', 1, 0),
(7943, '', 'es', 'gi_ged_docume', 'gi_ged_docume', 1, 0),
(7559, '', 'es', 'Acompanhamento semestral', 'Monitoreo semestral', 1, 20160520),
(4273, '', 'pt_BR', 'local_pesq', 'Local da pesquisa', 1, 0),
(4274, '', 'en_US', 'local_pesq', 'Research location', 1, 20160520),
(4275, '', 'es', 'local_pesq', 'UbicaciÃ³n de la investigaciÃ³n', 1, 20160520),
(4276, '', 'fr', 'local_pesq', 'Lieu de recherche', 1, 0),
(4277, '', 'pt_BR', 'data_reuniao', 'Data da reuniÃ£o', 1, 0),
(4278, '', 'en_US', 'data_reuniao', 'Meeting date', 1, 20160520),
(4279, '', 'es', 'data_reuniao', 'Fecha de reuniÃ³n', 1, 0),
(4280, '', 'fr', 'data_reuniao', 'Date de la rÃ©union', 1, 0),
(4281, '', 'pt_BR', 'files', 'Arquivos', 1, 0),
(4282, '', 'en_US', 'files', 'Files', 1, 0),
(4283, '', 'es', 'files', 'Archivos', 1, 0),
(4284, '', 'fr', 'files', 'Fichiers', 1, 0),
(4285, '', 'pt_BR', 'show_historic', 'Mostrar histÃ³rico', 1, 0),
(4286, '', 'en_US', 'show_historic', 'Show history', 1, 20160520),
(4287, '', 'es', 'show_historic', 'Mostrar historial', 1, 0),
(4288, '', 'fr', 'show_historic', 'Afficher lÂ´historique', 1, 0),
(4289, '', 'pt_BR', 'historic', 'HistÃ³rico', 1, 0),
(4290, '', 'en_US', 'historic', 'History', 1, 0),
(4291, '', 'es', 'historic', 'Historial', 1, 0),
(4292, '', 'fr', 'historic', 'Histoire', 1, 0),
(4293, '', 'pt_BR', 'hd_data', 'Data', 1, 0),
(4294, '', 'en_US', 'hd_data', 'Date', 1, 0),
(4295, '', 'es', 'hd_data', 'Fecha', 1, 20160520),
(4296, '', 'fr', 'hd_data', 'hd_data', 1, 0),
(4297, '', 'pt_BR', 'hd_hora', 'Hora', 1, 0),
(4298, '', 'en_US', 'hd_hora', 'Time', 1, 0),
(4299, '', 'es', 'hd_hora', 'Hora', 1, 0),
(4300, '', 'fr', 'hd_hora', 'hd_hora', 1, 0),
(4301, '', 'pt_BR', 'hd_comment', 'ComentÃ¡rio', 1, 0),
(4302, '', 'en_US', 'hd_comment', 'Comment', 1, 0),
(4303, '', 'es', 'hd_comment', 'Comentario', 1, 0),
(4304, '', 'fr', 'hd_comment', 'hd_comment', 1, 0),
(4305, '', 'pt_BR', 'hd_log', 'usuÃ¡rio', 1, 0),
(4306, '', 'en_US', 'hd_log', 'user', 1, 0),
(4307, '', 'es', 'hd_log', 'usuÃ¡rio', 1, 0),
(4308, '', 'fr', 'hd_log', 'hd_log', 1, 0),
(7582, '', 'en_US', 'introduction - close', 'introduction - close', 1, 0),
(7581, '', 'pt_BR', 'introduction - close', 'introduction - close', 1, 0),
(4313, '', 'pt_BR', 'show_comunication', 'Mostrar comunicaÃ§Ãµes com o autor', 1, 0),
(4314, '', 'en_US', 'show_comunication', 'Show communications with the investigators', 1, 20160520),
(4315, '', 'es', 'show_comunication', 'Mostrar comunicaciones con los investigadores', 1, 20160520),
(4316, '', 'fr', 'show_comunication', 'Afficher les communications avec lÂ´auteur', 1, 0),
(4317, '', 'pt_BR', 'no_messages', 'Sem mensagens', 1, 0),
(4318, '', 'en_US', 'no_messages', 'No Messages', 1, 0),
(4319, '', 'es', 'no_messages', 'No hay mensajes', 1, 0),
(4320, '', 'fr', 'no_messages', 'Pas de Messages', 1, 0),
(4321, '', 'pt_BR', 'comunication', 'ComunicaÃ§Ã£o', 1, 0),
(4322, '', 'en_US', 'comunication', 'Communication', 1, 0),
(4323, '', 'es', 'comunication', 'ComunicaciÃ³n', 1, 0),
(4324, '', 'fr', 'comunication', 'Communication', 1, 0),
(4325, '', 'pt_BR', 'date', 'Data', 1, 0),
(4326, '', 'en_US', 'date', 'Date', 1, 0),
(4327, '', 'es', 'date', 'Fecha', 1, 0),
(4328, '', 'fr', 'date', 'Date', 1, 0),
(7618, '', 'en_US', 'key_inclusion_inf', '', 1, 20160520),
(7617, '', 'pt_BR', 'key_inclusion_inf', '', 1, 20160520),
(4333, '', 'pt_BR', 'subject', 'subject', 1, 0),
(4334, '', 'en_US', 'subject', 'Subject', 1, 0),
(4335, '', 'es', 'subject', 'Asunto', 1, 0),
(4336, '', 'fr', 'subject', 'Sujet', 1, 0),
(4337, '', 'pt_BR', 'reply', 'reply', 1, 0),
(4338, '', 'en_US', 'reply', 'Reply', 1, 0),
(4339, '', 'es', 'reply', 'Responder', 1, 0),
(4340, '', 'fr', 'reply', 'RÃ©pondre', 1, 0),
(4341, '', 'pt_BR', 'post_new_message', 'Enviar uma mensagem', 1, 0),
(4342, '', 'en_US', 'post_new_message', 'Send new message', 1, 20160520),
(4343, '', 'es', 'post_new_message', 'Enviar mensaje nuevo', 1, 0),
(4344, '', 'fr', 'post_new_message', 'Envoyer un nouveau message', 1, 0),
(4345, '', 'pt_BR', 'mail_subject', 'Assunto da mensagem', 1, 0),
(4346, '', 'en_US', 'mail_subject', 'Mail subject', 1, 20160520),
(4347, '', 'es', 'mail_subject', 'Asunto del mensaje', 1, 0),
(4348, '', 'fr', 'mail_subject', 'Sujet du message', 1, 0),
(4349, '', 'pt_BR', 'mail_content', 'ConteÃºdo da mensagem', 1, 0),
(4350, '', 'en_US', 'mail_content', 'Mail content', 1, 20160520),
(4351, '', 'es', 'mail_content', 'Contenido del mensaje', 1, 0),
(4352, '', 'fr', 'mail_content', 'Contenu du message', 1, 0),
(4353, '', 'pt_BR', 'send_mail', 'send_mail', 1, 0),
(4354, '', 'en_US', 'send_mail', 'Send Email', 1, 0),
(4355, '', 'es', 'send_mail', 'Enviar correo', 1, 0),
(4356, '', 'fr', 'send_mail', 'Envoyer un email', 1, 0),
(4357, '', 'pt_BR', 'dictamen', 'Parecer de relatoria', 1, 0),
(4358, '', 'en_US', 'dictamen', 'Decisions', 1, 20160520),
(4359, '', 'es', 'dictamen', 'DictÃ¡menes', 1, 20160520),
(4360, '', 'fr', 'dictamen', 'DÃ©cision', 1, 0),
(4361, '', 'pt_BR', 'required', 'required', 1, 0),
(4362, '', 'en_US', 'required', 'Required', 1, 0),
(4363, '', 'es', 'required', 'Requeridas', 1, 0),
(4364, '', 'fr', 'required', 'Requis', 1, 0),
(4365, '', 'pt_BR', 'dictame', 'CheckList', 1, 0),
(4366, '', 'en_US', 'dictame', 'Checklist', 1, 0),
(4367, '', 'es', 'dictame', 'Lista de control', 1, 20160520),
(4368, '', 'fr', 'dictame', 'Liste de vÃ©rification', 1, 20160520),
(4369, '', 'pt_BR', 'no_indications', 'Sem indicaÃ§Ãµes', 1, 0),
(4370, '', 'en_US', 'no_indications', 'No Indications', 1, 0),
(4371, '', 'es', 'no_indications', 'No hay indicaciones', 1, 0),
(4372, '', 'fr', 'no_indications', 'Aucune indication', 1, 0),
(4373, '', 'pt_BR', 'instituion', 'InstituiÃ§Ã£o', 1, 0),
(4374, '', 'en_US', 'instituion', 'Institution', 1, 0),
(4375, '', 'es', 'instituion', 'InstituciÃ³n', 1, 0),
(4376, '', 'fr', 'instituion', 'Institution', 1, 0),
(4377, '', 'pt_BR', 'indicate_data', 'Data da indicaÃ§Ã£o', 1, 0),
(4378, '', 'en_US', 'indicate_data', 'Date assigned', 1, 0),
(4379, '', 'es', 'indicate_data', 'Fecha de asignaciÃ³n', 1, 0),
(4380, '', 'fr', 'indicate_data', 'Date fixÃ©e', 1, 0),
(4381, '', 'pt_BR', 'indicate_status', 'SituaÃ§Ã£o', 1, 0),
(4382, '', 'en_US', 'indicate_status', 'Status', 1, 0),
(4383, '', 'es', 'indicate_status', 'Estado', 1, 0),
(4384, '', 'fr', 'indicate_status', 'Ã‰tat actuel', 1, 0),
(7662, '', 'en_US', 'primary_sponsor_inf', '', 1, 20160520),
(7661, '', 'pt_BR', 'primary_sponsor_inf', '', 1, 20160520),
(7660, '', 'fr', 'HIDDEN_inf', 'HIDDEN_inf', 1, 0),
(4389, '', 'pt_BR', 'accept', 'Aceitar', 1, 0),
(4390, '', 'en_US', 'accept', 'Accept', 1, 0),
(4391, '', 'es', 'accept', 'Aceptar', 1, 0),
(4392, '', 'fr', 'accept', 'Accepter', 1, 0),
(4393, '', 'pt_BR', 'erro_checked', 'Erro revisado', 1, 0),
(4394, '', 'en_US', 'erro_checked', 'Error Checked', 1, 0),
(4395, '', 'es', 'erro_checked', 'Error revisado', 1, 0),
(4396, '', 'fr', 'erro_checked', 'Erreur vÃ©rifiÃ©', 1, 0),
(4397, '', 'pt_BR', 'comments', 'ComentÃ¡rios', 1, 0),
(4398, '', 'en_US', 'comments', 'Comments', 1, 0),
(4399, '', 'es', 'comments', 'Comentarios', 1, 0),
(4400, '', 'fr', 'comments', 'Commentaires', 1, 0),
(4401, '', 'pt_BR', 'comment_post', 'Inserir comentÃ¡rio', 1, 0),
(4402, '', 'en_US', 'comment_post', 'Post comment', 1, 0),
(4403, '', 'es', 'comment_post', 'Agregue comentario', 1, 0),
(4404, '', 'fr', 'comment_post', 'Afficher un commentaire', 1, 0),
(4405, '', 'pt_BR', 'comment_submit', 'Enviar comentÃ¡rios', 1, 0),
(4406, '', 'en_US', 'comment_submit', 'Submit comment', 1, 20160520),
(4407, '', 'es', 'comment_submit', 'Presentar comentario', 1, 0),
(4408, '', 'fr', 'comment_submit', 'Soumettre un commentaire', 1, 0),
(4409, '', 'pt_BR', 'comment_add', 'Adicionar comentÃ¡rios', 1, 0),
(4410, '', 'en_US', 'comment_add', 'Add comment', 1, 20160520),
(4411, '', 'es', 'comment_add', 'AÃ±adir comentario', 1, 0),
(4412, '', 'fr', 'comment_add', 'Ajouter un commentaire', 1, 0);
INSERT INTO `_messages` (`id_msg`, `msg_pag`, `msg_language`, `msg_field`, `msg_content`, `msg_ativo`, `msg_update`) VALUES
(7578, '', 'en_US', 'Objectives_inf', 'Objectives_inf', 1, 0),
(7577, '', 'pt_BR', 'Objectives_inf', 'Objectives_inf', 1, 0),
(7576, '', 'fr', 'justsificativa_inf', 'justsificativa_inf', 1, 0),
(7575, '', 'es', 'justsificativa_inf', 'justsificativa_inf', 1, 0),
(4417, '', 'pt_BR', 'members', 'Membros', 1, 0),
(4418, '', 'en_US', 'members', 'Members', 1, 0),
(4419, '', 'es', 'members', 'Miembros', 1, 0),
(4420, '', 'fr', 'members', 'Membres', 1, 0),
(4421, '', 'pt_BR', 'password_forgot', 'Esqueceu sua senha?', 1, 0),
(4422, '', 'en_US', 'password_forgot', 'Forgot password?', 1, 20160520),
(4423, '', 'es', 'password_forgot', 'Â¿OlvidÃ³ su contraseÃ±a?', 1, 0),
(4424, '', 'fr', 'password_forgot', 'Mot de passe oubliÃ©?', 1, 0),
(4425, '', 'pt_BR', 'here', 'here', 1, 0),
(4426, '', 'en_US', 'here', 'Here', 1, 0),
(4427, '', 'es', 'here', 'AquÃ­', 1, 0),
(4428, '', 'fr', 'here', 'Ici', 1, 0),
(4429, '', 'pt_BR', 'send_email_info', 'send_email_info', 1, 0),
(4430, '', 'en_US', 'send_email_info', 'Information E-mail', 1, 20160520),
(4431, '', 'es', 'send_email_info', 'Correo de informaciÃ³n', 1, 20160520),
(4432, '', 'fr', 'send_email_info', 'Envoyer un email dÂ´information', 1, 0),
(4433, '', 'pt_BR', 'send_email', 'send_email', 1, 0),
(4434, '', 'en_US', 'send_email', 'Send Email', 1, 0),
(4435, '', 'es', 'send_email', 'Enviar correo electrÃ³nico', 1, 0),
(4436, '', 'fr', 'send_email', 'Envoyer un email', 1, 0),
(4437, '', 'pt_BR', 'send_email_text', 'send_email_text', 1, 0),
(4438, '', 'en_US', 'send_email_text', 'Send Email Text', 1, 0),
(4439, '', 'es', 'send_email_text', 'Enviar texto de correo', 1, 0),
(4440, '', 'fr', 'send_email_text', 'Envoyer Email texte', 1, 0),
(4441, '', 'pt_BR', 'resume_committee', 'Resumo do ComitÃª', 1, 0),
(4442, '', 'en_US', 'resume_committee', 'Summary of committee protocols', 1, 20160520),
(4443, '', 'es', 'resume_committee', 'Resumen de protocolos del comitÃ©', 1, 20160520),
(4444, '', 'fr', 'resume_committee', 'RÃ©sumÃ© pour le ComitÃ©', 1, 0),
(4445, '', 'pt_BR', 'title', 'TÃ­tulo do projeto', 1, 0),
(4446, '', 'en_US', 'title', 'Title', 1, 0),
(4447, '', 'es', 'title', 'TÃ­tulo', 1, 0),
(4448, '', 'fr', 'title', 'Titre', 1, 0),
(4449, '', 'pt_BR', '#save_next', 'salva e avanÃ§ar', 1, 0),
(4450, '', 'en_US', '#save_next', 'Save and Next', 1, 0),
(4451, '', 'es', '#save_next', 'Guardar y siguiente', 1, 0),
(4452, '', 'fr', '#save_next', 'Enregistrer et Suivant', 1, 0),
(4453, '', 'pt_BR', 'submit_checlist', 'Lista de checagem', 1, 0),
(4454, '', 'en_US', 'submit_checlist', 'Submit Checklist', 1, 0),
(4455, '', 'es', 'submit_checlist', 'Presentar Lista de verificaciÃ³n', 1, 0),
(4456, '', 'fr', 'submit_checlist', 'Soumettre Liste de VÃ©rification', 1, 0),
(4457, '', 'pt_BR', 'submit_term', '', 1, 20160520),
(8664, '', 'pt_BR', 'files_submited', 'files_submited', 1, 0),
(8665, '', 'en_US', 'files_submited', 'files_submited', 1, 0),
(8666, '', 'fr', 'files_submited', 'files_submited', 1, 0),
(8667, '', 'pt_BR', 'validated', 'validated', 1, 0),
(8668, '', 'en_US', 'validated', 'validated', 1, 0),
(8669, '', 'fr', 'validated', 'validated', 1, 0),
(8670, '', 'pt_BR', 'no_validated', 'no_validated', 1, 0),
(8671, '', 'en_US', 'no_validated', 'no_validated', 1, 0),
(8672, '', 'fr', 'no_validated', 'no_validated', 1, 0),
(8673, '', 'pt_BR', 'justificativa', 'justificativa', 1, 0),
(8674, '', 'fr', 'justificativa', 'justificativa', 1, 0),
(8675, '', 'pt_BR', 'date_less_than_current', 'date_less_than_current', 1, 0),
(8676, '', 'en_US', 'date_less_than_current', 'date_less_than_current', 1, 0),
(8677, '', 'fr', 'date_less_than_current', 'date_less_than_current', 1, 0),
(8678, '', 'pt_BR', 'documents_title_commite', 'documents_title_commite', 1, 0),
(8679, '', 'fr', 'documents_title_commite', 'documents_title_commite', 1, 0),
(8680, '', 'pt_BR', 'file_type', 'file_type', 1, 0),
(8681, '', 'en_US', 'file_type', 'file_type', 1, 0),
(8682, '', 'fr', 'file_type', 'file_type', 1, 0),
(8683, '', 'pt_BR', 'proethos_docs', 'proethos_docs', 1, 0),
(8684, '', 'fr', 'proethos_docs', 'proethos_docs', 1, 0),
(8685, '', 'pt_BR', 'proethos_docs_models', 'proethos_docs_models', 1, 0),
(8686, '', 'fr', 'proethos_docs_models', 'proethos_docs_models', 1, 0),
(8687, '', 'fr', 'proethos_doc_soli_exte', 'proethos_doc_soli_exte', 1, 0),
(8688, '', 'fr', 'proethos_doc_soli_emen', 'proethos_doc_soli_emen', 1, 0),
(8689, '', 'fr', 'proethos_doc_diex', 'proethos_doc_diex', 1, 0),
(8690, '', 'fr', 'proethos_doc_apem', 'proethos_doc_apem', 1, 0),
(8691, '', 'fr', 'proethos_doc_apex', 'proethos_doc_apex', 1, 0),
(8692, '', 'pt_BR', 'amendment_009', 'amendment_009', 1, 0),
(8693, '', 'fr', 'amendment_009', 'amendment_009', 1, 0),
(8694, '', 'pt_BR', 'amendment__PRO', 'amendment__PRO', 1, 0),
(8695, '', 'fr', 'amendment__PRO', 'amendment__PRO', 1, 0),
(8696, '', 'pt_BR', 'result', 'result', 1, 0),
(8697, '', 'fr', 'result', 'result', 1, 0),
(8698, '', 'pt_BR', 'date_reclutamiento', 'date_reclutamiento', 1, 0),
(8699, '', 'fr', 'date_reclutamiento', 'date_reclutamiento', 1, 0),
(8700, '', 'pt_BR', 'no_start', 'no_start', 1, 0),
(8701, '', 'fr', 'no_start', 'no_start', 1, 0),
(8702, '', 'pt_BR', 'dictamen_vt', 'dictamen_vt', 1, 0),
(8703, '', 'fr', 'dictamen_vt', 'dictamen_vt', 1, 0),
(8704, '', 'pt_BR', 'click_to_decline', 'click_to_decline', 1, 0),
(8705, '', 'en_US', 'click_to_decline', 'click_to_decline', 1, 0),
(8706, '', 'fr', 'click_to_decline', 'click_to_decline', 1, 0),
(8707, '', 'pt_BR', 'communicate_013', 'communicate_013', 1, 0),
(8708, '', 'en_US', 'communicate_013', 'communicate_013', 1, 0),
(8709, '', 'fr', 'communicate_013', 'communicate_013', 1, 0),
(8710, '', 'pt_BR', 'in_review_list', 'in_review_list', 1, 0),
(8711, '', 'en_US', 'in_review_list', 'in_review_list', 1, 0),
(4458, '', 'en_US', 'submit_term', 'Submission Terms - Space available for any submission terms the ERC in each country requires investigators to accept before submitting their proposal.', 1, 20160520),
(4459, '', 'es', 'submit_term', 'TÃ©rminos del comitÃ© para la presentaciÃ³n del protocolo', 1, 20160520),
(4460, '', 'fr', 'submit_term', 'Conditions de soumission - Espace disponible pour toutes les modalitÃ©s de soumission. LÂ´ERC nÃ©cessite dans chaque pays lÂ’accord de lÂ’enquÃªteur avant de soumettre leur proposition.', 1, 20160520),
(4461, '', 'pt_BR', 'submit_term_accepted', 'Estou de acordo com as condiÃ§Ãµes', 1, 0),
(4462, '', 'en_US', 'submit_term_accepted', 'I accept these conditions', 1, 20160520),
(4463, '', 'es', 'submit_term_accepted', 'Estoy de acuerdo con estos tÃ©rminos', 1, 0),
(4464, '', 'fr', 'submit_term_accepted', 'JÂ´accepte ces conditions', 1, 0),
(4465, '', 'pt_BR', 'proto_cab_1', 'Aceite do projeto', 1, 0),
(4466, '', 'en_US', 'proto_cab_1', 'Validate data', 1, 0),
(4467, '', 'es', 'proto_cab_1', 'Validar datos', 1, 0),
(4468, '', 'fr', 'proto_cab_1', 'Soumission accepter', 1, 0),
(4469, '', 'pt_BR', 'proto_cab_2', 'AvaliaÃ§Ã£o do comitÃª', 1, 0),
(4470, '', 'en_US', 'proto_cab_2', 'Initial committee screening', 1, 0),
(4471, '', 'es', 'proto_cab_2', 'Tamizaje inicial del comitÃ©', 1, 0),
(4472, '', 'fr', 'proto_cab_2', 'Le ComitÃ© dÃ©cide', 1, 0),
(4473, '', 'pt_BR', 'proto_cab_3', 'Pesquisa do comitÃª', 1, 0),
(4474, '', 'en_US', 'proto_cab_3', 'Under committee initial review', 1, 0),
(4475, '', 'es', 'proto_cab_3', 'Bajo revisiÃ³n inicial del comitÃ©', 1, 0),
(4476, '', 'fr', 'proto_cab_3', 'En comitÃ© de sÃ©lection', 1, 0),
(4477, '', 'pt_BR', 'proto_cab_4', 'Agendado para reuniÃ£o', 1, 0),
(4478, '', 'en_US', 'proto_cab_4', 'Scheduled for Meeting', 1, 0),
(4479, '', 'es', 'proto_cab_4', 'Programado para reuniÃ³n', 1, 0),
(4480, '', 'fr', 'proto_cab_4', 'PrÃªt pour la prochaine rÃ©union', 1, 0),
(4481, '', 'pt_BR', 'proto_cab_5', 'AnÃ¡lise do ComitÃª finalizada', 1, 0),
(4482, '', 'en_US', 'proto_cab_5', 'Ready for decision', 1, 0),
(4483, '', 'es', 'proto_cab_5', 'Listo para decisiÃ³n', 1, 0),
(4484, '', 'fr', 'proto_cab_5', 'Projet finalisÃ©', 1, 0),
(4485, '', 'pt_BR', 'cep_status_A', 'Propostas recebidas', 1, 0),
(4486, '', 'en_US', 'cep_status_A', 'Protocols submitted', 1, 20160520),
(4487, '', 'es', 'cep_status_A', 'Presentado', 1, 20160520),
(4488, '', 'fr', 'cep_status_A', 'Propositions reÃ§ues', 1, 0),
(4489, '', 'pt_BR', 'define_evaluator', 'Definir avaliador(es)', 1, 0),
(4490, '', 'en_US', 'define_evaluator', 'Assign', 1, 20160520),
(4491, '', 'es', 'define_evaluator', 'Asignar', 1, 20160520),
(4492, '', 'fr', 'define_evaluator', 'DÃ©finir examinateur(s)', 1, 0),
(4493, '', 'pt_BR', 'send_to_assign', 'send_to_assign', 1, 0),
(4494, '', 'en_US', 'send_to_assign', 'Send to Assign', 1, 0),
(4495, '', 'es', 'send_to_assign', 'Enviar para asignar', 1, 0),
(4496, '', 'fr', 'send_to_assign', 'Envoy pour assignment', 1, 0),
(4497, '', 'pt_BR', 'return_to_submission', 'return_to_submission', 1, 0),
(4498, '', 'en_US', 'return_to_submission', 'Return submission', 1, 0),
(4499, '', 'es', 'return_to_submission', 'Regresar protocolo', 1, 20160520),
(4500, '', 'fr', 'return_to_submission', 'Retour au soumission', 1, 0),
(4501, '', 'pt_BR', 'define_evaluator_btn', 'Definir avaliador(es)', 1, 0),
(4502, '', 'en_US', 'define_evaluator_btn', 'Assign', 1, 20160520),
(4503, '', 'es', 'define_evaluator_btn', 'Asignar', 1, 0),
(4504, '', 'fr', 'define_evaluator_btn', 'DÃ©finir examinateur(s)', 1, 0),
(4505, '', 'pt_BR', 'indicate_avaliation_to', 'Indicar avaliador', 1, 0),
(4506, '', 'en_US', 'indicate_avaliation_to', 'Assign Reviewer(s)', 1, 0),
(4507, '', 'es', 'indicate_avaliation_to', 'Asignar evaluador(es)', 1, 0),
(4508, '', 'fr', 'indicate_avaliation_to', 'Assigner Ã©valuateur(s)', 1, 0),
(4509, '', 'pt_BR', 'indicate_email', 'E-mail de informaÃ§Ã£o', 1, 0),
(4510, '', 'en_US', 'indicate_email', 'Information Email', 1, 0),
(4511, '', 'es', 'indicate_email', 'Correo de informaciÃ³n', 1, 0),
(4512, '', 'fr', 'indicate_email', 'Informations e-mail', 1, 0),
(4513, '', 'pt_BR', 'cep_status_B', 'Propostas completas para revisÃ£o', 1, 0),
(4514, '', 'en_US', 'cep_status_B', 'Proposals ready for review', 1, 0),
(4515, '', 'es', 'cep_status_B', 'Protocolos listos para revisiÃ³n', 1, 20160520),
(4516, '', 'fr', 'cep_status_B', 'Propositions prÃªt Ã  Ãªtre examinÃ©', 1, 0),
(4517, '', 'pt_BR', 'indicated', 'Indicado', 1, 0),
(4518, '', 'en_US', 'indicated', 'Assigned', 1, 0),
(4519, '', 'es', 'indicated', 'Asignado', 1, 0),
(4520, '', 'fr', 'indicated', 'AssignÃ©', 1, 20160520),
(4521, '', 'pt_BR', 'checklist_title', 'ValidaÃ§Ã£o Ã©tica do parecer', 1, 0),
(4522, '', 'en_US', 'checklist_title', 'ReviewerÂ´s ethical validation', 1, 0),
(4523, '', 'es', 'checklist_title', 'ValidaciÃ³n Ã©tica del revisor', 1, 0),
(4524, '', 'fr', 'checklist_title', 'Validation Ã©thique de lÂ´Ã©valuateur', 1, 0),
(4525, '', 'pt_BR', 'question_1', '', 1, 20160520),
(8730, '', 'fr', 'perfil_user_name', 'perfil_user_name', 1, 0),
(8731, '', 'pt_BR', 'assigned data', 'assigned data', 1, 0),
(4526, '', 'en_US', 'question_1', '', 1, 20160520),
(4527, '', 'es', 'question_1', '', 1, 20160520),
(8581, '', 'es', 'result', 'Resultado', 1, 20160520),
(8582, '', 'es', 'results', 'resultados', 1, 20160520),
(4528, '', 'fr', 'question_1', '1.	Valeur sociale Est-ce que lÂ´Ã©tude peut amÃ©liorer la santÃ© et le bien-Ãªtre? Quelle est la valeur potentielle de cette recherche pour chacun des bÃ©nÃ©ficiaires potentiels?', 1, 0),
(4529, '', 'pt_BR', 'question_2', '', 1, 20160520),
(8725, '', 'en_US', 'not_applied', 'not_applied', 1, 0),
(8726, '', 'fr', 'not_applied', 'not_applied', 1, 0),
(8727, '', 'pt_BR', 'report', 'report', 1, 0),
(8728, '', 'fr', 'report', 'report', 1, 0),
(8729, '', 'pt_BR', 'perfil_user_name', 'perfil_user_name', 1, 0),
(4530, '', 'en_US', 'question_2', '', 1, 20160520),
(8461, '', 'en_US', 'remove', 'Remove', 1, 20160520),
(8462, '', 'en_US', 'remove_dictamen', 'Remove decision', 1, 20160520),
(8463, '', 'en_US', 'report', 'Report', 1, 20160520),
(8464, '', 'en_US', 'Reporte de evento adverso', 'Report of adverse events', 1, 20160520),
(4531, '', 'es', 'question_2', '', 1, 20160520),
(8579, '', 'es', 'remove_draft_opinion_inf', 'Borrar dictÃ¡men', 1, 20160520),
(8580, '', 'es', 'report', 'Reporte', 1, 20160520),
(4532, '', 'fr', 'question_2', '2. ValiditÃ© scientifique: Est-ce que lÂ´enquÃªte et son point de vue mÃ©thodologique est valable (statistiquement) et scientifiquement? LÂ´Ã©tude fournira des donnÃ©es valables et fiables qui peuvent Ãªtre gÃ©nÃ©ralisÃ©s et utiles? Est-ce que la conception de lÂ´Ã©tude Ã  rÃ©aliser les objectifs scientifiques tout en garantissant aux participants les interventions de soins de santÃ© auxquels ils ont droit? LÂ´Ã©tude est-elle rÃ©alisable?', 1, 0),
(4533, '', 'pt_BR', 'question_3', '&lt;B&gt;3. CritÃ©rios de InclusÃ£o e ExclusÃ£o da amostra&lt;/B&gt; Ã‰ a populaÃ§Ã£o da pesquisa selecionado para minimizar os riscos para os participantes? SÃ£o participantes da pesquisa individuais selecionados para maximizar os benefÃ­cios potenciais? SÃ£o os potenciais riscos e benefÃ­cios do estudo distribuÃ­dos de forma justa? O estudo nÃ£o pode ser realizado de outra forma?', 1, 20160520),
(7161, '', 'pt_BR', 'secretary_menu', 'Menu da secretaria', 1, 0),
(4534, '', 'en_US', 'question_3', '&lt;B&gt;3. Fair participant selection&lt;/B&gt; What are the criteria to include and exclude participants? Is selection of participants based on scientific criteria? Is the research population selected to minimize risks to participants? Are individual research participants selected to maximize potential benefits? If participants are vulnerable, are there any safeguards to protect them? Are the risks and potential benefits of the study fairly distributed?', 1, 20160520),
(4535, '', 'es', 'question_3', '', 1, 20160520),
(8576, '', 'es', 'registrarse', 'Registrarse', 1, 20160520),
(8577, '', 'es', 'remove', 'Borrar', 1, 20160520),
(8578, '', 'es', 'remove_dictamen', 'Borrar dictÃ¡men', 1, 20160520),
(4536, '', 'fr', 'question_3', '3. SÃ©lection des participants Ã©quitable: Quels sont les critÃ¨res pour inclure ou exclure des participants? Est-ce que la sÃ©lection des participants est fondÃ©e sur des critÃ¨res scientifiques? Est-ce que la population Ã©tudiÃ©e est sÃ©lectionnÃ©e pour minimiser les risques pour les participants? Est-ce que les participants individuels de cette recherche ont Ã©tÃ© sÃ©lectionnÃ©s pour maximiser les avantages potentiels? Si les participants sont vulnÃ©rables, y a-t-il des garanties pour les protÃ©ger? Est-ce que les risques et les avantages potentiels de lÂ´Ã©tude sont rÃ©partis Ã©quitablement?', 1, 0),
(4537, '', 'pt_BR', 'question_4', '', 1, 20160520),
(8722, '', 'en_US', 'upload_dictamen', 'upload_dictamen', 1, 0),
(8723, '', 'fr', 'upload_dictamen', 'upload_dictamen', 1, 0),
(8724, '', 'pt_BR', 'not_applied', 'not_applied', 1, 0),
(4538, '', 'en_US', 'question_4', '', 1, 20160520),
(4539, '', 'es', 'question_4', '&lt;B&gt;4. RelaciÃ³n favorable de riesgo-beneficio&lt;/B&gt; Â¿Pueden minimizarse los riesgos para los participantes? Â¿Pueden mejorarse los posibles beneficios para los individuos y para la sociedad? Los posibles beneficios para la sociedad e individuos, Â¿sobrepasan los riesgos?', 1, 20160520),
(4540, '', 'fr', 'question_4', '4. Rapport bÃ©nÃ©fice/ risque favorable: Peuvent les risques Ãªtre minimisÃ©s pour les participants? Peuvent les avantages potentiels des individus et la sociÃ©tÃ© Ãªtre amÃ©liorÃ©e? Est-ce que les avantages potentiels pour la sociÃ©tÃ© et les individus dÃ©passent les risques?', 1, 0),
(4541, '', 'pt_BR', 'question_5', '', 1, 20160520),
(8717, '', 'fr', 'action_020', 'action_020', 1, 0),
(8718, '', 'pt_BR', 'upload_draft_opinion_inf', 'upload_draft_opinion_inf', 1, 0),
(8719, '', 'en_US', 'upload_draft_opinion_inf', 'upload_draft_opinion_inf', 1, 0),
(8720, '', 'fr', 'upload_draft_opinion_inf', 'upload_draft_opinion_inf', 1, 0),
(8721, '', 'pt_BR', 'upload_dictamen', 'upload_dictamen', 1, 0),
(4542, '', 'en_US', 'question_5', '', 1, 20160520),
(8459, '', 'en_US', 'registrarse', 'Register', 1, 20160520),
(8460, '', 'en_US', 'Registro de ensayos clÃ­nicos', 'Clinical trials registry', 1, 20160520),
(4543, '', 'es', 'question_5', '&lt;B&gt;4. Consentimiento informado&lt;/B&gt; La informaciÃ³n que se prove a los posibles participantes, Â¿es exacta, clara, relevante y complete? Los procedimientos de reclutamiento, consentimiento e incentivos, Â¿son apropiados para su cultura y context? Â¿Hay un plan apropriado para obtener el permiso de aquellos que no pueden copnsentir por si mismos? Â¿Se les hace saber a los participantes sobre su derecho de rehusarse a participar y son de hecho libres de rehusarse?', 1, 20160520),
(4544, '', 'fr', 'question_5', '5.	Le consentement Ã©clairÃ© est lÂ´information prÃ©cise, claire, pertinente et complÃ¨te, fournie aux participants potentiels? Est- ce que les procÃ©dures de recrutement, le processus de consentement et dÂ´incitations, appropriÃ©es pour leur culture et leur contexte? Y a-t-il un plan appropriÃ© pour obtenir la permission pour ceux qui ne peuvent pas donner leur consentement? Est-ce que les participants sont informÃ©s de leur droit de refuser de participer, et sont-ils rÃ©ellement libre de refuser?', 1, 0),
(4545, '', 'pt_BR', 'question_6', '', 1, 20160520),
(8712, '', 'fr', 'in_review_list', 'in_review_list', 1, 0),
(8713, '', 'pt_BR', 'upload_draft_opinion', 'upload_draft_opinion', 1, 0),
(8714, '', 'en_US', 'upload_draft_opinion', 'upload_draft_opinion', 1, 0),
(8715, '', 'fr', 'upload_draft_opinion', 'upload_draft_opinion', 1, 0),
(8716, '', 'pt_BR', 'action_020', 'action_020', 1, 0),
(4546, '', 'en_US', 'question_6', '&lt;B&gt;6. Respect for participants&lt;/B&gt; How will the health and well-being of participants be monitored to minimize harms? How will their privacy be protected? Can participants withdraw from the study without penalty? What are the plans of care after the study is completed? Will participants be given any new information (including the results of the study)?', 1, 20160520),
(4547, '', 'es', 'question_6', '&lt;B&gt;6. Respeto para con los participantes&lt;/B&gt; Â¿CÃ³mo se monitorearÃ¡ la salud y bienestar de los participantes para minimizer los daÃ±os? Â¿CÃ³mo se protegerÃ¡ su privacidad? Â¿Pueden los participantes retirarse del estudio sin ninguna sanciÃ³n? Â¿CuÃ¡les son los planes de atenciÃ³n despuÃ©s que termine el estudio? Â¿Se le darÃ¡ alguna nueva informaciÃ³n a los participantes (incluyendo los resultados del estudio)?', 1, 20160520),
(4548, '', 'fr', 'question_6', '6.	Respect pour les participants: Comment est-ce que la santÃ© et le bien-Ãªtre des participants seront contrÃ´lÃ©s afin de minimiser les mÃ©faits? Comment leur vie privÃ©e sera protÃ©gÃ©e? Est-ce que les participants peuvent se retirer de lÂ´Ã©tude sans pÃ©nalitÃ©? Quels sont les plans de soins aprÃ¨s lÂ´Ã©tude soit terminÃ©e? Les participants recevront il toute nouvelle information (y compris les rÃ©sultats de lÂ´Ã©tude)?', 1, 0),
(4549, '', 'pt_BR', 'definitive_version', 'Salvar como versÃ£o definitiva', 1, 0),
(4550, '', 'en_US', 'definitive_version', 'Save as final version', 1, 20160520),
(4551, '', 'es', 'definitive_version', 'Guardar como versiÃ³n final', 1, 0),
(4552, '', 'fr', 'definitive_version', 'Enregistrer en tant que version finale', 1, 0),
(4553, '', 'pt_BR', 'check_list_save', 'Salvar lista de verificaÃ§Ã£o', 1, 0),
(4554, '', 'en_US', 'check_list_save', 'Save Checklist', 1, 0),
(4555, '', 'es', 'check_list_save', 'Guardar', 1, 20160520),
(4556, '', 'fr', 'check_list_save', 'Enregistrer Liste de vÃ©rification', 1, 0),
(4557, '', 'pt_BR', 'my_dictame', 'Parecer do Relator', 1, 0),
(4558, '', 'en_US', 'my_dictame', 'ReviewerÂ´s comments', 1, 20160520),
(4559, '', 'es', 'my_dictame', 'Comentarios del revisor', 1, 0),
(4560, '', 'fr', 'my_dictame', 'Commentaires de lÂ´examinateur', 1, 0),
(4561, '', 'pt_BR', 'accept_to_meet', 'Indicado para a reuniÃ£o', 1, 0),
(4562, '', 'en_US', 'accept_to_meet', 'Accept for next meeting', 1, 0),
(4563, '', 'es', 'accept_to_meet', 'Aceptar para prÃ³xima reuniÃ³n', 1, 0),
(4564, '', 'fr', 'accept_to_meet', 'Accepter pour la prochaine rÃ©union', 1, 0),
(4565, '', 'pt_BR', 'define_new_evaluator', 'Definir novo avaliador', 1, 0),
(4566, '', 'en_US', 'define_new_evaluator', 'Assign new reviewer', 1, 20160520),
(4567, '', 'es', 'define_new_evaluator', 'Asignar nuevo revisor', 1, 20160520),
(4568, '', 'fr', 'define_new_evaluator', 'DÃ©finir un nouveau rÃ©viseur', 1, 0),
(4569, '', 'pt_BR', 'return', 'return', 1, 0),
(4570, '', 'en_US', 'return', 'Return', 1, 0),
(4571, '', 'es', 'return', 'Devolver', 1, 0),
(4572, '', 'fr', 'return', 'Retourner', 1, 0),
(4573, '', 'pt_BR', 'address', 'EndereÃ§o', 1, 0),
(4574, '', 'en_US', 'address', 'Address', 1, 0),
(4575, '', 'es', 'address', 'DirecciÃ³n', 1, 0),
(4576, '', 'fr', 'address', 'Adresse', 1, 0),
(4577, '', 'pt_BR', 'country', 'PaÃ­s', 1, 0),
(4578, '', 'en_US', 'country', 'Country', 1, 0),
(4579, '', 'es', 'country', 'PaÃ­s', 1, 0),
(4580, '', 'fr', 'country', 'Pays', 1, 0),
(4581, '', 'pt_BR', 'institution_affiliated', 'InstituiÃ§Ã£o de vÃ­nculo', 1, 0),
(4582, '', 'en_US', 'institution_affiliated', 'Institution of affiliation', 1, 20160520),
(4583, '', 'es', 'institution_affiliated', 'InstituciÃ³n de afiliaciÃ³n', 1, 0),
(4584, '', 'fr', 'institution_affiliated', 'Ã‰tablissement dÂ´affiliation', 1, 0),
(4585, '', 'pt_BR', 'email_exist', 'Este e-mail jÃ¡ estÃ¡ cadastrado', 1, 0),
(4586, '', 'en_US', 'email_exist', 'This email is already registered', 1, 0),
(4587, '', 'es', 'email_exist', 'Este email ya estÃ¡ registrado', 1, 0),
(4588, '', 'fr', 'email_exist', 'Cet e-mail est dÃ©jÃ  enregistrÃ©', 1, 0),
(4589, '', 'pt_BR', 'is_not_valid_email', 'E-mail invÃ¡lido', 1, 0),
(4590, '', 'en_US', 'is_not_valid_email', '', 1, 20160520),
(4591, '', 'es', 'is_not_valid_email', '', 1, 20160520),
(4592, '', 'fr', 'is_not_valid_email', 'Email est invalide', 1, 0),
(4593, '', 'pt_BR', 'confirm_email', '', 1, 20160520),
(8650, '', 'pt_BR', 'Dictamen emitido por otro comitÃ©', 'RevisiÃ³n/DecisiÃ³n', 1, 20160520),
(4594, '', 'en_US', 'confirm_email', '', 1, 20160520),
(8418, '', 'en_US', 'copyright', 'Â© Pan American Health Organization, 2013. All rights reserved.', 1, 20160520),
(4595, '', 'es', 'confirm_email', '', 1, 20160520),
(8515, '', 'es', 'copy_the_text', 'Copiar el siguiente texto', 1, 20160520),
(4596, '', 'fr', 'confirm_email', 'Cher EnquÃªteur, votre inscription a Ã©tÃ© un succÃ¨s, mais nÂ’est pas encore active. Vous recevrez un e-mail pour valider lÂ´inscription. Cordialement, ComitÃ© dÂ´Ã©thique', 1, 20160520),
(4597, '', 'pt_BR', 'confirm_email_title', 'Cadastro efetuado com sucesso', 1, 0),
(4598, '', 'en_US', 'confirm_email_title', 'Registry successful', 1, 20160520),
(4599, '', 'es', 'confirm_email_title', 'Registro exitoso', 1, 0),
(4600, '', 'fr', 'confirm_email_title', 'Inscription rÃ©ussie', 1, 0),
(4601, '', 'pt_BR', 'chk_email_ok_tit', 'ValidaÃ§Ã£o do cadastro', 1, 0),
(4602, '', 'en_US', 'chk_email_ok_tit', 'Validation of registration', 1, 0),
(4603, '', 'es', 'chk_email_ok_tit', 'ValidaciÃ³n de registro', 1, 0),
(4604, '', 'fr', 'chk_email_ok_tit', 'Validation de lÂ´inscription', 1, 0),
(4605, '', 'pt_BR', 'chk_email_ok', '', 1, 20160520),
(4606, '', 'en_US', 'chk_email_ok', '', 1, 20160520),
(4607, '', 'es', 'chk_email_ok', '', 1, 20160520),
(8505, '', 'es', 'click_to_decline', 'Presione para rechazar', 1, 20160520),
(8506, '', 'es', 'code', 'CÃ³digo', 1, 20160520),
(8507, '', 'es', 'committee_id', 'ID del ComitÃ©', 1, 20160520),
(4608, '', 'fr', 'chk_email_ok', '', 1, 20160520),
(8634, '', 'fr', 'Deshabilitar modo de edición', 'Deshabilitar modo de ediciÃ³n', 1, 20160520),
(8635, '', 'fr', 'Dictamen emitido por otro comitÃ©', 'RevisiÃ³n/DecisiÃ³n', 1, 20160520),
(4609, '', 'pt_BR', 'reg_unit', 'Nome do registro', 1, 0),
(4610, '', 'en_US', 'reg_unit', 'Registry name', 1, 20160520),
(4611, '', 'es', 'reg_unit', 'Nombre del registro', 1, 20160520),
(4612, '', 'fr', 'reg_unit', 'Nom du Registre', 1, 0),
(4613, '', 'pt_BR', 'reg_number', 'Registrado sob o nÃºmero', 1, 0),
(4614, '', 'en_US', 'reg_number', 'Registry number', 1, 20160520),
(4615, '', 'es', 'reg_number', 'NÃºmero de registro', 1, 20160520),
(4616, '', 'fr', 'reg_number', 'NumÃ©ro du registre', 1, 0),
(4617, '', 'pt_BR', 'reg_botao', 'Incluir', 1, 0),
(4618, '', 'en_US', 'reg_botao', 'include', 1, 20160520),
(4619, '', 'es', 'reg_botao', 'Incluir', 1, 0),
(4620, '', 'fr', 'reg_botao', 'Inclure', 1, 0),
(4621, '', 'pt_BR', 'register_unit', 'register_unit', 1, 0),
(4622, '', 'en_US', 'register_unit', 'Registry name', 1, 20160520),
(4623, '', 'es', 'register_unit', 'Nombre del registro', 1, 0),
(4624, '', 'fr', 'register_unit', 'Nom du Registre', 1, 0),
(4625, '', 'pt_BR', 'number', 'NÃºmero de registro', 1, 0),
(4626, '', 'en_US', 'number', 'Registry number', 1, 20160520),
(4627, '', 'es', 'number', 'NÃºmero de registro', 1, 20160520),
(4628, '', 'fr', 'number', 'NumÃ©ro de registre', 1, 0),
(4629, '', 'pt_BR', 'register', 'register', 1, 0),
(4630, '', 'en_US', 'register', 'Register', 1, 0),
(4631, '', 'es', 'register', 'Registrar', 1, 0),
(4632, '', 'fr', 'register', 'Inscrivez-vous', 1, 0),
(4633, '', 'pt_BR', 'exist_pending_submit', 'Submeter proposta pendente', 1, 0),
(4634, '', 'en_US', 'exist_pending_submit', 'Submit pending protocol', 1, 20160520),
(4635, '', 'es', 'exist_pending_submit', 'Subir protocolo pendiente', 1, 20160520),
(4636, '', 'fr', 'exist_pending_submit', 'TÃ©lÃ©chargez proposition en suspens', 1, 0),
(4637, '', 'pt_BR', 'create_PDF', 'Visualizar PDF do projeto de pesquisa', 1, 0),
(4638, '', 'en_US', 'create_PDF', 'Create PDF', 1, 0),
(4639, '', 'es', 'create_PDF', 'Crear PDF', 1, 0),
(4640, '', 'fr', 'create_PDF', 'CrÃ©er un fichier PDF', 1, 0),
(4641, '', 'pt_BR', 'submit_checklist', 'ValidaÃ§Ã£o da submissÃ£o do projeto', 1, 0),
(4642, '', 'en_US', 'submit_checklist', 'Checklist', 1, 0),
(4643, '', 'es', 'submit_checklist', 'Lista de verificaciÃ³n', 1, 0),
(4644, '', 'fr', 'submit_checklist', 'Soumettre la Liste de verification', 1, 0),
(7961, '', 'pt_BR', 'faq', 'faq', 1, 0),
(7960, '', 'fr', 'ord', 'ord', 1, 0),
(7959, '', 'es', 'ord', 'ord', 1, 0),
(7958, '', 'en_US', 'ord', 'ord', 1, 0),
(4649, '', 'pt_BR', 'cep_status_C', 'Em anÃ¡lise pelo comitÃª', 1, 0),
(4650, '', 'en_US', 'cep_status_C', 'Under review by committee', 1, 0),
(4651, '', 'es', 'cep_status_C', 'Bajo revision del ComitÃ©', 1, 0),
(4652, '', 'fr', 'cep_status_C', 'En cours de rÃ©vision par le comitÃ©', 1, 0),
(4653, '', 'pt_BR', '#ASSISTENT', '#ASSISTENT', 1, 0),
(4654, '', 'en_US', '#ASSISTENT', '#ASSISTENT', 1, 0),
(4655, '', 'es', '#ASSISTENT', 'Asistente', 1, 20160520),
(4656, '', 'fr', '#ASSISTENT', '#ASSISTENT', 1, 0),
(4657, '', 'pt_BR', '#CONTRIBUTOR', '#CONTRIBUTOR', 1, 0),
(4658, '', 'en_US', '#CONTRIBUTOR', '#CONTRIBUTOR', 1, 0),
(4659, '', 'es', '#CONTRIBUTOR', 'Colaborador', 1, 20160520),
(4660, '', 'fr', '#CONTRIBUTOR', '#CONTRIBUTEUR', 1, 0),
(4661, '', 'pt_BR', '#SPONSOR', '#SPONSOR', 1, 0),
(4662, '', 'en_US', '#SPONSOR', '#SPONSOR', 1, 0),
(4663, '', 'es', '#SPONSOR', 'Patrocinador', 1, 20160520),
(4664, '', 'fr', '#SPONSOR', '#SPONSOR', 1, 0),
(4665, '', 'pt_BR', 'team_name', 'team_name', 1, 0),
(4666, '', 'en_US', 'team_name', 'Team Name', 1, 0),
(4667, '', 'es', 'team_name', 'Nombre del equipo', 1, 0),
(4668, '', 'fr', 'team_name', 'Nom de lÂ´Ã©quipe', 1, 0),
(4669, '', 'pt_BR', 'team_action', 'team_action', 1, 0),
(4670, '', 'en_US', 'team_action', 'Team Action', 1, 0),
(4671, '', 'es', 'team_action', 'AcciÃ³n del equipo', 1, 0),
(4672, '', 'fr', 'team_action', 'LÂ´action de lÂ´Ã©quipe', 1, 0),
(4673, '', 'pt_BR', 'member_unit', 'member_unit', 1, 0),
(4674, '', 'en_US', 'member_unit', 'member_unit', 1, 0),
(4675, '', 'es', 'member_unit', 'member_unit', 1, 0),
(4676, '', 'fr', 'member_unit', 'member_unit', 1, 0),
(4677, '', 'pt_BR', 'member_action', 'member_action', 1, 0),
(4678, '', 'en_US', 'member_action', 'Member vote', 1, 0),
(4679, '', 'es', 'member_action', 'Voto de miembro', 1, 0),
(4680, '', 'fr', 'member_action', 'member_action', 1, 0),
(4681, '', 'pt_BR', 'justsificativa', 'Justificativa', 1, 0),
(4682, '', 'en_US', 'justsificativa', 'Justification', 1, 0),
(4683, '', 'es', 'justsificativa', 'JustificaciÃ³n', 1, 0),
(4684, '', 'fr', 'justsificativa', 'Justification', 1, 0),
(4685, '', 'pt_BR', 'Justifica', 'Justificativa', 1, 0),
(4686, '', 'en_US', 'Justifica', 'Justification', 1, 0),
(4687, '', 'es', 'Justifica', 'JustificaciÃ³n', 1, 0),
(4688, '', 'fr', 'Justifica', 'Justification', 1, 0),
(7824, '', 'fr', 'Semi-annual', 'Semi-annual', 1, 0),
(7823, '', 'es', 'Semi-annual', 'Semi-anual', 1, 20160520),
(4693, '', 'pt_BR', 'tit_usuario', 'Lista de usuÃ¡rios do sistema', 1, 0),
(4694, '', 'en_US', 'tit_usuario', 'List of System Users', 1, 0),
(4695, '', 'es', 'tit_usuario', 'Registro de usuarios del sistema', 1, 20160520),
(4696, '', 'fr', 'tit_usuario', 'Liste des utilisateurs du systÃ¨me', 1, 0),
(4697, '', 'pt_BR', 'menu_admin', 'Administrador', 1, 0),
(4698, '', 'en_US', 'menu_admin', 'Admin menu', 1, 20160520),
(4699, '', 'es', 'menu_admin', 'MenÃº del administrador', 1, 20160520),
(4700, '', 'fr', 'menu_admin', 'Menu de lÂ´administrateur', 1, 0),
(4701, '', 'pt_BR', 'admin_research', 'Lista de pesquisadores', 1, 0),
(4702, '', 'en_US', 'admin_research', 'Investigators registry', 1, 20160520),
(4703, '', 'es', 'admin_research', 'Registro de investigadores', 1, 20160520),
(4704, '', 'fr', 'admin_research', 'EnquÃªteurs', 1, 0),
(4705, '', 'pt_BR', 'admin_message', 'Mensagens do Sistema', 1, 0),
(4706, '', 'en_US', 'admin_message', 'Customizable system fields', 1, 20160520),
(4707, '', 'es', 'admin_message', 'Campos parametrizables del sistema', 1, 20160520),
(4708, '', 'fr', 'admin_message', 'Messages du systÃ¨me', 1, 0),
(4709, '', 'pt_BR', 'admin_message_create', 'Atualizar mensagens do sistema', 1, 0),
(4710, '', 'en_US', 'admin_message_create', 'Update system fields', 1, 20160520),
(4711, '', 'es', 'admin_message_create', 'Actualizar campos del sistema', 1, 20160520),
(4712, '', 'fr', 'admin_message_create', 'Mise Ã  jour des messages du systÃ¨me', 1, 0),
(4713, '', 'pt_BR', 'admin_message_enable', 'Habilita modo de ediÃ§Ã£o de mensagem', 1, 0),
(4714, '', 'en_US', 'admin_message_enable', 'Enable editing mode', 1, 0),
(4715, '', 'es', 'admin_message_enable', 'Permitir modo de ediciÃ³n', 1, 0),
(4716, '', 'fr', 'admin_message_enable', 'Permettre mode dÂ´Ã©dition', 1, 0),
(7838, '', 'en_US', 'amendment_type', 'amendment_type', 1, 0),
(7837, '', 'pt_BR', 'amendment_type', 'amendment_type', 1, 0),
(4721, '', 'pt_BR', 'edir_mode_1', 'Modo de ediÃ§Ã£o habilitado', 1, 0),
(4722, '', 'en_US', 'edir_mode_1', 'Edit mode enabled', 1, 20160520),
(4723, '', 'es', 'edir_mode_1', 'Modo de ediciÃ³n habilitado', 1, 0),
(4724, '', 'fr', 'edir_mode_1', 'Mode dÂ´Ã©dition activÃ©', 1, 0),
(7836, '', 'fr', 'caption_status_P_inf', '', 1, 20160520),
(7835, '', 'es', 'caption_status_P_inf', '', 1, 20160520),
(4729, '', 'pt_BR', 'admin_message_disable', 'Desabilita modo de EdiÃ§Ã£o', 1, 0),
(4730, '', 'en_US', 'admin_message_disable', 'Disable editing mode', 1, 0),
(4731, '', 'es', 'admin_message_disable', 'Cancelar modo de ediciÃ³n', 1, 0),
(4732, '', 'fr', 'admin_message_disable', 'Quitter mode Ã©dition', 1, 0),
(4733, '', 'pt_BR', 'edit_mode_0', 'edit_mode_0', 1, 0),
(4734, '', 'en_US', 'edit_mode_0', 'Edit Mode Disabled', 1, 0),
(4735, '', 'es', 'edit_mode_0', 'Modo de ediciÃ³n deshabilitado', 1, 0),
(4736, '', 'fr', 'edit_mode_0', 'Mode edition dÃ©sactivÃ©', 1, 0),
(4737, '', 'pt_BR', 'admin_tables', 'Cadastro do sistema', 1, 0),
(4738, '', 'en_US', 'admin_tables', 'System archives', 1, 20160520),
(4739, '', 'es', 'admin_tables', 'Archivos del sistema', 1, 20160520),
(4740, '', 'fr', 'admin_tables', 'Listes', 1, 0),
(4741, '', 'pt_BR', 'admin_country', 'Lista de paises', 1, 20160520),
(4742, '', 'en_US', 'admin_country', 'List of countries', 1, 20160520),
(4743, '', 'es', 'admin_country', 'Listado de paÃ­ses', 1, 0),
(4744, '', 'fr', 'admin_country', 'Liste de pays', 1, 0),
(4745, '', 'pt_BR', 'tit_ajax_pais', 'tit_ajax_pais', 1, 0),
(4746, '', 'en_US', 'tit_ajax_pais', 'List of countries', 1, 20160520),
(4747, '', 'es', 'tit_ajax_pais', 'Listado de paises', 1, 20160520),
(4748, '', 'fr', 'tit_ajax_pais', 'Liste des Pays', 1, 0),
(4749, '', 'pt_BR', 'nome', 'Nome', 1, 0),
(4750, '', 'en_US', 'nome', 'Name', 1, 0),
(4751, '', 'es', 'nome', 'Nombre', 1, 0),
(4752, '', 'fr', 'nome', 'Nom', 1, 0),
(4753, '', 'pt_BR', 'country_name', 'Nome do PaÃ­s', 1, 0),
(4754, '', 'en_US', 'country_name', 'Country name', 1, 20160520),
(4755, '', 'es', 'country_name', 'Nombre de paÃ­s', 1, 0),
(4756, '', 'fr', 'country_name', 'Nom du Pays', 1, 0),
(4757, '', 'pt_BR', 'idioma', 'Idioma', 1, 0),
(4758, '', 'en_US', 'idioma', 'Language', 1, 0),
(4759, '', 'es', 'idioma', 'Idioma', 1, 0),
(4760, '', 'fr', 'idioma', 'Langue', 1, 0),
(4761, '', 'pt_BR', 'cep_status_@', 'Em submissÃ£o', 1, 0),
(4762, '', 'en_US', 'cep_status_@', 'In submission', 1, 0),
(4763, '', 'es', 'cep_status_@', 'PresentÃ¡ndose', 1, 0),
(4764, '', 'fr', 'cep_status_@', 'PrÃ©senter', 1, 0),
(4765, '', 'pt_BR', 'accept_to_avaliable', 'Trabalho aceito para avaliaÃ§Ã£o', 1, 0),
(4766, '', 'en_US', 'accept_to_avaliable', 'Accepted for Evaluation', 1, 0),
(4767, '', 'es', 'accept_to_avaliable', 'Aceptado para evaluaciÃ³n', 1, 0),
(4768, '', 'fr', 'accept_to_avaliable', 'Proposition acceptÃ©e pour Ã©valuation', 1, 0),
(4769, '', 'pt_BR', 'cancel_submission', 'Cancelar a submissÃ£o do projeto', 1, 0),
(4770, '', 'en_US', 'cancel_submission', 'Cancel submission', 1, 20160520),
(4771, '', 'es', 'cancel_submission', 'Cancelar presentaciÃ³n', 1, 20160520),
(4772, '', 'fr', 'cancel_submission', 'Annuler la prÃ©sentation de la proposition', 1, 0),
(7951, '', 'es', 'formato_certificacion_enmienda_proethos.', 'Formato certificaciÃ³n enmienda.', 1, 20160520),
(7950, '', 'en_US', 'formato_certificacion_enmienda_proethos.', 'Amendment certification template.', 1, 20160520),
(4777, '', 'pt_BR', 'contact', 'Contato', 1, 0),
(4778, '', 'en_US', 'contact', 'Contact', 1, 0),
(4779, '', 'es', 'contact', 'Contacto', 1, 0),
(4780, '', 'fr', 'contact', 'Contact', 1, 0),
(4781, '', 'pt_BR', 'Edition Mode Disabled', 'Modo de ediÃ§Ã£o desabilitado', 1, 0),
(4782, '', 'en_US', 'Edition Mode Disabled', 'Edit mode disabled', 1, 20160520),
(4783, '', 'es', 'Edition Mode Disabled', 'Modo de ediciÃ³n deshabilitado', 1, 0),
(4784, '', 'fr', 'Edition Mode Disabled', 'Mode edition dÃ©sactivÃ©', 1, 0),
(7834, '', 'en_US', 'caption_status_P_inf', '', 1, 20160520),
(7833, '', 'pt_BR', 'caption_status_P_inf', '', 1, 20160520),
(4789, '', 'pt_BR', 'admin_register_unit', 'Lista de Registros PrimÃ¡rios e SecundÃ¡rios', 1, 0),
(4790, '', 'en_US', 'admin_register_unit', 'List of Clinical Trial Registries', 1, 20160520),
(4791, '', 'es', 'admin_register_unit', 'Listado de registros de ensayos clÃ­nicos', 1, 20160520),
(4792, '', 'fr', 'admin_register_unit', 'Liste dÂ´enregistrements (primaire et secondaire)', 1, 0),
(4793, '', 'pt_BR', 'tit_register_unit', 'tit_register_unit', 1, 0),
(4794, '', 'en_US', 'tit_register_unit', 'List of Registries', 1, 0),
(4795, '', 'es', 'tit_register_unit', 'Listado de Registros', 1, 0),
(4796, '', 'fr', 'tit_register_unit', 'Liste des registres', 1, 0),
(4797, '', 'pt_BR', 'reg_type', 'reg_type', 1, 0),
(4798, '', 'en_US', 'reg_type', 'Registry type', 1, 20160520),
(4799, '', 'es', 'reg_type', 'Tipo de registro', 1, 20160520),
(4800, '', 'fr', 'reg_type', 'Type de registre', 1, 0),
(4801, '', 'pt_BR', 'reg_unit_P', 'Registro Internacional', 1, 0),
(4802, '', 'en_US', 'reg_unit_P', 'International registry', 1, 20160520),
(4803, '', 'es', 'reg_unit_P', 'Registro internacional', 1, 0),
(4804, '', 'fr', 'reg_unit_P', 'Registre international', 1, 0),
(4805, '', 'pt_BR', 'reg_unit_L', 'Registro nacional', 1, 0),
(4806, '', 'en_US', 'reg_unit_L', 'National registry', 1, 0),
(4807, '', 'es', 'reg_unit_L', 'Registro nacional', 1, 0),
(4808, '', 'fr', 'reg_unit_L', 'Registre national', 1, 0),
(4809, '', 'pt_BR', 'type', 'Tipo', 1, 0),
(4810, '', 'en_US', 'type', 'Type', 1, 0),
(4811, '', 'es', 'type', 'Tipo', 1, 0),
(4812, '', 'fr', 'type', 'Type', 1, 0),
(7568, '', 'fr', 'Final da pesquisa', 'Final da pesquisa', 1, 0),
(4817, '', 'pt_BR', 'edmode_2', 'Modo de ediÃ§Ã£o habilitado', 1, 0),
(4818, '', 'en_US', 'edmode_2', 'Editing mode enabled', 1, 20160520),
(4819, '', 'es', 'edmode_2', 'Modo de ediciÃ³n habilitado', 1, 0),
(4820, '', 'fr', 'edmode_2', 'Mode dÂ´Ã©dition activÃ©', 1, 0),
(4821, '', 'pt_BR', 'edmode_0', 'Modo de ediÃ§Ã£o desabilitado', 1, 0),
(4822, '', 'en_US', 'edmode_0', 'Editing mode disabled', 1, 20160520),
(4823, '', 'es', 'edmode_0', 'Modo de ediciÃ³n deshabilitado', 1, 0),
(4824, '', 'fr', 'edmode_0', 'Mode edition dÃ©sactivÃ©', 1, 0),
(4825, '', 'pt_BR', 'Enable edit Mode<A href="javascript:newx', 'Enable edit Mode<A href="javascript:newx', 1, 0),
(4826, '', 'en_US', 'Enable edit Mode<A href="javascript:newx', 'Enable edit Mode<A href="javascript:newx', 1, 0),
(4827, '', 'es', 'Enable edit Mode<A href="javascript:newx', 'Enable edit Mode<A href="javascript:newx', 1, 0),
(4828, '', 'fr', 'Enable edit Mode<A href="javascript:newx', 'Enable edit Mode<A href="javascript:newx', 1, 0),
(4829, '', 'pt_BR', 'Disabled Edit Mode', 'Disabled Edit Mode', 1, 0),
(4830, '', 'en_US', 'Disabled Edit Mode', 'Disabled Edit Mode', 1, 0),
(4831, '', 'es', 'Disabled Edit Mode', 'Disabled Edit Mode', 1, 0),
(4832, '', 'fr', 'Disabled Edit Mode', 'Mode edition dÃ©sactivÃ©', 1, 0),
(4833, '', 'pt_BR', 'contact_us', 'Para asistencia, contactenos en:', 1, 0),
(4834, '', 'en_US', 'contact_us', 'If you need further assistance, you may contact us at:', 1, 0),
(4835, '', 'es', 'contact_us', 'Si necesita ayuda, puede contactarnos en la siguiente direcciÃ³n:', 1, 0),
(4836, '', 'fr', 'contact_us', 'Si vous avez besoin dÂ´aide supplÃ©mentaire, vous pouvez nous contacter Ã :', 1, 0),
(4837, '', 'pt_BR', 'contact_us_inf', 'bioethics@paho.org', 1, 0),
(4838, '', 'en_US', 'contact_us_inf', 'bioethics@paho.org', 1, 20160520),
(4839, '', 'es', 'contact_us_inf', 'bioethics@paho.org', 1, 0),
(4840, '', 'fr', 'contact_us_inf', 'bioethics@paho.org', 1, 0),
(4841, '', 'pt_BR', 'register_primary', 'Registro PrimÃ¡rio', 1, 0),
(4842, '', 'en_US', 'register_primary', 'Primary registry', 1, 20160520),
(4843, '', 'es', 'register_primary', 'Registro principal', 1, 20160520),
(4844, '', 'fr', 'register_primary', 'Enregistrement principal', 1, 0),
(4845, '', 'pt_BR', 'protocol_accept', 'Aceitar protocolos', 1, 0),
(4846, '', 'en_US', 'protocol_accept', 'Accept Protocol', 1, 0),
(4847, '', 'es', 'protocol_accept', 'Aceptar protocolo', 1, 0),
(4848, '', 'fr', 'protocol_accept', 'Protocole accepter', 1, 20160520),
(4853, '', 'pt_BR', 'register_secundary', 'register_secundary', 1, 0),
(4854, '', 'en_US', 'register_secundary', 'Secondary registry', 1, 20160520),
(4855, '', 'es', 'register_secundary', 'Registro secundario', 1, 0),
(4856, '', 'fr', 'register_secundary', 'Registre secondaire', 1, 0),
(4857, '', 'pt_BR', 'This type the document is not valid', 'Este tipo de documento nÃ£o Ã© vÃ¡lido', 1, 0),
(4858, '', 'en_US', 'This type the document is not valid', 'This type of document is not valid', 1, 0),
(4859, '', 'es', 'This type the document is not valid', 'Este tipo de documento no es vÃ¡lido', 1, 0),
(4860, '', 'fr', 'This type the document is not valid', 'Ce type de document est invalide', 1, 0),
(7814, '', 'en_US', 'FinalizaciÃ³n de la investigaciÃ³n', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 0),
(4865, '', 'pt_BR', 'doc_1_titulo_public_info', 'doc_1_titulo_public_info', 1, 0),
(4866, '', 'en_US', 'doc_1_titulo_public_info', 'Public Title', 1, 0),
(4867, '', 'es', 'doc_1_titulo_public_info', 'TÃ­tulo pÃºblico', 1, 0),
(4868, '', 'fr', 'doc_1_titulo_public_info', 'Titre public', 1, 0),
(4873, '', 'pt_BR', 'q_title_main_inf', '', 1, 20160520),
(4874, '', 'en_US', 'q_title_main_inf', '', 1, 20160520),
(4875, '', 'es', 'q_title_main_inf', 'TÃ­tulo en lenguaje comprensible para el publico no especializado', 1, 20160520),
(4876, '', 'fr', 'q_title_main_inf', 'Titre dans un langage comprÃ©hensible pour le public non-spÃ©cialiste', 1, 0),
(4877, '', 'pt_BR', 'q_title_public', 'Public Title', 1, 0),
(4878, '', 'en_US', 'q_title_public', 'Public title', 1, 20160520),
(4879, '', 'es', 'q_title_public', 'TÃ­tulo pÃºblico', 1, 0),
(4880, '', 'fr', 'q_title_public', 'Titre public', 1, 0),
(4881, '', 'pt_BR', 'title_main', 'TÃ­tulo cientÃ­fico do projeto', 1, 0),
(4882, '', 'en_US', 'title_main', 'Scientific Title', 1, 0),
(4883, '', 'es', 'title_main', 'TÃ­tulo cientÃ­fico', 1, 0),
(4884, '', 'fr', 'title_main', 'Titre Scientifique', 1, 0),
(4885, '', 'pt_BR', 'title_public', 'TÃ­tulo pÃºblico', 1, 0),
(4886, '', 'en_US', 'title_public', 'Public Title', 1, 0),
(4887, '', 'es', 'title_public', 'TÃ­tulo pÃºblico', 1, 0),
(4888, '', 'fr', 'title_public', 'Titre Publique', 1, 0),
(4889, '', 'pt_BR', 'title_main_inf', 'TÃ­tulo cientÃ­fico do estudo que aparece no protocolo submetido para financiamento e de avaliaÃ§Ã£o Ã©tica. Por favor, inclua julgamento sigla, se disponÃ­vel.', 1, 0),
(4890, '', 'en_US', 'title_main_inf', 'Scientific title of the study as it appears in the protocol submitted for funding and ethical review. Please, include trial acronym if available.', 1, 0),
(4891, '', 'es', 'title_main_inf', 'TÃ­tulo cientÃ­fico del estudio tal como aparece en el protocolo presentado para financiamiento y revisiÃ³n Ã©tica. Incluya las siglas del ensayo si aplica.', 1, 20160520),
(4892, '', 'fr', 'title_main_inf', '', 1, 20160520),
(8663, '', 'pt_BR', 'proethos_files_inf', '', 1, 20160520),
(4893, '', 'pt_BR', 'title_public_inf', '', 1, 20160520),
(4894, '', 'en_US', 'title_public_inf', 'Title intended for the lay public in easily understood language. (Repeat the scientific title if there is no public title.)', 1, 0),
(4895, '', 'es', 'title_public_inf', 'TÃ­tulo en lenguaje comprensible para el pÃºblico no especializado. (Repita el tÃ­tulo cientÃ­fico si no hubiese un tÃ­tulo pÃºblico.)', 1, 0),
(4896, '', 'fr', 'title_public_inf', 'Titre pour le publique dans un language comprehensive.', 1, 0),
(4897, '', 'pt_BR', '_inf', '', 1, 0),
(4898, '', 'en_US', '_inf', '', 1, 0),
(4899, '', 'es', '_inf', '', 1, 0),
(4900, '', 'fr', '_inf', '', 1, 0),
(4901, '', 'pt_BR', 'keywords_inf', '', 1, 20160520),
(4902, '', 'en_US', 'keywords_inf', 'Separated by comma or semi-colon', 1, 0),
(4903, '', 'es', 'keywords_inf', 'Separadas por coma o punto y coma', 1, 0),
(4904, '', 'fr', 'keywords_inf', 'Ajoutez quelques mots clÃ©s, sÃ©parÃ©s par une virgule ou un point-virgule', 1, 0),
(4905, '', 'pt_BR', 'introduction_inf_inf', 'InformaÃ§Ã£o de introduÃ§Ã£o', 1, 0),
(4906, '', 'en_US', 'introduction_inf_inf', 'Introduction Info', 1, 0),
(4907, '', 'es', 'introduction_inf_inf', 'InformaciÃ³n de introducciÃ³n', 1, 0),
(4908, '', 'fr', 'introduction_inf_inf', 'Introduction des Infos', 1, 0),
(4909, '', 'pt_BR', 'design study_inf', 'Detalhes', 1, 0),
(4910, '', 'en_US', 'design study_inf', 'Details', 1, 0),
(4911, '', 'es', 'design study_inf', 'Detalles', 1, 0),
(4912, '', 'fr', 'design study_inf', 'DÃ©tails', 1, 0),
(4913, '', 'pt_BR', 'specific_goal_inf', 'specific_goal_inf', 1, 0),
(4914, '', 'en_US', 'specific_goal_inf', 'Specific Goal', 1, 0),
(4915, '', 'es', 'specific_goal_inf', 'Objetivo especÃ­fico', 1, 0),
(4916, '', 'fr', 'specific_goal_inf', 'Objectif spÃ©cifique', 1, 0),
(4917, '', 'pt_BR', 'methodology_inf', 'InformaÃ§Ãµes sobre a metodologia proposta', 1, 0),
(4918, '', 'en_US', 'methodology_inf', 'Methodology Info', 1, 0),
(4919, '', 'es', 'methodology_inf', 'InformaciÃ³n de la metodologÃ­a', 1, 0),
(4920, '', 'fr', 'methodology_inf', 'Info MÃ©thodologie', 1, 0),
(4921, '', 'pt_BR', 'Study design_inf', 'Study design_inf', 1, 0),
(4922, '', 'en_US', 'Study design_inf', 'Study Design Info', 1, 0),
(4923, '', 'es', 'Study design_inf', 'InformaciÃ³n del diseÃ±o del estudio', 1, 0),
(4924, '', 'fr', 'Study design_inf', 'Informations sur la conception de lÂ´Ã©tude', 1, 0),
(4925, '', 'pt_BR', 'Secondary objectives_inf', 'Secondary objectives_inf', 1, 0),
(4926, '', 'en_US', 'Secondary objectives_inf', 'Secondary objectives', 1, 20160520),
(4927, '', 'es', 'Secondary objectives_inf', 'Objetivos secundarios', 1, 0),
(4928, '', 'fr', 'Secondary objectives_inf', 'Objectifs secondaires', 1, 0),
(4929, '', 'pt_BR', 'Materials and Methods_inf', 'Materiais e metodologia', 1, 0),
(4930, '', 'en_US', 'Materials and Methods_inf', 'Materials and methodology', 1, 20160520),
(4931, '', 'es', 'Materials and Methods_inf', 'Materiales y metodologÃ­a', 1, 20160520),
(4932, '', 'fr', 'Materials and Methods_inf', 'MatÃ©riel et mÃ©thodes', 1, 0),
(4933, '', 'pt_BR', 'perfil', 'perfil', 1, 0),
(4934, '', 'en_US', 'perfil', 'Profile', 1, 20160520),
(4935, '', 'es', 'perfil', 'Perfil', 1, 20160520),
(4936, '', 'fr', 'perfil', 'Profil', 1, 0),
(4937, '', 'pt_BR', 'Objectives', 'Objetivos', 1, 0),
(4938, '', 'en_US', 'Objectives', 'Objectives', 1, 0),
(4939, '', 'es', 'Objectives', 'Objetivos', 1, 0),
(4940, '', 'fr', 'Objectives', 'Objectifs', 1, 0),
(4941, '', 'pt_BR', 'Ethical considerations', 'ConsideraÃ§Ãµes Ã©ticas', 1, 0),
(4942, '', 'en_US', 'Ethical considerations', 'Ethical considerations', 1, 0),
(4943, '', 'es', 'Ethical considerations', 'Consideraciones Ã©ticas', 1, 0),
(4944, '', 'fr', 'Ethical considerations', 'ConsidÃ©rations Ã©thiques', 1, 0),
(4945, '', 'pt_BR', 'secondary_register_other', 'Registro secundÃ¡rio', 1, 0),
(4946, '', 'en_US', 'secondary_register_other', 'Secondary registry (Other)', 1, 20160520),
(4947, '', 'es', 'secondary_register_other', 'Registro secundario (otro)', 1, 0),
(4948, '', 'fr', 'secondary_register_other', 'Registre secondaire (autre)', 1, 0),
(4949, '', 'pt_BR', 'ethical_considerations', 'Riscos e benefÃ­cios para o participante (QuestÃµes Ã©ticas)', 1, 0),
(4950, '', 'en_US', 'ethical_considerations', 'Ethical considerations', 1, 20160520),
(4951, '', 'es', 'ethical_considerations', 'Consideraciones Ã©ticas', 1, 0),
(4952, '', 'fr', 'ethical_considerations', 'Considerations Ethiques', 1, 0),
(4953, '', 'pt_BR', 'general_procedures', 'Metodologia da pesquisa e formas de recrutamento e abordagem', 1, 0),
(4954, '', 'en_US', 'general_procedures', 'General Procedures', 1, 0),
(4955, '', 'es', 'general_procedures', 'Procedimientos generales', 1, 0),
(4956, '', 'fr', 'general_procedures', 'ProcÃ©dures GÃ©nÃ©rales', 1, 0),
(4957, '', 'pt_BR', 'analysis_plan', 'Metodologia da anÃ¡lise dos dados', 1, 0),
(4958, '', 'en_US', 'analysis_plan', 'Analysis Plan', 1, 0),
(4959, '', 'es', 'analysis_plan', 'Plan de anÃ¡lisis', 1, 0),
(4960, '', 'fr', 'analysis_plan', 'Plan dÂ´analyse', 1, 0),
(4961, '', 'pt_BR', 'intervention_inf', 'Descrever as intervenÃ§Ãµes', 1, 0),
(4962, '', 'en_US', 'intervention_inf', 'Interventions', 1, 0),
(4963, '', 'es', 'intervention_inf', 'Intervenciones', 1, 0),
(4964, '', 'fr', 'intervention_inf', 'Interventions', 1, 0),
(4965, '', 'pt_BR', 'primary_outcome_inf', '', 1, 20160520),
(8658, '', 'pt_BR', 'proethos_doc_apem', 'Modelo de aprovaÃ§Ã£o de emenda', 1, 20160520),
(4966, '', 'en_US', 'primary_outcome_inf', '', 1, 20160520),
(4967, '', 'es', 'primary_outcome_inf', '', 1, 20160520),
(4968, '', 'fr', 'primary_outcome_inf', '', 1, 20160520),
(4969, '', 'pt_BR', 'seconday_outcome_inf', '', 1, 20160520),
(4970, '', 'en_US', 'seconday_outcome_inf', '', 1, 20160520),
(4971, '', 'es', 'seconday_outcome_inf', '', 1, 20160520),
(4972, '', 'fr', 'seconday_outcome_inf', '', 1, 20160520),
(4973, '', 'pt_BR', 'outcome_inf', 'InformaÃ§Ãµes sobre os resultados obtidos', 1, 0),
(4974, '', 'en_US', 'outcome_inf', 'Outcome Info', 1, 0),
(4975, '', 'es', 'outcome_inf', 'InformaciÃ³n sobre resultados', 1, 0),
(4976, '', 'fr', 'outcome_inf', 'Informations sur les rÃ©sultats', 1, 0),
(4981, '', 'pt_BR', 'general_description', 'DescriÃ§Ã£o do estudo', 1, 0),
(4982, '', 'en_US', 'general_description', 'General Description', 1, 0),
(4983, '', 'es', 'general_description', 'DescripciÃ³n general', 1, 0),
(4984, '', 'fr', 'general_description', 'Description GÃ©nÃ©rale', 1, 0),
(4985, '', 'pt_BR', 'target_sample_size', 'NÃºmero de participantes da pesquisa', 1, 0),
(4986, '', 'en_US', 'target_sample_size', 'Target Sample Size', 1, 0),
(4987, '', 'es', 'target_sample_size', 'TamaÃ±o de la muestra de la poblaciÃ³n', 1, 0),
(4988, '', 'fr', 'target_sample_size', 'Taille de lÂ´Ã©chantillon de la population', 1, 0),
(4989, '', 'pt_BR', 'date_first_enrollment', 'Date_first_enrollment', 1, 0),
(4990, '', 'en_US', 'date_first_enrollment', 'Date of first enrollment', 1, 20160520),
(4991, '', 'es', 'date_first_enrollment', 'Fecha de la primera inscripciÃ³n', 1, 0),
(4992, '', 'fr', 'date_first_enrollment', 'Date de premiÃ¨re immatriculation', 1, 0),
(4993, '', 'pt_BR', 'countries_enrollment', 'countries_enrollment', 1, 0),
(4994, '', 'en_US', 'countries_enrollment', 'Countries enrollment', 1, 20160520),
(4995, '', 'es', 'countries_enrollment', 'Registro de paÃ­ses', 1, 0),
(4996, '', 'fr', 'countries_enrollment', 'Eenregistrement du Pays', 1, 20160520),
(4997, '', 'pt_BR', 'countries_recruitment', 'Paises de recrutamento', 1, 0),
(4998, '', 'en_US', 'countries_recruitment', 'Countries recruitment', 1, 20160520),
(4999, '', 'es', 'countries_recruitment', 'Reclutamiento de paÃ­ses', 1, 0),
(5000, '', 'fr', 'countries_recruitment', 'Recrutement de Pays', 1, 0),
(5001, '', 'pt_BR', 'source_monetary', 'Origem do financiamento', 1, 0),
(5002, '', 'en_US', 'source_monetary', 'Funding Source', 1, 0),
(5003, '', 'es', 'source_monetary', 'Fuente de financiamiento', 1, 0),
(5004, '', 'fr', 'source_monetary', 'Source de Fonds', 1, 0),
(5005, '', 'pt_BR', 'schedule', 'schedule', 1, 0),
(5006, '', 'en_US', 'schedule', 'Schedule', 1, 0),
(5007, '', 'es', 'schedule', 'Horario', 1, 0),
(5008, '', 'fr', 'schedule', 'Calendrier', 1, 0),
(5009, '', 'pt_BR', 'sencondary_register', 'sencondary_register', 1, 0),
(5010, '', 'en_US', 'sencondary_register', 'Secondary registry', 1, 20160520);
INSERT INTO `_messages` (`id_msg`, `msg_pag`, `msg_language`, `msg_field`, `msg_content`, `msg_ativo`, `msg_update`) VALUES
(5011, '', 'es', 'sencondary_register', 'Registro secundario', 1, 0),
(5012, '', 'fr', 'sencondary_register', 'Enregistrement secondaire', 1, 0),
(5013, '', 'pt_BR', 'primary_sponsor', 'Patrocinador principal', 1, 0),
(5014, '', 'en_US', 'primary_sponsor', 'Primary sponsor', 1, 20160520),
(5015, '', 'es', 'primary_sponsor', 'Patrocinador principal', 1, 0),
(5016, '', 'fr', 'primary_sponsor', 'Sponsor principal', 1, 20160520),
(5017, '', 'pt_BR', 'secondary_sponsor', 'Outros patrocinadores', 1, 0),
(5018, '', 'en_US', 'secondary_sponsor', 'Secondary sponsor', 1, 20160520),
(5019, '', 'es', 'secondary_sponsor', 'Patrocinador secundario', 1, 0),
(5020, '', 'fr', 'secondary_sponsor', 'Sponsor Secondaire', 1, 0),
(5021, '', 'pt_BR', 'recruitment_status', 'SituaÃ§Ã£o do recrutamento', 1, 0),
(5022, '', 'en_US', 'recruitment_status', 'Recruitment status', 1, 20160520),
(5023, '', 'es', 'recruitment_status', 'Estado del reclutamiento', 1, 0),
(5024, '', 'fr', 'recruitment_status', 'Etat du Recrutement', 1, 20160520),
(5025, '', 'pt_BR', 'reg_date', 'Data do Registro', 1, 0),
(5026, '', 'en_US', 'reg_date', 'Registry date', 1, 20160520),
(5027, '', 'es', 'reg_date', 'Fecha de registro', 1, 0),
(5028, '', 'fr', 'reg_date', 'Date dÂ´enregistrement', 1, 0),
(5029, '', 'pt_BR', 'action_send_botton', 'Enviar', 1, 0),
(5030, '', 'en_US', 'action_send_botton', 'Submit', 1, 0),
(5031, '', 'es', 'action_send_botton', 'Enviar', 1, 0),
(5032, '', 'fr', 'action_send_botton', 'Soumettre', 1, 0),
(5033, '', 'pt_BR', 'action_accept_manuscrit', 'Aceitar manuscrito', 1, 0),
(5034, '', 'en_US', 'action_accept_manuscrit', 'Accept Manuscript', 1, 0),
(5035, '', 'es', 'action_accept_manuscrit', 'Aceptar protocolo', 1, 20160520),
(5036, '', 'fr', 'action_accept_manuscrit', 'Accepter Manuscrit', 1, 0),
(5037, '', 'pt_BR', 'action_need_consultation', 'O ComitÃª decide', 1, 0),
(5038, '', 'en_US', 'action_need_consultation', 'Committee decides if ethics review is required', 1, 0),
(5039, '', 'es', 'action_need_consultation', 'El ComitÃ© decide si requiere revision Ã©tica', 1, 0),
(5040, '', 'fr', 'action_need_consultation', 'Le ComitÃ© dÃ©cide', 1, 0),
(5041, '', 'pt_BR', 'action_accept_direct', 'Requer revisÃ£o Ã©tica pelo ComitÃª', 1, 0),
(5042, '', 'en_US', 'action_accept_direct', 'Ethics review required by committee', 1, 0),
(5043, '', 'es', 'action_accept_direct', 'SÃ­ requiere revisiÃ³n Ã©tica por parte del comitÃ©', 1, 20160520),
(5044, '', 'fr', 'action_accept_direct', 'NÃ©cessite un contrÃ´le Ã©thique', 1, 0),
(5045, '', 'pt_BR', 'communicate', 'Comunicar', 1, 0),
(5046, '', 'en_US', 'communicate', 'Communicate', 1, 0),
(5047, '', 'es', 'communicate', 'Comunicar', 1, 0),
(5048, '', 'fr', 'communicate', 'Communiquer', 1, 0),
(5049, '', 'pt_BR', 'action_rejection', 'Rejeitar', 1, 0),
(5050, '', 'en_US', 'action_rejection', 'Reject', 1, 0),
(5051, '', 'es', 'action_rejection', 'Rechazar', 1, 0),
(5052, '', 'fr', 'action_rejection', 'Rejeter', 1, 0),
(5053, '', 'pt_BR', 'action_reason_rejected', 'Informe o motivo da rejeiÃ§Ã£o', 1, 0),
(5054, '', 'en_US', 'action_reason_rejected', 'Reason for rejection', 1, 0),
(5055, '', 'es', 'action_reason_rejected', 'RazÃ³n del rechazo', 1, 0),
(5056, '', 'fr', 'action_reason_rejected', 'Raison du rejet', 1, 0),
(5057, '', 'pt_BR', 'required_field', 'required_field', 1, 0),
(5058, '', 'en_US', 'required_field', 'Required Field', 1, 0),
(5059, '', 'es', 'required_field', 'Campo requerido', 1, 0),
(5060, '', 'fr', 'required_field', 'Champs obligatoires', 1, 0),
(5061, '', 'pt_BR', 'email_return_to_submission', 'E-mail para devolver projeto', 1, 0),
(5062, '', 'en_US', 'email_return_to_submission', 'Return submission e-mail', 1, 20160520),
(5063, '', 'es', 'email_return_to_submission', 'Email devolver proyecto', 1, 0),
(5064, '', 'fr', 'email_return_to_submission', 'Email renvoyer Soumission', 1, 0),
(5065, '', 'pt_BR', 'prot_problem', 'Problema com o protocolo', 1, 0),
(5066, '', 'en_US', 'prot_problem', 'Problems with protocol', 1, 20160520),
(5067, '', 'es', 'prot_problem', 'Problemas con el protocolo', 1, 20160520),
(5068, '', 'fr', 'prot_problem', 'ProblÃ¨me avec le protocole', 1, 0),
(5069, '', 'pt_BR', 'problem', 'Problema', 1, 0),
(5070, '', 'en_US', 'problem', 'Problem', 1, 0),
(5071, '', 'es', 'problem', 'Problema', 1, 0),
(5072, '', 'fr', 'problem', 'Problem', 1, 0),
(5073, '', 'pt_BR', 'submit_send_to_edit', 'Editar este protocolo', 1, 0),
(5074, '', 'en_US', 'submit_send_to_edit', 'Edit this project', 1, 0),
(5075, '', 'es', 'submit_send_to_edit', 'Editar este proyecto', 1, 0),
(5076, '', 'fr', 'submit_send_to_edit', 'Modifier ce projet', 1, 0),
(5077, '', 'pt_BR', 'question_error', 'Erro na pergunta', 1, 0),
(5078, '', 'en_US', 'question_error', 'Question Error', 1, 0),
(5079, '', 'es', 'question_error', 'Error en la pregunta', 1, 0),
(5080, '', 'fr', 'question_error', 'Erreur dans la question', 1, 0),
(5081, '', 'pt_BR', 'analysing', 'Em revisÃ£o', 1, 0),
(5082, '', 'en_US', 'analysing', 'In review', 1, 0),
(5083, '', 'es', 'analysing', 'En revisiÃ³n', 1, 0),
(5084, '', 'fr', 'analysing', 'En revue', 1, 0),
(5085, '', 'pt_BR', 'cep_status_H', 'AnÃ¡lise preliminar do comitÃª', 1, 0),
(5086, '', 'en_US', 'cep_status_H', 'Preliminary committee analysis', 1, 20160520),
(5087, '', 'es', 'cep_status_H', 'AnÃ¡lisis preliminar del comitÃ©', 1, 0),
(5088, '', 'fr', 'cep_status_H', 'Une analyse prÃ©liminaire du comitÃ©', 1, 0),
(5089, '', 'pt_BR', 'pesq_check', 'Para seleÃ§Ã£o pelo ComitÃª', 1, 0),
(5090, '', 'en_US', 'pesq_check', 'For committee screening', 1, 20160520),
(5091, '', 'es', 'pesq_check', 'Para revisiÃ³n del comitÃ©', 1, 20160520),
(5092, '', 'fr', 'pesq_check', 'Pour la RÃ©vision du ComitÃ©', 1, 0),
(7679, '', 'es', 'contacts_inf', 'contacts_inf', 1, 0),
(7678, '', 'en_US', 'contacts_inf', 'contacts_inf', 1, 0),
(5105, '', 'pt_BR', 'action_survey', 'OpiniÃ£o do membro do ComitÃª', 1, 0),
(5106, '', 'en_US', 'action_survey', 'Committee Member opinion', 1, 0),
(5107, '', 'es', 'action_survey', 'DecisiÃ³n del comitÃ©', 1, 20160520),
(5108, '', 'fr', 'action_survey', 'OpiniÃ³n de Membre', 1, 0),
(5109, '', 'pt_BR', 'accept_manu_survey', 'Decidir', 1, 0),
(5110, '', 'en_US', 'accept_manu_survey', 'Decide', 1, 0),
(5111, '', 'es', 'accept_manu_survey', 'Decidir', 1, 0),
(5112, '', 'fr', 'accept_manu_survey', 'DÃ©cidez', 1, 0),
(5113, '', 'pt_BR', 'survey_not_avaliable', 'survey_not_avaliable', 1, 0),
(5114, '', 'en_US', 'survey_not_avaliable', 'No Opinions Available', 1, 0),
(5115, '', 'es', 'survey_not_avaliable', 'No hay opiniones disponibles', 1, 0),
(5116, '', 'fr', 'survey_not_avaliable', 'Il nÂ´y a pas de commentaires disponible', 1, 0),
(5117, '', 'pt_BR', 'result_survey', 'result_survey', 1, 0),
(5118, '', 'en_US', 'result_survey', 'Opinions', 1, 0),
(5119, '', 'es', 'result_survey', 'Opiniones', 1, 0),
(5120, '', 'fr', 'result_survey', 'Opinions', 1, 0),
(5121, '', 'pt_BR', 'available', 'DisponÃ­vel', 1, 0),
(5122, '', 'en_US', 'available', 'Available', 1, 0),
(5123, '', 'es', 'available', 'Disponible', 1, 0),
(5124, '', 'fr', 'available', 'Disponible', 1, 0),
(5125, '', 'pt_BR', 'informe_caae_number', 'atribuir o nÃºmero de NIEC', 1, 0),
(5126, '', 'en_US', 'informe_caae_number', 'Assign Number ID to protocol', 1, 20160520),
(5127, '', 'es', 'informe_caae_number', 'Asignar nÃºmero de identificaciÃ³n al protocolo', 1, 0),
(5128, '', 'fr', 'informe_caae_number', 'Attribuer numÃ©ro dÂ´identification du protocole', 1, 0),
(5129, '', 'pt_BR', 'automatically_create', 'Criar automaticamente o nÃºmero do NIEC', 1, 0),
(5130, '', 'en_US', 'automatically_create', 'Automatically Assign Number ID to Protocol', 1, 0),
(5131, '', 'es', 'automatically_create', 'Asignar automÃ¡ticamente nÃºmero de identificaciÃ³n al protocolo', 1, 0),
(5132, '', 'fr', 'automatically_create', 'Attribuer automatiquement un numÃ©ro dÂ´identification du protocole', 1, 0),
(5133, '', 'pt_BR', 'accept_manu_survey_direct', 'Decidir', 1, 0),
(5134, '', 'en_US', 'accept_manu_survey_direct', 'Decide', 1, 20160520),
(5135, '', 'es', 'accept_manu_survey_direct', 'Decidir', 1, 0),
(5136, '', 'fr', 'accept_manu_survey_direct', 'DÃ©cidez', 1, 0),
(5225, '', 'pt_BR', 'project_about', 'Sobre o projeto', 1, 0),
(5226, '', 'en_US', 'project_about', 'About the protocol:', 1, 20160520),
(5141, '', 'pt_BR', 'action_009_accept', 'Aceitar protocolo para avaliaÃ§Ã£o', 1, 0),
(5137, '', 'pt_BR', 'action_accept_rejected', 'ObservaÃ§Ãµes destinadas ao investigador principal', 1, 0),
(5138, '', 'en_US', 'action_accept_rejected', 'Observations to Investigators', 1, 0),
(5139, '', 'es', 'action_accept_rejected', 'Observaciones para los investigadores', 1, 0),
(5140, '', 'fr', 'action_accept_rejected', 'Commentaires pour les enquÃªteurs', 1, 0),
(5142, '', 'en_US', 'action_009_accept', 'Accept protocol for evaluation', 1, 0),
(5143, '', 'es', 'action_009_accept', 'Aceptar protocolo para evaluaciÃ³n', 1, 0),
(5144, '', 'fr', 'action_009_accept', 'Accepter la proposition', 1, 0),
(5145, '', 'pt_BR', 'action_003_return_sub', 'Devolver protocolo ao pesquisador', 1, 0),
(5146, '', 'en_US', 'action_003_return_sub', 'Return to Investigator', 1, 0),
(5147, '', 'es', 'action_003_return_sub', 'Devolver a investigador', 1, 0),
(5148, '', 'fr', 'action_003_return_sub', 'Retourner au enquÃªteurs', 1, 0),
(5149, '', 'pt_BR', 'action_015_survey', 'SeleÃ§Ã£o', 1, 0),
(5150, '', 'en_US', 'action_015_survey', 'Screening', 1, 0),
(5151, '', 'es', 'action_015_survey', 'Tamizaje', 1, 0),
(5152, '', 'fr', 'action_015_survey', 'Triage', 1, 0),
(5153, '', 'pt_BR', 'action_016_accept_direct', 'O Admistrador informa o resultado da seleÃ§Ã£o', 1, 0),
(5154, '', 'en_US', 'action_016_accept_direct', 'Admin enters screening decision', 1, 0),
(5155, '', 'es', 'action_016_accept_direct', 'DecisiÃ³n del tamizaje del comitÃ©', 1, 20160520),
(5156, '', 'fr', 'action_016_accept_direct', 'L Â´administrateur entre la dÃ©cision de prÃ©sÃ©lection', 1, 0),
(5157, '', 'pt_BR', 'action_017_caae', 'Atribuir o nÃºmero de identificaÃ§Ã£o do protocolo', 1, 0),
(5158, '', 'en_US', 'action_017_caae', 'Assign Number ID to Protocol', 1, 0),
(5159, '', 'es', 'action_017_caae', 'Asignar nÃºmero de identificaciÃ³n al protocolo', 1, 0),
(5160, '', 'fr', 'action_017_caae', 'Attribuer le numÃ©ro Identification de protocole', 1, 0),
(5161, '', 'pt_BR', 'action_accept_015', 'Este projeto deverÃ¡ ser submetido Ã  revisÃ£o Ã©tica pelo ComitÃª?', 1, 0),
(5162, '', 'en_US', 'action_accept_015', 'Will this proposal undergo ethics review?', 1, 0),
(5163, '', 'es', 'action_accept_015', 'Â¿Esta propuesta irÃ¡ a revisiÃ³n Ã©tica?', 1, 0),
(5164, '', 'fr', 'action_accept_015', 'Est-ce que cette proposition sera soumise Ã  un examen Ã©thique?', 1, 0),
(5165, '', 'pt_BR', 'action_accept_016', 'Este projeto deverÃ¡ ser submetido Ã  revisÃ£o Ã©tica pelo ComitÃª?', 1, 0),
(5166, '', 'en_US', 'action_accept_016', 'Will this proposal undergo ethics review by the Committee?', 1, 0),
(5167, '', 'es', 'action_accept_016', 'Â¿Esta propuesta, irÃ¡ a revisiÃ³n Ã©tica del ComitÃ©?', 1, 0),
(5168, '', 'fr', 'action_accept_016', 'Est-ce que cette proposition sera soumise Ã  un examen Ã©thique?', 1, 0),
(5174, '', 'en_US', 'yes_isento', 'exempt', 1, 0),
(5173, '', 'pt_BR', 'yes_isento', 'isento', 1, 0),
(5181, '', 'pt_BR', 'full_name', 'Nome completo', 1, 0),
(5175, '', 'es', 'yes_isento', 'exento', 1, 0),
(5176, '', 'fr', 'yes_isento', 'ExonÃ©rÃ©s', 1, 0),
(5177, '', 'pt_BR', 'yes_accept', 'aceito', 1, 0),
(5178, '', 'en_US', 'yes_accept', 'yes', 1, 0),
(5179, '', 'es', 'yes_accept', 'si', 1, 0),
(5180, '', 'fr', 'yes_accept', 'Accepter', 1, 0),
(5182, '', 'en_US', 'full_name', 'Full Name', 1, 0),
(5183, '', 'es', 'full_name', 'Nombre completo', 1, 0),
(5184, '', 'fr', 'full_name', 'Nom et PrÃ©nom', 1, 0),
(5185, '', 'pt_BR', 'newuser_full_name', 'Nome completo de usuÃ¡rio novo', 1, 0),
(5186, '', 'en_US', 'newuser_full_name', 'New user full name', 1, 20160520),
(5187, '', 'es', 'newuser_full_name', 'Nombre completo de nuevo usuario', 1, 0),
(5188, '', 'fr', 'newuser_full_name', 'Nom complet du nouvel utilisateur', 1, 0),
(5189, '', 'pt_BR', 'newuser_email', 'E-mail de usuÃ¡rio novo', 1, 0),
(5190, '', 'en_US', 'newuser_email', 'New user e-mail', 1, 20160520),
(5191, '', 'es', 'newuser_email', 'Correo electrÃ³nico de nuevo usuario', 1, 0),
(5192, '', 'fr', 'newuser_email', 'Email nouvel utilisateur', 1, 0),
(5193, '', 'pt_BR', 'newuser_email_alt', 'E-mail alternativo de usuÃ¡rio novo', 1, 0),
(5194, '', 'en_US', 'newuser_email_alt', 'New user alternate e-mail', 1, 20160520),
(5195, '', 'es', 'newuser_email_alt', 'Correo alternativo de nuevo usuario', 1, 0),
(5196, '', 'fr', 'newuser_email_alt', 'Alternative Email nouvel utilisateur', 1, 0),
(5197, '', 'pt_BR', 'newuser_institution', 'InstituiÃ§Ã£o de vÃ­nculo de novo usuÃ¡rio', 1, 0),
(5198, '', 'en_US', 'newuser_institution', 'New user institution', 1, 20160520),
(5199, '', 'es', 'newuser_institution', 'InstituciÃ³n de nuevo usuario', 1, 0),
(5200, '', 'fr', 'newuser_institution', 'Institution du nouvel utilisateur', 1, 0),
(5385, '', 'pt_BR', 'about_cep', 'Sobre o ComitÃª', 1, 0),
(5201, '', 'pt_BR', 'admin_faq', 'Perguntas freqÃ¼entes', 1, 0),
(5202, '', 'en_US', 'admin_faq', 'FAQ', 1, 0),
(5203, '', 'es', 'admin_faq', 'Preguntas frecuentes', 1, 0),
(5204, '', 'fr', 'admin_faq', 'FAQ', 1, 0),
(5205, '', 'pt_BR', 'question', 'Pergunta', 1, 0),
(5206, '', 'en_US', 'question', 'Question', 1, 0),
(5207, '', 'es', 'question', 'Pregunta', 1, 0),
(5208, '', 'fr', 'question', 'Question', 1, 0),
(5209, '', 'pt_BR', 'answer', 'Resposta', 1, 0),
(5210, '', 'en_US', 'answer', 'Answer', 1, 0),
(5211, '', 'es', 'answer', 'Respuesta', 1, 0),
(5212, '', 'fr', 'answer', 'RÃ©ponse', 1, 0),
(7567, '', 'es', 'Final da pesquisa', 'Final de la investigaciÃ³n', 1, 20160520),
(7566, '', 'en_US', 'Final da pesquisa', 'Final da pesquisa', 1, 0),
(5217, '', 'pt_BR', 'nucleo', 'Nucleo', 1, 0),
(5218, '', 'en_US', 'nucleo', 'nucleo', 1, 0),
(5219, '', 'es', 'nucleo', 'nucleo', 1, 0),
(5220, '', 'fr', 'nucleo', 'nucleus', 1, 0),
(7698, '', 'en_US', 'Reporte de eventos adversos', 'Adverse events report', 1, 20160520),
(5227, '', 'es', 'project_about', 'Acerca del protocolo:', 1, 20160520),
(5228, '', 'fr', 'project_about', 'Ã€ propos de ce projet:', 1, 0),
(5229, '', 'pt_BR', 'Submit_protocol', 'Protocolo de submissÃ£o', 1, 0),
(5230, '', 'en_US', 'Submit_protocol', 'Protocol ID', 1, 0),
(5231, '', 'es', 'Submit_protocol', 'No. de Protocolo', 1, 0),
(5232, '', 'fr', 'Submit_protocol', 'No. du Protocole', 1, 0),
(5233, '', 'pt_BR', '#FILES_ATTACH', '#FILES_ATTACH', 1, 0),
(5234, '', 'en_US', '#FILES_ATTACH', 'Attached Files', 1, 0),
(5235, '', 'es', '#FILES_ATTACH', 'Archivos adjuntos', 1, 0),
(5236, '', 'fr', '#FILES_ATTACH', 'PiÃ¨ces jointes', 1, 0),
(5237, '', 'pt_BR', 'TERM_SUBMIT', 'Termo de SubmissÃ£o', 1, 0),
(5238, '', 'en_US', 'TERM_SUBMIT', 'TERM SUBMIT', 1, 0),
(5239, '', 'es', 'TERM_SUBMIT', 'Enviar', 1, 20160520),
(5240, '', 'fr', 'TERM_SUBMIT', 'Soumettre', 1, 0),
(7803, '', 'es', 'Argentina', 'Argentina', 1, 0),
(7802, '', 'en_US', 'Argentina', 'Argentina', 1, 0),
(7801, '', 'pt_BR', 'Argentina', 'Argentina', 1, 0),
(5245, '', 'pt_BR', 'secondary_registro_other', 'secondary_registro_other', 1, 0),
(5246, '', 'en_US', 'secondary_registro_other', 'Other secondary registry', 1, 20160520),
(5247, '', 'es', 'secondary_registro_other', 'Otro registro secundario', 1, 20160520),
(5248, '', 'fr', 'secondary_registro_other', 'Enregistrement secondaire', 1, 0),
(7665, '', 'pt_BR', 'secondary_sponsor_inf', '', 1, 20160520),
(5253, '', 'pt_BR', 'login_required', 'NecessÃ¡rio login', 1, 0),
(5254, '', 'en_US', 'login_required', 'Login required', 1, 20160520),
(5255, '', 'es', 'login_required', 'Inicio de sesiÃ³n requerido', 1, 0),
(5256, '', 'fr', 'login_required', 'Connexion obligatoire', 1, 0),
(5257, '', 'pt_BR', 'other', 'other', 1, 0),
(5258, '', 'en_US', 'other', 'other', 1, 0),
(5259, '', 'es', 'other', 'otro', 1, 0),
(5260, '', 'fr', 'other', 'Autre', 1, 0),
(5261, '', 'pt_BR', 'abstract_inf', 'Por favor, escreva um breve resumo de seu projeto incluindo seus componentes. NÃ£o deixe de mencionar a relevÃ¢ncia da proposta para a SaÃºde PÃºblica.', 1, 0),
(5262, '', 'en_US', 'abstract_inf', 'Provide a brief summary of the proposal and its components. This section should briefly mention the potential value of this research.', 1, 0),
(5263, '', 'es', 'abstract_inf', 'Provea un breve resumen del protocolo y sus componentes. Esta seccion deberÃ­a mencionar brevemente el valor potencial de esta investigaciÃ³n.', 1, 20160520),
(5264, '', 'fr', 'abstract_inf', 'SÂ´il vous plaÃ®t fournir un bref rÃ©sumÃ© de la proposition et de ses Ã©lÃ©ments. Cette section doit briÃ¨vement mentionner la valeur potentielle de cette recherche pour la santÃ© publique.', 1, 0),
(7639, '', 'es', 'general_procedures_inf', 'InformaciÃ³n de procedimientos generales', 1, 20160520),
(7638, '', 'en_US', 'general_procedures_inf', 'general_procedures_inf', 1, 0),
(7574, '', 'en_US', 'justsificativa_inf', 'justsificativa_inf', 1, 0),
(7569, '', 'pt_BR', 'team_inf', 'team_inf', 1, 0),
(7570, '', 'en_US', 'team_inf', 'team_inf', 1, 0),
(7571, '', 'es', 'team_inf', 'InformaciÃ³n del equipo', 1, 20160520),
(7572, '', 'fr', 'team_inf', 'team_inf', 1, 0),
(7573, '', 'pt_BR', 'justsificativa_inf', 'justsificativa_inf', 1, 0),
(5277, '', 'pt_BR', '#save_next_inf', '#save_next_inf', 1, 0),
(5278, '', 'en_US', '#save_next_inf', 'Save and Next', 1, 0),
(5279, '', 'es', '#save_next_inf', 'Guardar y siguiente', 1, 20160520),
(5280, '', 'fr', '#save_next_inf', '#save_next_inf', 1, 0),
(5282, '', 'en_US', 'Desabilitado mode de edi??o', 'Editing mode disabled', 1, 20160520),
(5283, '', 'es', 'Desabilitado mode de edi??o', 'Modo de ediciÃ³n deshabilitado', 1, 20160520),
(5284, '', 'fr', 'Desabilitado mode de edi??o', 'Mode Edition handicapÃ©s', 1, 0),
(5285, '', 'pt_BR', 'reference_inf', 'reference_inf', 1, 0),
(5286, '', 'en_US', 'reference_inf', '', 1, 0),
(5287, '', 'es', 'reference_inf', 'InformaciÃ³n de referencia', 1, 20160520),
(5288, '', 'fr', 'reference_inf', 'reference_inf', 1, 0),
(5289, '', 'pt_BR', 'Files_inf', 'InformaÃ§Ãµes sobre arquivo(s)', 1, 0),
(5290, '', 'en_US', 'Files_inf', 'Files information', 1, 20160520),
(5291, '', 'es', 'Files_inf', 'InformaciÃ³n de archivos', 1, 20160520),
(5292, '', 'fr', 'Files_inf', 'Informations sur les fichiers', 1, 0),
(7686, '', 'en_US', 'local_ethical_inf', '', 1, 20160520),
(7685, '', 'pt_BR', 'local_ethical_inf', '', 1, 20160520),
(7684, '', 'fr', 'scientific_contact_inf', '', 1, 20160520),
(7668, '', 'fr', 'secondary_sponsor_inf', '', 1, 20160520),
(7667, '', 'es', 'secondary_sponsor_inf', '', 1, 20160520),
(7666, '', 'en_US', 'secondary_sponsor_inf', '', 1, 20160520),
(7635, '', 'es', 'countries_recruitment_inf', '', 1, 20160520),
(7634, '', 'en_US', 'countries_recruitment_inf', '', 1, 20160520),
(7631, '', 'es', 'recruitment_status_inf', '', 1, 20160520),
(7632, '', 'fr', 'recruitment_status_inf', '', 1, 20160520),
(7633, '', 'pt_BR', 'countries_recruitment_inf', '', 1, 20160520),
(7804, '', 'fr', 'Argentina', 'Argentina', 1, 0),
(7805, '', 'pt_BR', 'Semi-anual', 'Semi-anual', 1, 0),
(7806, '', 'en_US', 'Semi-anual', 'Semi-annual', 1, 20160520),
(7807, '', 'es', 'Semi-anual', 'Semi-anual', 1, 0),
(7808, '', 'fr', 'Semi-anual', 'Semi-anual', 1, 0),
(7809, '', 'pt_BR', 'Monitoreo anual', 'Monitoreo anual', 1, 0),
(7810, '', 'en_US', 'Monitoreo anual', 'Annual monitoring', 1, 20160520),
(7811, '', 'es', 'Monitoreo anual', 'Monitoreo anual', 1, 0),
(7812, '', 'fr', 'Monitoreo anual', 'Monitoreo anual', 1, 0),
(7813, '', 'pt_BR', 'FinalizaciÃ³n de la investigaciÃ³n', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 0),
(7524, '', 'fr', 'Modo de ediÃ§Ã£o desabilitado', 'Modo de ediÃ§Ã£o desabilitado', 1, 0),
(7705, '', 'pt_BR', 'Total_of_the', 'Total de', 1, 20160520),
(7704, '', 'fr', 'Antarctica', 'Antarctica', 1, 0),
(7703, '', 'es', 'Antarctica', 'Antarctica', 1, 0),
(7702, '', 'en_US', 'Antarctica', 'Antarctica', 1, 0),
(5333, '', 'pt_BR', 'primary_register_inf', 'primary_register_inf', 1, 0),
(5334, '', 'en_US', 'primary_register_inf', 'Primary registry info', 1, 20160520),
(5335, '', 'es', 'primary_register_inf', 'InformaciÃ³n del registro primario', 1, 20160520),
(5336, '', 'fr', 'primary_register_inf', 'primary_register_inf', 1, 0),
(5337, '', 'pt_BR', 'sencondary_register_inf', '', 1, 20160520),
(5338, '', 'en_US', 'sencondary_register_inf', '', 1, 20160520),
(5339, '', 'es', 'sencondary_register_inf', '', 1, 20160520),
(5340, '', 'fr', 'sencondary_register_inf', '', 1, 20160520),
(7463, '', 'es', 'harvesting_info', 'harvesting_info', 1, 0),
(7462, '', 'en_US', 'harvesting_info', 'harvesting_info', 1, 0),
(7461, '', 'pt_BR', 'harvesting_info', 'harvesting_info', 1, 0),
(7460, '', 'fr', 'harvesting_key', 'harvesting_key', 1, 0),
(5345, '', 'pt_BR', 'BUDGET_inf', 'BUDGET_inf', 1, 0),
(5346, '', 'en_US', 'BUDGET_inf', 'BUDGET', 1, 0),
(5347, '', 'es', 'BUDGET_inf', 'PRESUPUESTO', 1, 0),
(5348, '', 'fr', 'BUDGET_inf', 'BUDGET_inf', 1, 0),
(7664, '', 'fr', 'primary_sponsor_inf', '', 1, 20160520),
(7663, '', 'es', 'primary_sponsor_inf', '', 1, 20160520),
(5353, '', 'pt_BR', 'source_monetary_inf', 'Informar a fonte de financiamento. Informar como financiamento prÃ³prio case seja custeado exclusivamente pelo pesquisador', 1, 0),
(5354, '', 'en_US', 'source_monetary_inf', 'source_monetary_inf', 1, 0),
(5355, '', 'es', 'source_monetary_inf', 'InformaciÃ³n de la fuente de fondos', 1, 20160520),
(5356, '', 'fr', 'source_monetary_inf', 'source_monetary_inf', 1, 0),
(7542, '', 'en_US', 'Not Approved', 'Not approved', 1, 20160520),
(7541, '', 'pt_BR', 'Not Approved', 'Not Approved', 1, 0),
(7540, '', 'fr', 'Exempt', 'Exempt', 1, 0),
(7539, '', 'es', 'Exempt', 'Exento', 1, 0),
(7459, '', 'es', 'harvesting_key', 'harvesting_key', 1, 0),
(7458, '', 'en_US', 'harvesting_key', 'harvesting_key', 1, 0),
(7457, '', 'pt_BR', 'harvesting_key', 'harvesting_key', 1, 0),
(7453, '', 'pt_BR', 'harvesting', 'harvesting', 1, 0),
(7454, '', 'en_US', 'harvesting', 'harvesting', 1, 0),
(7455, '', 'es', 'harvesting', 'harvesting', 1, 0),
(7456, '', 'fr', 'harvesting', 'harvesting', 1, 0),
(5369, '', 'pt_BR', 'abstract_field', 'Resumo e palavras-chave', 1, 0),
(5370, '', 'en_US', 'abstract_field', 'Summary and Key Words', 1, 0),
(5371, '', 'es', 'abstract_field', 'Resumen y palabras clave', 1, 0),
(5372, '', 'fr', 'abstract_field', 'RÃ©sumÃ© du projet', 1, 0),
(5373, '', 'pt_BR', 'abstract_field_inf', 'abstract_field_inf', 1, 0),
(5374, '', 'en_US', 'abstract_field_inf', 'Abstract_field_inf', 1, 0),
(5375, '', 'es', 'abstract_field_inf', 'Campo para informaciÃ³n de resumen', 1, 20160520),
(5376, '', 'fr', 'abstract_field_inf', 'abstract_field_inf', 1, 0),
(5377, '', 'pt_BR', 'reserach_name', 'Pesquisador', 1, 0),
(5378, '', 'en_US', 'reserach_name', 'Name of investigator', 1, 20160520),
(5379, '', 'es', 'reserach_name', 'Nombre del investigador', 1, 0),
(5380, '', 'fr', 'reserach_name', 'Nom de lÂ’ enquÃªteurs', 1, 20160520),
(5381, '', 'pt_BR', 'relator_name', 'relator_name', 1, 0),
(5382, '', 'en_US', 'relator_name', 'Reviewer name', 1, 20160520),
(5383, '', 'es', 'relator_name', 'Nombre del revisor', 1, 0),
(5384, '', 'fr', 'relator_name', 'relator_name', 1, 0),
(5386, '', 'en_US', 'about_cep', 'An online platform for the ethics review of research with humans.', 1, 20160520),
(5387, '', 'es', 'about_cep', 'Una plataforma en lÃ­nea para la revision Ã©tica de la investigaciÃ³n con humanos.', 1, 20160520),
(5388, '', 'fr', 'about_cep', 'Ã€ propos du ComitÃ©', 1, 0),
(5389, '', 'pt_BR', 'about_project', 'Este projeto Ã© resultante de colaboraÃ§Ã£o entre a OrganizaÃ§Ã£o Panamericana de SaÃºde e a PontifÃ­cia Universidade CatÃ³lica do ParanÃ¡ (Brasil).', 1, 0),
(5390, '', 'en_US', 'about_project', 'This project is a collaboration between The Pan American Health Organization and The Pontificia Universidade Catolica do Parana (Brazil).', 1, 0),
(5391, '', 'es', 'about_project', 'Este proyecto es una colaboraciÃ³n entre la OrganizaciÃ³n Panamericana de la Salud y la Pontificia Universidad Catolica de Parana (Brasil).', 1, 0),
(5392, '', 'fr', 'about_project', 'Ce projet est une collaboration entre lÂ´Organisation PanamÃ©ricaine de la SantÃ© et de lÂ´UniversitÃ© Pontificale Catholique du Parana (BrÃ©sil).', 1, 0),
(7974, '', 'en_US', 'show', 'show', 1, 0),
(7973, '', 'pt_BR', 'show', 'show', 1, 0),
(7972, '', 'fr', 'color', 'color', 1, 0),
(7971, '', 'es', 'color', 'color', 1, 0),
(5397, '', 'pt_BR', 'Save and Next', 'Salvar e continuar &gt;&gt;&gt;', 1, 20160520),
(5398, '', 'en_US', 'Save and Next', 'Save and next', 1, 20160520),
(5399, '', 'es', 'Save and Next', 'Guardar y siguiente', 1, 0),
(5400, '', 'fr', 'Save and Next', 'Enregistrer et Suivant', 1, 0),
(5401, '', 'pt_BR', 'Save and Next_inf', '', 1, 20160520),
(5402, '', 'en_US', 'Save and Next_inf', '', 1, 20160520),
(5403, '', 'es', 'Save and Next_inf', '', 1, 20160520),
(5404, '', 'fr', 'Save and Next_inf', '', 1, 20160520),
(5405, '', 'pt_BR', 'admin_perfil', 'Perfil dos usuÃ¡rios', 1, 0),
(5406, '', 'en_US', 'admin_perfil', 'Users profiles', 1, 0),
(5407, '', 'es', 'admin_perfil', 'Perfil de los usuarios', 1, 0),
(5408, '', 'fr', 'admin_perfil', 'Profil de lÂ´administrateur', 1, 0),
(5409, '', 'pt_BR', 'perfil_member', 'Atribuir perfil a usuÃ¡rios', 1, 0),
(5410, '', 'en_US', 'perfil_member', 'Profile assignment', 1, 0),
(5411, '', 'es', 'perfil_member', 'AsignaciÃ³n de perfiles', 1, 0),
(5412, '', 'fr', 'perfil_member', 'Attribuez le profil de lÂ´utilisateur', 1, 0),
(5413, '', 'pt_BR', 'submit_process', 'SubmissÃ£o de protocolo de pesquisa', 1, 0),
(5414, '', 'en_US', 'submit_process', 'Submission of research protocol', 1, 0),
(5415, '', 'es', 'submit_process', 'PresentaciÃ³n de protocolo de investigaciÃ³n', 1, 20160520),
(5416, '', 'fr', 'submit_process', 'PrÃ©sentation du projet de recherche', 1, 0),
(5417, '', 'pt_BR', 'requered', 'Ã© obrigatÃ³rio', 1, 0),
(5418, '', 'en_US', 'requered', 'is required', 1, 0),
(5419, '', 'es', 'requered', 'es obligatorio', 1, 0),
(5420, '', 'fr', 'requered', 'est obligatoire', 1, 0),
(5421, '', 'pt_BR', 'no_projects', 'Nenhum projeto cadastrado', 1, 0),
(5422, '', 'en_US', 'no_projects', '** No projects registered **', 1, 0),
(5423, '', 'es', 'no_projects', 'No hay proyectos', 1, 20160520),
(5424, '', 'fr', 'no_projects', '**Pas de projets enregistrÃ©s**', 1, 0),
(5425, '', 'pt_BR', 'Tipo de documento inv?lido', 'Tipo de documento invÃ¡lido', 1, 0),
(5426, '', 'en_US', 'Tipo de documento inv?lido', 'Invalid type of document', 1, 0),
(5427, '', 'es', 'Tipo de documento inv?lido', 'Tipo de documento invÃ¡lido', 1, 0),
(5428, '', 'fr', 'Tipo de documento inv?lido', 'Type de document invalide', 1, 0),
(5429, '', 'pt_BR', 'references', 'Referencias', 1, 0),
(5430, '', 'en_US', 'references', 'References', 1, 0),
(5431, '', 'es', 'references', 'Referencias', 1, 0),
(5432, '', 'fr', 'references', 'References', 1, 0),
(7522, '', 'en_US', 'Modo de ediÃ§Ã£o desabilitado', 'Editing mode disabled', 1, 20160520),
(7521, '', 'pt_BR', 'Modo de ediÃ§Ã£o desabilitado', 'Modo de ediÃ§Ã£o desabilitado', 1, 0),
(5437, '', 'pt_BR', 'team', 'Equipe de pesquisa', 1, 0),
(5438, '', 'en_US', 'team', 'Team', 1, 0),
(5439, '', 'es', 'team', 'Equipo', 1, 0),
(5440, '', 'fr', 'team', 'Ã‰quipe', 1, 0),
(7816, '', 'fr', 'FinalizaciÃ³n de la investigaciÃ³n', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 0),
(7815, '', 'es', 'FinalizaciÃ³n de la investigaciÃ³n', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 0),
(7819, '', 'es', 'cep', 'ComitÃ© de Ã‰tica de la InvestigaciÃ³n', 1, 20160520),
(7818, '', 'en_US', 'cep', 'Ethics Review Committee', 1, 20160520),
(7817, '', 'pt_BR', 'cep', 'cep', 1, 0),
(5449, '', 'pt_BR', 'select_project', 'Selecione o protocolo', 1, 0),
(5450, '', 'en_US', 'select_project', 'Select protocol', 1, 20160520),
(5451, '', 'es', 'select_project', 'Seleccione un protocolo', 1, 20160520),
(5452, '', 'fr', 'select_project', 'SÃ©lectionnez un Projet', 1, 0),
(5453, '', 'pt_BR', 'document_type', 'Tipos de Documentos do Sistema', 1, 0),
(5454, '', 'en_US', 'document_type', 'Types of system documents', 1, 20160520),
(5455, '', 'es', 'document_type', 'Tipos de documentos del sistema', 1, 20160520),
(5456, '', 'fr', 'document_type', 'Types de documents', 1, 0),
(7527, '', 'es', 'return_to_edition', 'Regresar a ediciÃ³n', 1, 20160520),
(7526, '', 'en_US', 'return_to_edition', 'Return to edit', 1, 20160520),
(5461, '', 'pt_BR', 'avaliador', 'Avaliador', 1, 0),
(5462, '', 'en_US', 'avaliador', 'Reviewer', 1, 20160520),
(5463, '', 'es', 'avaliador', 'Revisor', 1, 20160520),
(5464, '', 'fr', 'avaliador', 'Ã‰valuateur', 1, 0),
(5465, '', 'pt_BR', 'autor', 'Autor', 1, 0),
(5466, '', 'en_US', 'autor', 'Author', 1, 0),
(5467, '', 'es', 'autor', 'Autor', 1, 0),
(5468, '', 'fr', 'autor', 'Auteur', 1, 0),
(5469, '', 'pt_BR', 'restrito', 'Membros do comitÃª', 1, 0),
(5470, '', 'en_US', 'restrito', 'Committee Members', 1, 0),
(5471, '', 'es', 'restrito', 'Miembros del comitÃ©', 1, 20160520),
(5472, '', 'fr', 'restrito', 'Membres du comitÃ©', 1, 0),
(5477, '', 'pt_BR', 'cep_ged_documento_tipo', 'Tipo de documento', 1, 0),
(5478, '', 'en_US', 'cep_ged_documento_tipo', 'Type of document', 1, 20160520),
(5479, '', 'es', 'cep_ged_documento_tipo', 'Tipo de documento', 1, 0),
(5480, '', 'fr', 'cep_ged_documento_tipo', 'Type de document', 1, 0),
(5481, '', 'pt_BR', 'message_create_with_success', 'Mensagens atualizadas com sucesso!', 1, 0),
(5482, '', 'en_US', 'message_create_with_success', 'Update successful', 1, 20160520),
(5483, '', 'es', 'message_create_with_success', 'ActualizaciÃ³n exitosa', 1, 20160520),
(5484, '', 'fr', 'message_create_with_success', 'Changement rÃ©ussi', 1, 0),
(5485, '', 'pt_BR', 'contacts', 'Contato publico com o pesquisador', 1, 0),
(5486, '', 'en_US', 'contacts', 'Contacts', 1, 0),
(5487, '', 'es', 'contacts', 'Contactos', 1, 0),
(5488, '', 'fr', 'contacts', 'Contact du public avec lÂ’ enquÃªteur', 1, 20160520),
(7949, '', 'pt_BR', 'formato_certificacion_enmienda_proethos.', 'formato_certificacion_enmienda_proethos.', 1, 0),
(5493, '', 'pt_BR', 'public_contact', 'Contato pÃºblico', 1, 0),
(5494, '', 'en_US', 'public_contact', 'Public Contact', 1, 0),
(5495, '', 'es', 'public_contact', 'Contacto pÃºblico', 1, 0),
(5496, '', 'fr', 'public_contact', 'Contact publique', 1, 0),
(7525, '', 'pt_BR', 'return_to_edition', 'return_to_edition', 1, 0),
(5501, '', 'pt_BR', 'scientific_contact', 'scientific_contact', 1, 0),
(5502, '', 'en_US', 'scientific_contact', 'Scientific contact', 1, 20160520),
(5503, '', 'es', 'scientific_contact', 'Contacto cientÃ­fico', 1, 0),
(5504, '', 'fr', 'scientific_contact', 'Contact scientifique', 1, 0),
(7470, '', 'en_US', 'pm_NOA', 'Exempt', 1, 20160520),
(7469, '', 'pt_BR', 'pm_NOA', 'pm_NOA', 1, 0),
(7468, '', 'fr', 'publico', 'publico', 1, 0),
(7467, '', 'es', 'publico', 'publico', 1, 0),
(5509, '', 'pt_BR', 'documento_type', 'documento_type', 1, 0),
(5510, '', 'en_US', 'documento_type', 'Tipo de documento', 1, 20160520),
(5511, '', 'es', 'documento_type', 'Tipo de documento', 1, 20160520),
(5512, '', 'fr', 'documento_type', 'Type de document', 1, 0),
(5513, '', 'pt_BR', '#tcue', '#tcue', 1, 0),
(5514, '', 'en_US', '#tcue', 'Local Ethical Approval', 1, 0),
(5515, '', 'es', '#tcue', 'Aprobacion etica local', 1, 0),
(5516, '', 'fr', '#tcue', 'Approbation Ã©thique local', 1, 0),
(5517, '', 'pt_BR', 'upload', 'upload', 1, 0),
(5518, '', 'en_US', 'upload', 'Upload', 1, 0),
(5519, '', 'es', 'upload', 'Subir', 1, 0),
(5520, '', 'fr', 'upload', 'TÃ©lÃ©charger', 1, 0),
(5521, '', 'pt_BR', 'upload_submit', 'Enviar arquivo para submissÃ£o', 1, 0),
(5522, '', 'en_US', 'upload_submit', 'Upload File', 1, 0),
(5523, '', 'es', 'upload_submit', 'Subir archivo', 1, 0),
(5524, '', 'fr', 'upload_submit', 'upload_submit', 1, 0),
(5525, '', 'pt_BR', 'Disable Edit Mode', 'Desabilita modo de ediÃ§Ã£o', 1, 0),
(5526, '', 'en_US', 'Disable Edit Mode', 'Disable Edit Mode', 1, 0),
(5527, '', 'es', 'Disable Edit Mode', 'Deshabilitar modo de ediciÃ³n', 1, 20160520),
(5528, '', 'fr', 'Disable Edit Mode', 'DÃ©sactiver le mode Ã‰dition', 1, 0),
(5529, '', 'pt_BR', 'Proposal', 'Projeto de pesquisa', 1, 0),
(5530, '', 'en_US', 'Proposal', 'Protocol', 1, 20160520),
(5531, '', 'es', 'Proposal', 'Protocolo', 1, 20160520),
(5532, '', 'fr', 'Proposal', 'Proposition', 1, 0),
(7655, '', 'es', 'HIDDEN', 'HIDDEN', 1, 0),
(7654, '', 'en_US', 'HIDDEN', 'HIDDEN', 1, 0),
(7653, '', 'pt_BR', 'HIDDEN', 'HIDDEN', 1, 0),
(5537, '', 'pt_BR', 'Local Ethical Approval', 'Parecer do ComitÃª', 1, 0),
(5538, '', 'en_US', 'Local Ethical Approval', 'Committee decision', 1, 20160520),
(5539, '', 'es', 'Local Ethical Approval', 'DecisiÃ³n del comitÃ©', 1, 20160520),
(5540, '', 'fr', 'Local Ethical Approval', 'Approbation locale de lÂ´Ã©thique', 1, 20160520),
(7711, '', 'es', 'in_taks', 'actividades', 1, 0),
(7710, '', 'en_US', 'in_taks', 'tasks', 1, 0),
(7709, '', 'pt_BR', 'in_taks', 'atividades', 1, 0),
(7708, '', 'fr', 'Total_of_the', 'Total_of_the', 1, 0),
(7942, '', 'en_US', 'gi_ged_docume', 'gi_ged_docume', 1, 0),
(7941, '', 'pt_BR', 'gi_ged_docume', 'gi_ged_docume', 1, 0),
(5549, '', 'pt_BR', 'indication', 'IndicaÃ§Ã£o', 1, 0),
(5550, '', 'en_US', 'indication', 'Indication', 1, 0),
(5551, '', 'es', 'indication', 'IndicaciÃ³n', 1, 0),
(5552, '', 'fr', 'indication', 'Indication', 1, 0),
(5553, '', 'pt_BR', 'my_profile', 'Meu Perfil', 1, 0),
(5554, '', 'en_US', 'my_profile', 'My profile', 1, 20160520),
(5555, '', 'es', 'my_profile', 'Mi perfil', 1, 0),
(5556, '', 'fr', 'my_profile', 'Mon profil', 1, 0),
(5557, '', 'pt_BR', 'assign_to_user_profile', 'Inserir perfil de usuÃ¡rio', 1, 0),
(5558, '', 'en_US', 'assign_to_user_profile', 'User Profile', 1, 20160520),
(5559, '', 'es', 'assign_to_user_profile', 'Perfil de usuario', 1, 20160520),
(5560, '', 'fr', 'assign_to_user_profile', 'Assigner profil de lÂ´utilisateur', 1, 0),
(5561, '', 'pt_BR', 'users', 'UsuÃ¡rios', 1, 0),
(5562, '', 'en_US', 'users', 'Users', 1, 0),
(5563, '', 'es', 'users', 'Usuarios', 1, 0),
(5564, '', 'fr', 'users', 'Utilisateur', 1, 0),
(7580, '', 'fr', 'Objectives_inf', 'Objectives_inf', 1, 0),
(7579, '', 'es', 'Objectives_inf', 'InformaciÃ³n de objetivos', 1, 20160520),
(5569, '', 'pt_BR', 'inative', 'inative', 1, 0),
(5570, '', 'en_US', 'inative', 'Inactive', 1, 0),
(5571, '', 'es', 'inative', 'Inactivo', 1, 0),
(5572, '', 'fr', 'inative', 'inactif', 1, 0),
(7831, '', 'es', 'End of the investigation', 'Final de la investigaciÃ³n', 1, 20160520),
(5577, '', 'pt_BR', 'account', 'Dados da conta', 1, 0),
(5578, '', 'en_US', 'account', 'Account Data', 1, 0),
(5579, '', 'es', 'account', 'Datos de la cuenta', 1, 0),
(5580, '', 'fr', 'account', 'DonnÃ©es de compte', 1, 0),
(5581, '', 'pt_BR', 'profile', 'profile', 1, 0),
(5582, '', 'en_US', 'profile', 'Profile', 1, 0),
(5583, '', 'es', 'profile', 'Perfil', 1, 0),
(5584, '', 'fr', 'profile', 'Profil', 1, 0),
(5585, '', 'pt_BR', 'back', 'back', 1, 0),
(5586, '', 'en_US', 'back', 'Back', 1, 0),
(5587, '', 'es', 'back', 'Atras', 1, 0),
(5588, '', 'fr', 'back', 'Retouner', 1, 0),
(5589, '', 'pt_BR', 'subm_to_accept', 'ValidaÃ§Ã£o dos dados', 1, 0),
(5590, '', 'en_US', 'subm_to_accept', 'Pending data validation', 1, 20160520),
(5591, '', 'es', 'subm_to_accept', 'Pendiente validaciÃ³n de datos', 1, 20160520),
(5592, '', 'fr', 'subm_to_accept', 'Validation des donnÃ©es', 1, 0),
(5593, '', 'pt_BR', 'project_title', 'TÃ­tulo do projeto', 1, 0),
(5594, '', 'en_US', 'project_title', 'Title', 1, 20160520),
(5595, '', 'es', 'project_title', 'TÃ­tulo', 1, 20160520),
(5596, '', 'fr', 'project_title', 'Titre du projet', 1, 0),
(5597, '', 'pt_BR', 'project_status', '&lt;I&gt;status&lt;/I&gt;', 1, 20160520),
(5598, '', 'en_US', 'project_status', 'Protocol status', 1, 20160520),
(5599, '', 'es', 'project_status', 'Estado del protocolo', 1, 20160520),
(5600, '', 'fr', 'project_status', 'project_status', 1, 0),
(5601, '', 'pt_BR', 'project_investigador', 'Pesquisadores do projeto', 1, 0),
(5602, '', 'en_US', 'project_investigador', 'Investigators', 1, 20160520),
(5603, '', 'es', 'project_investigador', 'Investigadores', 1, 20160520),
(5604, '', 'fr', 'project_investigador', 'Projets de lÂ´EnquÃªteur', 1, 0),
(5605, '', 'pt_BR', 'protocol_id', 'protocol_id', 1, 0),
(5606, '', 'en_US', 'protocol_id', 'Protocol ID', 1, 0),
(5607, '', 'es', 'protocol_id', 'No de Protocolo', 1, 0),
(5608, '', 'fr', 'protocol_id', 'protocol_id', 1, 0),
(7940, '', 'fr', 'gt_ged_docume', 'gt_ged_docume', 1, 0),
(7939, '', 'es', 'gt_ged_docume', 'gt_ged_docume', 1, 0),
(7777, '', 'pt_BR', 'Consentimiento informado', 'Consentimiento informado', 1, 0),
(7776, '', 'fr', 'Presupuesto', 'Presupuesto', 1, 0),
(7775, '', 'es', 'Presupuesto', 'Presupuesto', 1, 0),
(5617, '', 'pt_BR', 'email_protocol_submited', 'email_protocol_submited', 1, 0),
(5618, '', 'en_US', 'email_protocol_submited', 'Protocol submitted e-mail', 1, 20160520),
(5619, '', 'es', 'email_protocol_submited', 'Correo protocolo enviado', 1, 20160520),
(5620, '', 'fr', 'email_protocol_submited', 'email_protocol_submited', 1, 0),
(5621, '', 'pt_BR', 'admin_post_mail', 'ComunicaÃ§Ã£o por e-mail', 1, 0),
(5622, '', 'en_US', 'admin_post_mail', 'E-mail communications', 1, 0),
(5623, '', 'es', 'admin_post_mail', 'Comunicaciones electrÃ³nicas', 1, 20160520),
(5624, '', 'fr', 'admin_post_mail', 'Messages Ã©lectroniques admin', 1, 0),
(5625, '', 'pt_BR', 'post_mail', 'Editar e-mail de comunicaÃ§Ã£o', 1, 0),
(5626, '', 'en_US', 'post_mail', 'Edit communications email', 1, 20160520),
(5627, '', 'es', 'post_mail', 'Editar e-mails de comunicaciones', 1, 0),
(5628, '', 'fr', 'post_mail', 'Modifier communications Ã©lectroniques', 1, 0),
(5629, '', 'pt_BR', 'messages_with_investigator', 'Mensagens com o pesquisador principal', 1, 0),
(5630, '', 'en_US', 'messages_with_investigator', 'Communications', 1, 20160520),
(5631, '', 'es', 'messages_with_investigator', 'Comunicaciones', 1, 20160520),
(5632, '', 'fr', 'messages_with_investigator', 'Les communications avec lÂ´ (les) enquÃªteur(s)', 1, 0),
(5633, '', 'pt_BR', 'close_windows', 'close_windows', 1, 0),
(5634, '', 'en_US', 'close_windows', 'Close window', 1, 20160520),
(5635, '', 'es', 'close_windows', 'Cerrar ventana', 1, 0),
(5636, '', 'fr', 'close_windows', 'close_windows', 1, 0),
(5637, '', 'pt_BR', 'actions', 'aÃ§Ãµes', 1, 0),
(5638, '', 'en_US', 'actions', 'Actions', 1, 0),
(5639, '', 'es', 'actions', 'Acciones', 1, 0),
(5640, '', 'fr', 'actions', 'Actions', 1, 0),
(5641, '', 'pt_BR', 'action_accept_manuscrit_inf', '', 1, 20160520),
(8646, '', 'pt_BR', 'adverso_memo_inf', '', 1, 20160520),
(8647, '', 'pt_BR', 'Aprobación ética local', 'AprobaciÃ³n Ã©tica local', 1, 20160520),
(8660, '', 'pt_BR', 'proethos_doc_diex', 'Modelo de Isento', 1, 20160520),
(8661, '', 'pt_BR', 'proethos_doc_soli_emen', 'Modelo de Emenda ao protocolo', 1, 20160520),
(8662, '', 'pt_BR', 'proethos_doc_soli_exte', 'Modelo de solicitaÃ§Ã£o de extensÃ£o', 1, 20160520),
(5642, '', 'en_US', 'action_accept_manuscrit_inf', 'Accept protocol for ethics review process', 1, 20160520),
(5643, '', 'es', 'action_accept_manuscrit_inf', 'Aceptar protocolo para proceso de revisiÃ³n Ã©tica', 1, 20160520),
(5644, '', 'fr', 'action_accept_manuscrit_inf', 'action_accept_manuscrit_inf', 1, 0),
(5645, '', 'pt_BR', 'action_accept_rejected_inf', '', 1, 20160520),
(8644, '', 'pt_BR', 'admin_email_smtp', 'Servidor SMTP de mensagens', 1, 20160520),
(8645, '', 'pt_BR', 'admin_utf8_convert', 'Converter texto para UTF8', 1, 20160520),
(5646, '', 'en_US', 'action_accept_rejected_inf', 'Return to investigator with observations', 1, 0),
(5647, '', 'es', 'action_accept_rejected_inf', 'Devolver a investigador con observaciones', 1, 0),
(5648, '', 'fr', 'action_accept_rejected_inf', 'action_accept_rejected_inf', 1, 0),
(5649, '', 'pt_BR', 'conflict_of_interest', '', 1, 20160520),
(8648, '', 'pt_BR', 'copyright', 'Â© Pan American Health Organization, 2013. All rights reserved.', 1, 20160520),
(8649, '', 'pt_BR', 'Deshabilitar modo de edición', 'Deshabilitar modo de ediciÃ³n', 1, 20160520),
(5650, '', 'en_US', 'conflict_of_interest', '', 1, 20160520),
(8417, '', 'en_US', 'contact_can_not_removed', 'Contact cannot be removed', 1, 20160520),
(5651, '', 'es', 'conflict_of_interest', '', 1, 20160520),
(8513, '', 'es', 'contact_can_not_removed', 'No puede eliminarse el contacto', 1, 20160520),
(8514, '', 'es', 'copyright', 'Â© OrganizaciÃ³n Panamericana de la Salud, 2013. Todos los derechos reservados.', 1, 20160520),
(5652, '', 'fr', 'conflict_of_interest', '', 1, 20160520),
(8633, '', 'fr', 'copyright', 'Â© Pan American Health Organization, 2013. All rights reserved.', 1, 20160520),
(5653, '', 'pt_BR', 'main_author', 'Autor principal do projeto', 1, 0),
(5654, '', 'en_US', 'main_author', 'Principal investigator', 1, 20160520),
(5655, '', 'es', 'main_author', 'Investigador principal', 1, 20160520),
(5656, '', 'fr', 'main_author', 'EnquÃªteur principal', 1, 0),
(5657, '', 'pt_BR', 'last_update', 'Atualizado em', 1, 0),
(5658, '', 'en_US', 'last_update', 'Last Update', 1, 0),
(5659, '', 'es', 'last_update', 'Ultima fecha de actualizaciÃ³n', 1, 20160520),
(5660, '', 'fr', 'last_update', 'DerniÃ¨re date de mise Ã  jour', 1, 0),
(5661, '', 'pt_BR', 'cancel_this_project', 'Cancelar este projeto', 1, 0),
(5662, '', 'en_US', 'cancel_this_project', 'Cancel this protocol', 1, 20160520),
(5663, '', 'es', 'cancel_this_project', 'Cancelar este protocolo', 1, 20160520),
(5664, '', 'fr', 'cancel_this_project', 'Annuler ce projet', 1, 0),
(5665, '', 'pt_BR', 'confirm_cancel', 'confirm_cancel', 1, 0),
(5666, '', 'en_US', 'confirm_cancel', 'Confirm cancel', 1, 20160520),
(5667, '', 'es', 'confirm_cancel', 'Confirmar cancelaciÃ³n', 1, 0),
(5668, '', 'fr', 'confirm_cancel', 'confirm_cancel', 1, 0),
(5669, '', 'pt_BR', 'botton_return', 'Voltar', 1, 0),
(5670, '', 'en_US', 'botton_return', 'Return', 1, 0),
(5671, '', 'es', 'botton_return', 'Regresar', 1, 0),
(5672, '', 'fr', 'botton_return', 'Retourner', 1, 20160520),
(5673, '', 'pt_BR', 'successfully_operation', 'successfully_operation', 1, 0),
(5674, '', 'en_US', 'successfully_operation', 'Operation Successful', 1, 0),
(5675, '', 'es', 'successfully_operation', 'OperaciÃ³n exitosa', 1, 0),
(5676, '', 'fr', 'successfully_operation', 'successfully_operation', 1, 0),
(5677, '', 'pt_BR', 'canceled', 'Cancelar', 1, 0),
(5678, '', 'en_US', 'canceled', 'Cancel', 1, 0),
(5679, '', 'es', 'canceled', 'Cancelar', 1, 0),
(5680, '', 'fr', 'canceled', 'Annuler', 1, 0),
(5681, '', 'pt_BR', 'caption_status_$', 'Problemas com a submissÃ£o do projeto', 1, 0),
(5682, '', 'en_US', 'caption_status_$', 'Problems with the submission of the protocol', 1, 20160520),
(5683, '', 'es', 'caption_status_$', 'Problemas con la presentaciÃ³n del protocolo', 1, 20160520),
(5684, '', 'fr', 'caption_status_$', 'ProblÃ¨mes avec la prÃ©sentation du projet', 1, 0),
(5685, '', 'pt_BR', 'caption_status_$_inf', '', 1, 20160520),
(5686, '', 'en_US', 'caption_status_$_inf', '', 1, 20160520),
(5687, '', 'es', 'caption_status_$_inf', '', 1, 20160520),
(5688, '', 'fr', 'caption_status_$_inf', '', 1, 20160520),
(5689, '', 'pt_BR', 'message_$_inf', '', 1, 20160520),
(8653, '', 'pt_BR', 'Metodologia_inf', '', 1, 20160520),
(8654, '', 'pt_BR', 'Modo de edição desabilitado', 'Modo de ediÃ§Ã£o desabilitado', 1, 20160520),
(5690, '', 'en_US', 'message_$_inf', '', 1, 20160520),
(8435, '', 'en_US', 'method_1', 'Method 1', 1, 20160520),
(5691, '', 'es', 'message_$_inf', '', 1, 20160520),
(8544, '', 'es', 'method_1', 'MÃ©todo 1', 1, 20160520),
(5692, '', 'fr', 'message_$_inf', '', 1, 20160520),
(8638, '', 'fr', 'Metodologia_inf', '', 1, 20160520),
(8639, '', 'fr', 'Modo de edição desabilitado', 'Modo de ediÃ§Ã£o desabilitado', 1, 20160520),
(5693, '', 'pt_BR', 'message_poted', 'Mensagem postada', 1, 0),
(5694, '', 'en_US', 'message_poted', 'Message', 1, 0),
(5695, '', 'es', 'message_poted', 'Mensaje', 1, 0),
(5696, '', 'fr', 'message_poted', 'Message', 1, 0),
(5697, '', 'pt_BR', 'project_about_cap', 'Sobre o projeto', 1, 0),
(5698, '', 'en_US', 'project_about_cap', 'About the protocol', 1, 20160520),
(5699, '', 'es', 'project_about_cap', 'Acerca del protocolo', 1, 20160520),
(5700, '', 'fr', 'project_about_cap', 'Ã€ propos du projet', 1, 0),
(5701, '', 'pt_BR', 'caption_status_', 'Todos os projetos de pesquisa', 1, 0),
(5702, '', 'en_US', 'caption_status_', 'All research projects', 1, 0),
(5703, '', 'es', 'caption_status_', 'Todos los protocolos de investigaciÃ³n', 1, 20160520),
(5704, '', 'fr', 'caption_status_', 'Tous les projets de recherche', 1, 0),
(5705, '', 'pt_BR', 'caption_status__inf', 'Selecione o projeto de pesquisa que deseja visualizar ou continuar.', 1, 0),
(5706, '', 'en_US', 'caption_status__inf', 'Select the research project you want to view or continue.', 1, 0),
(5707, '', 'es', 'caption_status__inf', 'Seleccione el protocolo de investigaciÃ³n que desee ver o continuar.', 1, 20160520),
(5708, '', 'fr', 'caption_status__inf', 'Choisissez le projet de recherche que vous souhaitez voir ou continuer.', 1, 0),
(5709, '', 'pt_BR', 'caption_status_@', 'Em submissÃ£o (ediÃ§Ã£o)', 1, 0),
(5710, '', 'en_US', 'caption_status_@', 'In submission (editing)', 1, 0),
(5711, '', 'es', 'caption_status_@', 'En proceso de presentaciÃ³n (en ediciÃ³n)', 1, 0),
(5712, '', 'fr', 'caption_status_@', 'En cours de dÃ©pÃ´t', 1, 0),
(5713, '', 'pt_BR', 'caption_status_@_inf', '', 1, 20160520),
(8659, '', 'pt_BR', 'proethos_doc_apex', 'Modelo de aprovaÃ§Ã£o de extensÃ£o', 1, 20160520),
(5714, '', 'en_US', 'caption_status_@_inf', '', 1, 20160520),
(5715, '', 'es', 'caption_status_@_inf', 'Los protocolos abajo mencionados se encuentran en modo de ediciÃ³n y aun no han sido enviados al ComitÃ© para revisiÃ³n.', 1, 20160520),
(5716, '', 'fr', 'caption_status_@_inf', 'Les projets ci-dessous sont en mode Ã©dition et nÂ´ont pas Ã©tÃ© soumis au comitÃ© dÂ´Ã©thique pour examen.', 1, 0),
(7637, '', 'pt_BR', 'general_procedures_inf', 'general_procedures_inf', 1, 0),
(7636, '', 'fr', 'countries_recruitment_inf', '', 1, 20160520),
(5721, '', 'pt_BR', 'crono_inf_pdf', '* comprometo-me a nÃ£o iniciar a abordagem de sujeitos ou qualquer outro procedimento experimental sem que antes tenha obtido o parecer de aprovaÃ§Ã£o deste protocolo pelo CEP.', 1, 0),
(5722, '', 'en_US', 'crono_inf_pdf', 'I pledge not to start the recruitment of participants or any other experimental procedure without first having obtained review and approval of this protocol by the Ethics Committee', 1, 0),
(5723, '', 'es', 'crono_inf_pdf', 'Me comprometo a no iniciar el reclutamiento de participantes ni ningun otro procedimiento experimental sin antes haber obtenido la revision y aprobacion de este protocolo por parte del Comite de Etica', 1, 0),
(5724, '', 'fr', 'crono_inf_pdf', 'Je mÂ´engage Ã  ne pas commencer le recrutement ou toute autre procÃ©dure expÃ©rimentale sans avoir dÂ´abord obtenu lÂ´approbation de cette protocole par le comitÃ© dÂ´Ã©thique', 1, 0),
(5725, '', 'pt_BR', 'forgot_password', 'Esqueceu a senha?', 1, 0),
(5726, '', 'en_US', 'forgot_password', 'Forgot password?', 1, 20160520),
(5727, '', 'es', 'forgot_password', 'Â¿OlvidÃ³ su contraseÃ±a?', 1, 0),
(5728, '', 'fr', 'forgot_password', 'Mot de passe oublier?', 1, 0),
(5729, '', 'pt_BR', 'your_password', 'Sua senha', 1, 0),
(5730, '', 'en_US', 'your_password', 'your password', 1, 0),
(5731, '', 'es', 'your_password', 'Su contraseÃ±a', 1, 20160520),
(5732, '', 'fr', 'your_password', 'Votre Mot de passe', 1, 0),
(5733, '', 'pt_BR', 'calender', 'CalendÃ¡rio', 1, 0),
(5734, '', 'en_US', 'calender', 'Calendar', 1, 0),
(5735, '', 'es', 'calender', 'Calendario', 1, 0),
(5736, '', 'fr', 'calender', 'Calendrier', 1, 0),
(5737, '', 'pt_BR', 'month_09', 'Setembro', 1, 0),
(5738, '', 'en_US', 'month_09', 'Sep', 1, 0),
(5739, '', 'es', 'month_09', 'Sep', 1, 0),
(5740, '', 'fr', 'month_09', 'Sep', 1, 0),
(5741, '', 'pt_BR', 'month_10', 'Outubro', 1, 0),
(5742, '', 'en_US', 'month_10', 'Oct', 1, 0),
(5743, '', 'es', 'month_10', 'Oct', 1, 0),
(5744, '', 'fr', 'month_10', 'Oct', 1, 0),
(5745, '', 'pt_BR', 'calender_type', 'Tipos de eventos do calendÃ¡rio', 1, 0),
(5746, '', 'en_US', 'calender_type', 'Calendar event types', 1, 0),
(5747, '', 'es', 'calender_type', 'Tipo de eventos del calendario', 1, 0),
(5748, '', 'fr', 'calender_type', 'Type de calendrier', 1, 0),
(5749, '', 'pt_BR', 'admin_calender_type', 'Tipo de calendÃ¡rio', 1, 0),
(5750, '', 'en_US', 'admin_calender_type', 'Calendar types', 1, 20160520),
(5751, '', 'es', 'admin_calender_type', 'Tipos de calendario', 1, 20160520),
(5752, '', 'fr', 'admin_calender_type', 'Type de calendrier', 1, 0),
(5753, '', 'pt_BR', 'tit_calender_type', 'tit_calender_type', 1, 0),
(5754, '', 'en_US', 'tit_calender_type', 'Calendar Type', 1, 0),
(5755, '', 'es', 'tit_calender_type', 'Tipo de calendario', 1, 0),
(5756, '', 'fr', 'tit_calender_type', 'Type de calendrier', 1, 0),
(7957, '', 'pt_BR', 'ord', 'ord', 1, 0),
(7956, '', 'fr', 'formato_decision_proethos.doc', 'formato_decision_proethos.doc', 1, 0),
(7955, '', 'es', 'formato_decision_proethos.doc', 'Formato de decisiÃ³n', 1, 20160520),
(5765, '', 'pt_BR', 'tit_calender', 'Agendamento no calendÃ¡rio', 1, 0),
(5766, '', 'en_US', 'tit_calender', 'Schedule calendar', 1, 20160520),
(5767, '', 'es', 'tit_calender', 'Programar calendario', 1, 20160520),
(5768, '', 'fr', 'tit_calender', 'Programmation dans le calendrier', 1, 0),
(5769, '', 'pt_BR', 'time', 'Time', 1, 0),
(5770, '', 'en_US', 'time', 'Time', 1, 0),
(5771, '', 'es', 'time', 'Hora', 1, 0),
(5772, '', 'fr', 'time', 'Heure(s)', 1, 0),
(5773, '', 'pt_BR', 'public', 'public', 1, 0),
(5774, '', 'en_US', 'public', 'Public', 1, 0),
(5775, '', 'es', 'public', 'PÃºblico', 1, 0),
(5776, '', 'fr', 'public', 'Publique', 1, 0),
(5777, '', 'pt_BR', 'day', 'Dia', 1, 0),
(5778, '', 'en_US', 'day', 'Day', 1, 0),
(5779, '', 'es', 'day', 'DÃ­a', 1, 0),
(5780, '', 'fr', 'day', 'Jour', 1, 0),
(5781, '', 'pt_BR', 'hour', 'HorÃ¡rio', 1, 0),
(5782, '', 'en_US', 'hour', 'Time', 1, 0),
(5783, '', 'es', 'hour', 'Hora', 1, 0),
(5784, '', 'fr', 'hour', 'Heures', 1, 0),
(5785, '', 'pt_BR', 'Dear researcher,\r\n\r\nYour registration wa', 'Dear researcher,\r\n\r\nYour registration wa', 1, 0),
(5786, '', 'en_US', 'Dear researcher,\r\n\r\nYour registration wa', 'Dear researcher,\r\n\r\nYour registration wa', 1, 0);
INSERT INTO `_messages` (`id_msg`, `msg_pag`, `msg_language`, `msg_field`, `msg_content`, `msg_ativo`, `msg_update`) VALUES
(5787, '', 'es', 'Dear researcher,\r\n\r\nYour registration wa', 'Dear researcher,\r\n\r\nYour registration wa', 1, 0),
(5788, '', 'fr', 'Dear researcher,\r\n\r\nYour registration wa', 'Dear researcher,\r\n\r\nYour registration wa', 1, 0),
(5789, '', 'pt_BR', 'chk_email_erro_tit', 'Problemas com sua validaÃ§Ã£o', 1, 0),
(5790, '', 'en_US', 'chk_email_erro_tit', 'Problems with validation', 1, 0),
(5791, '', 'es', 'chk_email_erro_tit', 'Problemas con la validaciÃ³n', 1, 0),
(5792, '', 'fr', 'chk_email_erro_tit', 'ProblÃ¨mes de validation', 1, 0),
(5793, '', 'pt_BR', 'chk_email_erro', '', 1, 20160520),
(8657, '', 'pt_BR', 'Póliza de seguro', 'PÃ³liza de seguro', 1, 20160520),
(5794, '', 'en_US', 'chk_email_erro', '', 1, 20160520),
(8415, '', 'en_US', 'committee_id', 'Committee ID', 1, 20160520),
(8416, '', 'en_US', 'committee_id_info', 'Committee info', 1, 20160520),
(5795, '', 'es', 'chk_email_erro', '', 1, 20160520),
(8508, '', 'es', 'committee_id_info', 'InformaciÃ³n del ComitÃ©', 1, 20160520),
(5796, '', 'fr', 'chk_email_erro', '', 1, 20160520),
(5797, '', 'pt_BR', 'status_@', 'em submissÃ£o', 1, 0),
(5798, '', 'en_US', 'status_@', 'Pending to Submit', 1, 0),
(5799, '', 'es', 'status_@', 'Pendiente', 1, 20160520),
(5800, '', 'fr', 'status_@', 'En attente dÂ´Ãªtre soumis', 1, 0),
(5801, '', 'pt_BR', 'the_field', 'O campo', 1, 0),
(5802, '', 'en_US', 'the_field', 'The field', 1, 0),
(5803, '', 'es', 'the_field', 'El campo', 1, 0),
(5804, '', 'fr', 'the_field', 'Le domaine', 1, 0),
(5805, '', 'pt_BR', 'problems', 'problems', 1, 0),
(5806, '', 'en_US', 'problems', 'Problems', 1, 20160520),
(5807, '', 'es', 'problems', 'Problemas', 1, 0),
(5808, '', 'fr', 'problems', 'ProblÃ¨mes', 1, 0),
(5809, '', 'pt_BR', 'submission_problems', 'Problemas de submissÃ£o', 1, 0),
(5810, '', 'en_US', 'submission_problems', 'Submission Problem', 1, 0),
(5811, '', 'es', 'submission_problems', 'Problemas con el protocolo', 1, 20160520),
(5812, '', 'fr', 'submission_problems', 'ProblÃ¨me avec votre soumission', 1, 0),
(5813, '', 'pt_BR', 'status_A', 'em recepÃ§Ã£o', 1, 0),
(5814, '', 'en_US', 'status_A', 'Submitted', 1, 0),
(5815, '', 'es', 'status_A', 'Presentado', 1, 0),
(5816, '', 'fr', 'status_A', 'ReÃ§u', 1, 0),
(5817, '', 'pt_BR', 'status_H', 'In Committee Assessment', 1, 0),
(5818, '', 'en_US', 'status_H', 'In Committee Assessment', 1, 0),
(5819, '', 'es', 'status_H', 'status_H', 1, 0),
(5820, '', 'fr', 'status_H', 'En ComitÃ© dÂ´Ã©valuation', 1, 0),
(5821, '', 'pt_BR', 'caption_status_A', 'Protocolo em recepÃ§Ã£o', 1, 0),
(5822, '', 'en_US', 'caption_status_A', 'Protocols received for review', 1, 0),
(5823, '', 'es', 'caption_status_A', 'Protocolos recibidos para revision', 1, 0),
(5824, '', 'fr', 'caption_status_A', 'Protocoles Soumis Ã  rÃ©viser', 1, 0),
(5825, '', 'pt_BR', 'caption_status_A_inf', 'Protocolos em recepÃ§Ã£o pelo CEP', 1, 0),
(5826, '', 'en_US', 'caption_status_A_inf', 'Protocols received for ethics review by the committee', 1, 20160520),
(5827, '', 'es', 'caption_status_A_inf', 'Protocolos recibidos para revisiÃ³n etica por parte del comitÃ©', 1, 20160520),
(5828, '', 'fr', 'caption_status_A_inf', 'Protocoles en Ã©valuation Ã©thique', 1, 0),
(7430, '', 'en_US', 'show_records', 'show_records', 1, 0),
(7429, '', 'pt_BR', 'show_records', 'show_records', 1, 0),
(5833, '', 'pt_BR', 'research_name', 'Pesquisador', 1, 0),
(5834, '', 'en_US', 'research_name', 'Investigator', 1, 20160520),
(5835, '', 'es', 'research_name', 'Investigador', 1, 0),
(5836, '', 'fr', 'research_name', 'Investigador (??)', 1, 0),
(5837, '', 'pt_BR', 'status_C', 'Em anÃ¡lise pelo comitÃª', 1, 0),
(5838, '', 'en_US', 'status_C', 'status_C', 1, 0),
(5839, '', 'es', 'status_C', 'status_C', 1, 0),
(5840, '', 'fr', 'status_C', 'En cours de rÃ©vision par le comitÃ©', 1, 0),
(5841, '', 'pt_BR', 'evaluators_indicate', 'Indicar relatores', 1, 0),
(5842, '', 'en_US', 'evaluators_indicate', 'Assign member to review', 1, 0),
(5843, '', 'es', 'evaluators_indicate', 'Asignar miembro evaluador', 1, 0),
(5844, '', 'fr', 'evaluators_indicate', 'Indiquer lÂ´Ã©valuateur', 1, 0),
(7428, '', 'fr', 'filter_ce', 'filter_ce', 1, 0),
(7427, '', 'es', 'filter_ce', 'filter_ce', 1, 0),
(7426, '', 'en_US', 'filter_ce', 'filter_ce', 1, 0),
(5849, '', 'pt_BR', 'cep_status_D', 'Indicado para reuniÃ£o', 1, 0),
(5850, '', 'en_US', 'cep_status_D', 'Indicated for next meeting', 1, 0),
(5851, '', 'es', 'cep_status_D', 'Indicado para proxima reuniÃ³n', 1, 20160520),
(5852, '', 'fr', 'cep_status_D', 'NominÃ© pour la rÃ©union', 1, 0),
(5853, '', 'pt_BR', 'cep_status_E', 'Aguardando parecer', 1, 0),
(5854, '', 'en_US', 'cep_status_E', 'Waiting for decision', 1, 20160520),
(5855, '', 'es', 'cep_status_E', 'Esperando decisiÃ³n', 1, 20160520),
(5856, '', 'fr', 'cep_status_E', 'cep_status_E', 1, 0),
(5857, '', 'pt_BR', 'month_11', 'Novembro', 1, 0),
(5858, '', 'en_US', 'month_11', 'Nov', 1, 0),
(5859, '', 'es', 'month_11', 'Nov', 1, 0),
(5860, '', 'fr', 'month_11', 'Nov', 1, 0),
(5861, '', 'pt_BR', 'preview_protocol', 'preview_protocol', 1, 0),
(5862, '', 'en_US', 'preview_protocol', 'Preview protocol', 1, 20160520),
(5863, '', 'es', 'preview_protocol', 'Vista preliminar del protocolo', 1, 20160520),
(5864, '', 'fr', 'preview_protocol', 'preview_protocol', 1, 0),
(7659, '', 'es', 'HIDDEN_inf', 'HIDDEN_inf', 1, 0),
(7658, '', 'en_US', 'HIDDEN_inf', 'HIDDEN_inf', 1, 0),
(7657, '', 'pt_BR', 'HIDDEN_inf', 'HIDDEN_inf', 1, 0),
(7656, '', 'fr', 'HIDDEN', 'HIDDEN', 1, 0),
(7561, '', 'pt_BR', 'Acompanhamento anual', 'Acompanhamento anual', 1, 0),
(7560, '', 'fr', 'Acompanhamento semestral', 'Acompanhamento semestral', 1, 0),
(5873, '', 'pt_BR', 'protocol_version', 'VersÃ£o do Protocolo', 1, 0),
(5874, '', 'en_US', 'protocol_version', 'Protocol Version', 1, 0),
(5875, '', 'es', 'protocol_version', 'VersiÃ³n del protocolo', 1, 0),
(5876, '', 'fr', 'protocol_version', 'Version du protocole', 1, 0),
(5877, '', 'pt_BR', 'relator', 'relator', 1, 0),
(5878, '', 'en_US', 'relator', 'Reviewer', 1, 0),
(5879, '', 'es', 'relator', 'Revisor', 1, 0),
(5880, '', 'fr', 'relator', 'relator', 1, 0),
(5885, '', 'pt_BR', 'indicate_to_meeting', 'Indicar para reuniÃ£o', 1, 0),
(5886, '', 'en_US', 'indicate_to_meeting', 'Assign to meeting', 1, 0),
(5887, '', 'es', 'indicate_to_meeting', 'Asignar para reuniÃ³n', 1, 0),
(5888, '', 'fr', 'indicate_to_meeting', 'indicate_to_meeting', 1, 0),
(5889, '', 'pt_BR', 'inform_meeting_date', 'Informe a data da reuniÃ£o', 1, 0),
(5890, '', 'en_US', 'inform_meeting_date', 'Enter the date of the meeting', 1, 0),
(5891, '', 'es', 'inform_meeting_date', 'Entre la fecha de la reuniÃ³n', 1, 0),
(5892, '', 'fr', 'inform_meeting_date', 'Entrez la date de la rÃ©union', 1, 0),
(7425, '', 'pt_BR', 'filter_ce', 'filter_ce', 1, 0),
(7424, '', 'fr', 'clear_filter', 'clear_filter', 1, 0),
(5897, '', 'pt_BR', 'draft_opinion', 'Redigir parecer', 1, 0),
(5898, '', 'en_US', 'draft_opinion', 'Ethical evaluation guide', 1, 20160520),
(5899, '', 'es', 'draft_opinion', 'GuÃ­a de revision interna', 1, 20160520),
(5900, '', 'fr', 'draft_opinion', 'draft_opinion', 1, 0),
(5901, '', 'pt_BR', 'finally_opinion', 'Finalizar avaliaÃ§Ã£o do protocolo', 1, 0),
(5902, '', 'en_US', 'finally_opinion', 'Finish protocol evaluation', 1, 20160520),
(5903, '', 'es', 'finally_opinion', 'Finalizar evaluaciÃ³n del protocolo', 1, 0),
(5904, '', 'fr', 'finally_opinion', 'finally_opinion', 1, 0),
(5905, '', 'pt_BR', 'action_001', 'Aceitar manuscrito para avaliaÃ§Ã£o', 1, 0),
(5906, '', 'en_US', 'action_001', 'Assign to Meeting', 1, 0),
(5907, '', 'es', 'action_001', 'Asignar para reuniÃ³n', 1, 0),
(5908, '', 'fr', 'action_001', 'action_001', 1, 0),
(5909, '', 'pt_BR', 'meet_data', 'ReuniÃ£o em', 1, 0),
(5910, '', 'en_US', 'meet_data', 'Review scheduled for', 1, 0),
(5911, '', 'es', 'meet_data', 'RevisiÃ³n programada para', 1, 20160520),
(5912, '', 'fr', 'meet_data', 'Date de rÃ©vision prÃ©vue pour', 1, 0),
(5913, '', 'pt_BR', 'pesq_relate', 'Para minha relatoria', 1, 0),
(5914, '', 'en_US', 'pesq_relate', 'Proposals assigned for my review', 1, 0),
(5915, '', 'es', 'pesq_relate', 'Protocolos asignados para mi revisiÃ³n', 1, 20160520),
(5916, '', 'fr', 'pesq_relate', 'Reviser mon dossier', 1, 0),
(5917, '', 'pt_BR', 'cep_status_Z', 'Projetos sob sua relatoria', 1, 0),
(5918, '', 'en_US', 'cep_status_Z', 'Project for my revision', 1, 0),
(5919, '', 'es', 'cep_status_Z', 'Protocolo para mi revisiÃ³n', 1, 20160520),
(5920, '', 'fr', 'cep_status_Z', 'cep_status_Z', 1, 0),
(5921, '', 'pt_BR', 'action_012', 'EdiÃ§Ã£o do parecer definitivo', 1, 0),
(5922, '', 'en_US', 'action_012', 'Internal review', 1, 20160520),
(5923, '', 'es', 'action_012', 'RevisiÃ³n interna', 1, 20160520),
(5924, '', 'fr', 'action_012', 'Modification de lÂ´avis final', 1, 0),
(5925, '', 'pt_BR', 'caae', 'NIEC', 1, 0),
(5926, '', 'en_US', 'caae', 'ID #', 1, 0),
(5927, '', 'es', 'caae', 'No. de identificaciÃ³n', 1, 0),
(5928, '', 'fr', 'caae', 'caae', 1, 0),
(5929, '', 'pt_BR', 'project_type', 'Tipo do projeto', 1, 0),
(5930, '', 'en_US', 'project_type', 'Protocol type', 1, 20160520),
(5931, '', 'es', 'project_type', 'Tipo de protocolo', 1, 20160520),
(5932, '', 'fr', 'project_type', 'Type de projet', 1, 0),
(5933, '', 'pt_BR', 'prj_type_PRO', 'Projeto de Pesquisa', 1, 0),
(5934, '', 'en_US', 'prj_type_PRO', 'Investigation protocol', 1, 20160520),
(5935, '', 'es', 'prj_type_PRO', 'Protocolo de investigaciÃ³n', 1, 0),
(5936, '', 'fr', 'prj_type_PRO', 'Protocole dÂ´enquÃªte', 1, 0),
(5937, '', 'pt_BR', 'decision', 'decisÃ£o', 1, 0),
(5938, '', 'en_US', 'decision', 'Decision', 1, 0),
(5939, '', 'es', 'decision', 'DecisiÃ³n', 1, 0),
(5940, '', 'fr', 'decision', 'DÃ©cision', 1, 0),
(7904, '', 'fr', 'titic_noticia', 'titic_noticia', 1, 0),
(7903, '', 'es', 'titic_noticia', 'titic_noticia', 1, 0),
(7902, '', 'en_US', 'titic_noticia', 'titic_noticia', 1, 0),
(7901, '', 'pt_BR', 'titic_noticia', 'titic_noticia', 1, 0),
(7900, '', 'fr', 'page_ref', 'page_ref', 1, 0),
(7899, '', 'es', 'page_ref', 'Referencia de pÃ¡gina', 1, 20160520),
(7898, '', 'en_US', 'page_ref', 'page_ref', 1, 0),
(7897, '', 'pt_BR', 'page_ref', 'page_ref', 1, 0),
(7894, '', 'en_US', 'completed', 'Completed', 1, 20160520),
(7895, '', 'es', 'completed', 'completado', 1, 0),
(7896, '', 'fr', 'completed', 'completed', 1, 0),
(5961, '', 'pt_BR', 'dictamem_0', 'dictamem_0', 1, 0),
(5962, '', 'en_US', 'dictamem_0', 'Decision_0', 1, 0),
(5963, '', 'es', 'dictamem_0', 'Decision_0', 1, 0),
(5964, '', 'fr', 'dictamem_0', 'dictamem_0', 1, 0),
(7936, '', 'fr', 'create_file', 'create_file', 1, 0),
(5989, '', 'pt_BR', 'save_dictamen', 'Salvar parecer', 1, 0),
(5990, '', 'en_US', 'save_dictamen', 'Save decision', 1, 0),
(5991, '', 'es', 'save_dictamen', 'Guardar decisiÃ³n', 1, 20160520),
(5992, '', 'fr', 'save_dictamen', 'save_dictamen', 1, 0),
(5993, '', 'pt_BR', 'final_version', 'Salvar versÃ£o final do parecer', 1, 0),
(5994, '', 'en_US', 'final_version', 'Final version', 1, 20160520),
(5995, '', 'es', 'final_version', 'VersiÃ³n final', 1, 0),
(5996, '', 'fr', 'final_version', 'final_version', 1, 0),
(5997, '', 'pt_BR', 'dictamen_0', 'Valor social', 1, 0),
(5998, '', 'en_US', 'dictamen_0', 'Social value', 1, 20160520),
(5999, '', 'es', 'dictamen_0', 'Valor social', 1, 0),
(6000, '', 'fr', 'dictamen_0', 'Valeur sociale', 1, 0),
(6001, '', 'pt_BR', 'dictamen_1', 'RelevÃ¢ncia cientÃ­fica', 1, 0),
(6002, '', 'en_US', 'dictamen_1', 'Scientific validity', 1, 20160520),
(6003, '', 'es', 'dictamen_1', 'Validez cientÃ­fica', 1, 0),
(6004, '', 'fr', 'dictamen_1', 'La validitÃ© scientifique', 1, 0),
(6005, '', 'pt_BR', 'dictamen_2', 'SeleÃ§Ã£o justa de participantes', 1, 0),
(6006, '', 'en_US', 'dictamen_2', 'Fair subject selection', 1, 20160520),
(6007, '', 'es', 'dictamen_2', 'SelecciÃ³n justa de participantes', 1, 0),
(6008, '', 'fr', 'dictamen_2', 'SÃ©lection Ã‰quitable des participants', 1, 0),
(6009, '', 'pt_BR', 'dictamen_3', 'RelaÃ§Ã£o favorÃ¡vel entre benefÃ­cios e riscos', 1, 0),
(6010, '', 'en_US', 'dictamen_3', 'Favorable risk-balance ration', 1, 20160520),
(6011, '', 'es', 'dictamen_3', 'Balance favorable de beneficios y riesgos', 1, 0),
(6012, '', 'fr', 'dictamen_3', 'Ã‰quilibre favorable des avantages et des risques', 1, 0),
(6013, '', 'pt_BR', 'dictamen_4', 'Termo de Consentimento Livre e Esclarecido', 1, 0),
(6014, '', 'en_US', 'dictamen_4', 'Informed consent', 1, 20160520),
(6015, '', 'es', 'dictamen_4', 'Consentimiento informado', 1, 0),
(6016, '', 'fr', 'dictamen_4', 'DÃ©claration de consentement', 1, 0),
(6017, '', 'pt_BR', 'dictamen_5', 'Respeito pelos sujeitos de pesquisa', 1, 0),
(6018, '', 'en_US', 'dictamen_5', 'Respect for participants', 1, 20160520),
(6019, '', 'es', 'dictamen_5', 'Respeto por los participantes', 1, 0),
(6020, '', 'fr', 'dictamen_5', 'Respect des sujets de recherche', 1, 0),
(6021, '', 'pt_BR', 'dictamen_6', 'Lista de inadequaÃ§Ãµes', 1, 0),
(6022, '', 'en_US', 'dictamen_6', 'List of issues', 1, 20160520),
(6023, '', 'es', 'dictamen_6', 'Lista de debilidades', 1, 20160520),
(6024, '', 'fr', 'dictamen_6', 'Liste des lacunes', 1, 0),
(6025, '', 'pt_BR', 'emited_dictamen', 'emited_dictamen', 1, 0),
(6026, '', 'en_US', 'emited_dictamen', 'Decision issued', 1, 20160520),
(6027, '', 'es', 'emited_dictamen', 'DecisiÃ³n emitida', 1, 20160520),
(6028, '', 'fr', 'emited_dictamen', 'emited_dictamen', 1, 0),
(6029, '', 'pt_BR', 'semiannual', 'Acompanhamento semestral', 1, 0),
(6030, '', 'en_US', 'semiannual', 'Semi-annual', 1, 0),
(6031, '', 'es', 'semiannual', 'Semi-anual', 1, 0),
(6032, '', 'fr', 'semiannual', 'Semestriel', 1, 0),
(6033, '', 'pt_BR', 'annual', 'Acompanhamento anual', 1, 0),
(6034, '', 'en_US', 'annual', 'Annual Monitoring', 1, 0),
(6035, '', 'es', 'annual', 'Monitoreo anual', 1, 0),
(6036, '', 'fr', 'annual', 'Annuel', 1, 0),
(6037, '', 'pt_BR', 'end_of_the_investigation', 'Final da pesquisa', 1, 0),
(6038, '', 'en_US', 'end_of_the_investigation', 'End of the investigation', 1, 0),
(6039, '', 'es', 'end_of_the_investigation', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 0),
(6040, '', 'fr', 'end_of_the_investigation', 'end_of_the_investigation', 1, 0),
(7935, '', 'es', 'create_file', 'Crear archivo', 1, 20160520),
(7934, '', 'en_US', 'create_file', 'create_file', 1, 0),
(7933, '', 'pt_BR', 'create_file', 'create_file', 1, 0),
(6045, '', 'pt_BR', 'accompaniment', 'Sugerencias', 1, 20160520),
(6046, '', 'en_US', 'accompaniment', 'Sugerencias', 1, 20160520),
(6047, '', 'es', 'accompaniment', 'Sugerencias', 1, 20160520),
(6048, '', 'fr', 'accompaniment', 'Sugerencias', 1, 20160520),
(6049, '', 'pt_BR', 'dictamen_title', 'Parecer do protocolo', 1, 0),
(6050, '', 'en_US', 'dictamen_title', 'Result of review', 1, 0),
(6051, '', 'es', 'dictamen_title', 'Resultado de la revisiÃ³n', 1, 0),
(6052, '', 'fr', 'dictamen_title', 'dictamen_title', 1, 0),
(7921, '', 'pt_BR', 'dictamen_country', 'dictamen_country', 1, 0),
(7920, '', 'fr', 'dictamen_investigador', 'dictamen_investigador', 1, 0),
(7916, '', 'fr', 'dictamen_project_title', 'dictamen_project_title', 1, 0),
(7915, '', 'es', 'dictamen_project_title', 'TÃ­tulo del protocolo con dictÃ¡men', 1, 20160520),
(7907, '', 'es', 'cep_status_', 'cep_status_', 1, 0),
(7908, '', 'fr', 'cep_status_', 'cep_status_', 1, 0),
(7909, '', 'pt_BR', 'dictamen_number', 'dictamen_number', 1, 0),
(7910, '', 'en_US', 'dictamen_number', 'dictamen_number', 1, 0),
(7911, '', 'es', 'dictamen_number', 'NÃºmero de dictÃ¡men', 1, 20160520),
(7912, '', 'fr', 'dictamen_number', 'dictamen_number', 1, 0),
(7913, '', 'pt_BR', 'dictamen_project_title', 'dictamen_project_title', 1, 0),
(7914, '', 'en_US', 'dictamen_project_title', 'dictamen_project_title', 1, 0),
(7770, '', 'en_US', 'Adverse events report', 'Adverse events report', 1, 0),
(7769, '', 'pt_BR', 'Adverse events report', 'RelatÃ³rio de evento adverso', 1, 0),
(7740, '', 'fr', 'ref', 'ref', 1, 0),
(7742, '', 'en_US', 'sub_ordem', 'sub_ordem', 1, 0),
(7743, '', 'es', 'sub_ordem', 'sub_ordem', 1, 0),
(7744, '', 'fr', 'sub_ordem', 'sub_ordem', 1, 0),
(7745, '', 'pt_BR', 'sub_css', 'sub_css', 1, 0),
(7746, '', 'en_US', 'sub_css', 'sub_css', 1, 0),
(7747, '', 'es', 'sub_css', 'sub_css', 1, 0),
(7748, '', 'fr', 'sub_css', 'sub_css', 1, 0),
(7749, '', 'pt_BR', 'sub_ativo', 'sub_ativo', 1, 0),
(7750, '', 'en_US', 'sub_ativo', 'sub_ativo', 1, 0),
(7751, '', 'es', 'sub_ativo', 'sub_ativo', 1, 0),
(7752, '', 'fr', 'sub_ativo', 'sub_ativo', 1, 0),
(7753, '', 'pt_BR', 'sub_obrigatorio', 'sub_obrigatorio', 1, 0),
(7754, '', 'en_US', 'sub_obrigatorio', 'sub_obrigatorio', 1, 0),
(7755, '', 'es', 'sub_obrigatorio', 'sub_obrigatorio', 1, 0),
(7756, '', 'fr', 'sub_obrigatorio', 'sub_obrigatorio', 1, 0),
(7757, '', 'pt_BR', 'sub_edit', 'sub_edit', 1, 0),
(7758, '', 'en_US', 'sub_edit', 'sub_edit', 1, 0),
(7759, '', 'es', 'sub_edit', 'sub_edit', 1, 0),
(7760, '', 'fr', 'sub_edit', 'sub_edit', 1, 0),
(7761, '', 'pt_BR', 'sub_caption', 'sub_caption', 1, 0),
(7762, '', 'en_US', 'sub_caption', 'sub_caption', 1, 0),
(7763, '', 'es', 'sub_caption', 'sub_caption', 1, 0),
(7764, '', 'fr', 'sub_caption', 'sub_caption', 1, 0),
(7765, '', 'pt_BR', 'sub_reference', 'sub_reference', 1, 0),
(7766, '', 'en_US', 'sub_reference', 'sub_reference', 1, 0),
(7767, '', 'es', 'sub_reference', 'sub_reference', 1, 0),
(7768, '', 'fr', 'sub_reference', 'sub_reference', 1, 0),
(7924, '', 'fr', 'dictamen_country', 'dictamen_country', 1, 0),
(6105, '', 'pt_BR', 'dictamen_APR_1', 'O ComitÃª apreciou este projeto em (data) e determinou sua aprovaÃ§Ã£o para execuÃ§Ã£o em (PaÃ­s, atÃ© (data). Uma nova aprovaÃ§Ã£o serÃ¡ necesÃ¡ria se este a execuÃ§Ã£o deste estudo ultrapassar a data limite.', 1, 0),
(6106, '', 'en_US', 'dictamen_APR_1', '', 1, 20160520),
(6107, '', 'es', 'dictamen_APR_1', 'El comitÃ© revisÃ³ este protocolo y el (fecha) determinÃ³ que es aprobado para ser implementado en (pais) hasta el (fecha). Debe solicitarse una extensiÃ³n a esta aprobaciÃ³n si el proyecto se extiende mas allÃ¡ de la fecha acÃ¡ especificada.', 1, 20160520),
(6108, '', 'fr', 'dictamen_APR_1', 'dictamen_APR_1', 1, 0),
(6109, '', 'pt_BR', 'dictamen_APR_2', '', 1, 20160520),
(8651, '', 'pt_BR', 'Finalización de la investigación', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 20160520),
(8656, '', 'pt_BR', 'OpiniÃ³n interina', 'DecisiÃ³n', 1, 20160520),
(6110, '', 'en_US', 'dictamen_APR_2', '', 1, 20160520),
(8425, '', 'en_US', 'documents_title_commite', 'Documents', 1, 20160520),
(8426, '', 'en_US', 'document_models', 'Document templates', 1, 20160520),
(6111, '', 'es', 'dictamen_APR_2', '', 1, 20160520),
(6112, '', 'fr', 'dictamen_APR_2', 'dictamen_APR_2', 1, 0),
(7932, '', 'fr', 'dictamen_PRO_2', 'dictamen_PRO_2', 1, 0),
(7931, '', 'es', 'dictamen_PRO_2', 'dictamen_PRO_2', 1, 0),
(7930, '', 'en_US', 'dictamen_PRO_2', 'dictamen_PRO_2', 1, 0),
(7929, '', 'pt_BR', 'dictamen_PRO_2', 'dictamen_PRO_2', 1, 0),
(7919, '', 'es', 'dictamen_investigador', 'Investigador', 1, 20160520),
(7918, '', 'en_US', 'dictamen_investigador', 'dictamen_investigador', 1, 0),
(7917, '', 'pt_BR', 'dictamen_investigador', 'dictamen_investigador', 1, 0),
(6121, '', 'pt_BR', 'dictamen_NOT_1', 'O ComitÃª revisou este projeto e em (data), decidiu pela sua nÃ£o aprovaÃ§Ã£o. Quando e se vocÃª desejar adequa-lo, Ã© necessÃ¡ria a submissÃ£o de uma carta com as respostas ou medidas tomadas frente Ã s inadequaÃ§Ãµes apontadas, bem como uma nova versÃ£o do projeto, na qual as correÃ§Ãµes realizadas devem estar destacadas.', 1, 0),
(6122, '', 'en_US', 'dictamen_NOT_1', '', 1, 20160520),
(8424, '', 'en_US', 'dictamen_vt', 'Opinions', 1, 20160520),
(6123, '', 'es', 'dictamen_NOT_1', 'El comitÃ© revisÃ³ este protocolo y el (fecha) determinÃ³ que no ha sido aprobado. En su respuesta debe incluir una breve carta refiriÃ©ndose a los puntos seÃ±alados por el comitÃ©, y enviar una copia del protocolo actualizada donde los cambios que se han hecho a la version original sean resaltados.', 1, 20160520),
(6124, '', 'fr', 'dictamen_NOT_1', 'dictamen_NOT_1', 1, 0),
(7923, '', 'es', 'dictamen_country', 'PaÃ­s', 1, 20160520),
(7922, '', 'en_US', 'dictamen_country', 'Country', 1, 20160520),
(6129, '', 'pt_BR', 'secretaty_revision', 'RevisÃ£o da Secretaria', 1, 0),
(6130, '', 'en_US', 'secretaty_revision', 'Under review by secretary', 1, 20160520),
(6131, '', 'es', 'secretaty_revision', 'Bajo revisiÃ³n de la secretarÃ­a', 1, 20160520),
(6132, '', 'fr', 'secretaty_revision', 'secretaty_revision', 1, 0),
(7652, '', 'fr', 'secondary_register_other_inf', '', 1, 20160520),
(7651, '', 'es', 'secondary_register_other_inf', '', 1, 20160520),
(7650, '', 'en_US', 'secondary_register_other_inf', '', 1, 20160520),
(7649, '', 'pt_BR', 'secondary_register_other_inf', '', 1, 20160520),
(6137, '', 'pt_BR', 'menu_documents', 'Documentos', 1, 0),
(6138, '', 'en_US', 'menu_documents', 'Documents', 1, 20160520),
(6139, '', 'es', 'menu_documents', 'Documentos', 1, 20160520),
(6140, '', 'fr', 'menu_documents', 'Documents', 1, 20160520),
(6141, '', 'pt_BR', 'documents_title', 'Modelos de documentos', 1, 0),
(6142, '', 'en_US', 'documents_title', 'Document templates', 1, 0),
(6143, '', 'es', 'documents_title', 'Plantillas de documentos', 1, 20160520),
(6144, '', 'fr', 'documents_title', 'ModÃ¨les de document', 1, 20160520),
(7868, '', 'fr', 'PUCPR-FOOT', 'PontifÃ­cia Universidade CatÃ³lica do ParanÃ¡', 1, 20160520),
(7867, '', 'es', 'PUCPR-FOOT', 'PontifÃ­cia Universidade CatÃ³lica do ParanÃ¡', 1, 20160520),
(7866, '', 'en_US', 'PUCPR-FOOT', 'PontifÃ­cia Universidade CatÃ³lica do ParanÃ¡', 1, 20160520),
(7865, '', 'pt_BR', 'PUCPR-FOOT', 'PontifÃ­cia Universidade CatÃ³lica do ParanÃ¡', 1, 0),
(7840, '', 'fr', 'amendment_type', 'amendment_type', 1, 0),
(7839, '', 'es', 'amendment_type', 'AcciÃ³n de monitoreo', 1, 20160520),
(6153, '', 'pt_BR', 'month_12', 'Dezembro', 1, 0),
(6154, '', 'en_US', 'month_12', 'Dec', 1, 0),
(6155, '', 'es', 'month_12', 'Dic', 1, 0),
(6156, '', 'fr', 'month_12', 'month_12', 1, 0),
(6157, '', 'pt_BR', 'action_013', 'Finalizar avaliaÃ§Ã£o e parecer', 1, 0),
(6158, '', 'en_US', 'action_013', 'Final evaluation and decision', 1, 0),
(6159, '', 'es', 'action_013', 'EvaluaciÃ³n final y decisiÃ³n', 1, 0),
(6160, '', 'fr', 'action_013', 'action_013', 1, 0),
(6161, '', 'pt_BR', 'communicate_investigator', 'Comunicar ao investigador', 1, 0),
(6162, '', 'en_US', 'communicate_investigator', 'Communicate to Investigator', 1, 0),
(6163, '', 'es', 'communicate_investigator', 'Comunicar al investigador', 1, 0),
(6164, '', 'fr', 'communicate_investigator', 'communicate_investigator', 1, 0),
(7646, '', 'en_US', 'ethical_considerations_inf', '', 1, 20160520),
(7645, '', 'pt_BR', 'ethical_considerations_inf', '', 1, 20160520),
(7644, '', 'fr', 'analysis_plan_inf', 'analysis_plan_inf', 1, 0),
(7643, '', 'es', 'analysis_plan_inf', 'analysis_plan_inf', 1, 0),
(7417, '', 'pt_BR', 'search', 'search', 1, 0),
(7416, '', 'fr', 'submit', 'submit', 1, 0),
(7415, '', 'es', 'submit', 'Enviar', 1, 20160520),
(7413, '', 'pt_BR', 'submit', 'submit', 1, 0),
(7414, '', 'en_US', 'submit', 'Submit', 1, 20160520),
(7431, '', 'es', 'show_records', 'show_records', 1, 0),
(6177, '', 'pt_BR', 'send_amandment', 'Enviar emenda ao protocolo', 1, 0),
(6178, '', 'en_US', 'send_amandment', 'Send amendment', 1, 20160520),
(6179, '', 'es', 'send_amandment', 'Enviar', 1, 20160520),
(6180, '', 'fr', 'send_amandment', 'send_amandment', 1, 0),
(6181, '', 'pt_BR', 'amendment', 'Emendas ao protocolo original', 1, 0),
(6182, '', 'en_US', 'amendment', 'Amendments to original protocol', 1, 20160520),
(6183, '', 'es', 'amendment', 'Enmiendas al protocolo original', 1, 20160520),
(6184, '', 'fr', 'amendment', 'amendment', 1, 0),
(6185, '', 'pt_BR', 'protocol_title', 'TÃ­tulo do Protocolo', 1, 0),
(6186, '', 'en_US', 'protocol_title', 'Protocol Title', 1, 0),
(6187, '', 'es', 'protocol_title', 'TÃ­tulo del protocolo', 1, 0),
(6188, '', 'fr', 'protocol_title', 'protocol_title', 1, 0),
(6189, '', 'pt_BR', 'amendment_001', 'submeter uma emenda', 1, 0),
(6190, '', 'en_US', 'amendment_001', 'Submit an amendment', 1, 20160520),
(6191, '', 'es', 'amendment_001', 'reserved - no use', 1, 20160520),
(6192, '', 'fr', 'amendment_001', 'amendment_001', 1, 0),
(6193, '', 'pt_BR', 'amendment_002', 'submeter evento adverso grave / normal', 1, 0),
(6194, '', 'en_US', 'amendment_002', 'Adverse event(s) report', 1, 20160520),
(6195, '', 'es', 'amendment_002', 'Reporte de eventos adversos', 1, 20160520),
(6196, '', 'fr', 'amendment_002', 'amendment_002', 1, 0),
(7780, '', 'fr', 'Consentimiento informado', 'Consentimiento informado', 1, 0),
(7779, '', 'es', 'Consentimiento informado', 'Consentimiento informado', 1, 0),
(7778, '', 'en_US', 'Consentimiento informado', 'Informed consent', 1, 20160520),
(7625, '', 'pt_BR', 'recruitment_inf', 'recruitment_inf', 1, 0),
(7624, '', 'fr', 'key_exclusion_inf', '', 1, 20160520),
(7623, '', 'es', 'key_exclusion_inf', '', 1, 20160520),
(7622, '', 'en_US', 'key_exclusion_inf', '', 1, 20160520),
(6209, '', 'pt_BR', 'justify', 'justify', 1, 0),
(6210, '', 'en_US', 'justify', 'Justify', 1, 0),
(6211, '', 'es', 'justify', 'JustificaciÃ³n', 1, 20160520),
(6212, '', 'fr', 'justify', 'justify', 1, 0),
(7641, '', 'pt_BR', 'analysis_plan_inf', 'analysis_plan_inf', 1, 0),
(7640, '', 'fr', 'general_procedures_inf', 'general_procedures_inf', 1, 0),
(6217, '', 'pt_BR', '$FILE', '$FILE', 1, 0),
(6218, '', 'en_US', '$FILE', 'File', 1, 0),
(6219, '', 'es', '$FILE', 'Archivo', 1, 0),
(6220, '', 'fr', '$FILE', '$FILE', 1, 0),
(6221, '', 'pt_BR', '$FILE_inf', '$FILE_inf', 1, 0),
(6222, '', 'en_US', '$FILE_inf', '$FILE_inf', 1, 0),
(6223, '', 'es', '$FILE_inf', '$FILE_inf', 1, 0),
(6224, '', 'fr', '$FILE_inf', '$FILE_inf', 1, 0),
(6225, '', 'pt_BR', 'prj_type_AME', 'Emenda & NotificaÃ§Ã£o', 1, 0),
(6226, '', 'en_US', 'prj_type_AME', 'Amendment & notification', 1, 20160520),
(6227, '', 'es', 'prj_type_AME', 'Enmienda y notificaciÃ³n', 1, 0),
(6228, '', 'fr', 'prj_type_AME', 'prj_type_AME', 1, 0),
(6229, '', 'pt_BR', 'status_$', 'protocolo devolvido', 1, 0),
(6230, '', 'en_US', 'status_$', 'Protocol Returned for Corrections', 1, 0),
(6231, '', 'es', 'status_$', 'Protocolo devuelto para corregir', 1, 0),
(6232, '', 'fr', 'status_$', 'status_$', 1, 0),
(7530, '', 'en_US', 'dic_sta_A', 'dic_sta_A', 1, 0),
(7529, '', 'pt_BR', 'dic_sta_A', 'dic_sta_A', 1, 0),
(7528, '', 'fr', 'return_to_edition', 'return_to_edition', 1, 0),
(6237, '', 'pt_BR', 'action_notification_only', 'Este protocolo nÃ£o serÃ¡ apreciado para o ComitÃª, o qual somente atesta estar ciente', 1, 0),
(6238, '', 'en_US', 'action_notification_only', 'Notification only - This project will not be reviewed by the committee', 1, 0),
(6239, '', 'es', 'action_notification_only', 'NotificaciÃ³n solamente - Este protocolo no sera revisado por el comitÃ©', 1, 20160520),
(6240, '', 'fr', 'action_notification_only', 'action_notification_only', 1, 0),
(6241, '', 'pt_BR', 'submit_AMEND', 'Emenda', 1, 0),
(6242, '', 'en_US', 'submit_AMEND', 'Amendment', 1, 0),
(6243, '', 'es', 'submit_AMEND', 'Enmienda', 1, 0),
(6244, '', 'fr', 'submit_AMEND', 'submit_AMEND', 1, 0),
(6245, '', 'pt_BR', 'found', 'Localizado', 1, 0),
(6246, '', 'en_US', 'found', 'Found', 1, 0),
(6247, '', 'es', 'found', 'Encontrados', 1, 0),
(6248, '', 'fr', 'found', 'found', 1, 0),
(6249, '', 'pt_BR', 'records', 'Registro(s)', 1, 0),
(6250, '', 'en_US', 'records', 'Records', 1, 0),
(6251, '', 'es', 'records', 'Registros', 1, 0),
(6252, '', 'fr', 'records', 'records', 1, 0),
(6253, '', 'pt_BR', 'cep_status_P', 'Pesquisando', 1, 20160520),
(6254, '', 'en_US', 'cep_status_P', 'Underway', 1, 20160520),
(6255, '', 'es', 'cep_status_P', 'En curso', 1, 20160520),
(6256, '', 'fr', 'cep_status_P', 'Em pesquisa', 1, 20160520),
(6257, '', 'pt_BR', 'find_a_term', 'informe o termo, o nÃºmero NIEC ou nome do investigador', 1, 0),
(6258, '', 'en_US', 'find_a_term', 'Enter keyword, protocol number or name of investigator', 1, 0),
(6259, '', 'es', 'find_a_term', 'Ingrese una palabra clave, nÃºmero de protocolo o nombre del investigador', 1, 0),
(6260, '', 'fr', 'find_a_term', 'Entrer un mot clÃ©,numÃ©ro de protocole ou le nom de lÂ´enquÃªteur', 1, 0),
(7466, '', 'en_US', 'publico', 'publico', 1, 0),
(7465, '', 'pt_BR', 'publico', 'publico', 1, 0),
(7464, '', 'fr', 'harvesting_info', 'harvesting_info', 1, 0),
(6265, '', 'pt_BR', 'caption_status_P', 'Protocolo aprovado', 1, 0),
(6266, '', 'en_US', 'caption_status_P', 'Protocols status', 1, 20160520),
(6267, '', 'es', 'caption_status_P', 'Estado de protocolos', 1, 20160520),
(6268, '', 'fr', 'caption_status_P', 'caption_status_P', 1, 0),
(7423, '', 'es', 'clear_filter', 'clear_filter', 1, 0),
(7422, '', 'en_US', 'clear_filter', 'clear_filter', 1, 0),
(7418, '', 'en_US', 'search', 'search', 1, 0),
(7419, '', 'es', 'search', 'buscar', 1, 20160520),
(7420, '', 'fr', 'search', 'search', 1, 0),
(7421, '', 'pt_BR', 'clear_filter', 'clear_filter', 1, 0),
(6281, '', 'pt_BR', 'proto_cab_6', 'Pesquisa em Andamento', 1, 0),
(6282, '', 'en_US', 'proto_cab_6', 'Ongoing Investigation', 1, 20160520),
(6283, '', 'es', 'proto_cab_6', 'RevisiÃ³n finalizada', 1, 20160520),
(6284, '', 'fr', 'proto_cab_6', 'proto_cab_6', 1, 0),
(6285, '', 'pt_BR', 'cep_status_in submit', 'em ediÃ§Ã£o', 1, 0),
(6286, '', 'en_US', 'cep_status_in submit', 'Being edited', 1, 0),
(6287, '', 'es', 'cep_status_in submit', 'En ediciÃ³n', 1, 20160520),
(6288, '', 'fr', 'cep_status_in submit', 'cep_status_in submit', 1, 0),
(6289, '', 'pt_BR', 'admin_metting', 'admin_metting', 1, 0),
(6290, '', 'en_US', 'admin_metting', 'Admin Meeting', 1, 0),
(6291, '', 'es', 'admin_metting', 'Reunion admin', 1, 0),
(6292, '', 'fr', 'admin_metting', 'admin_metting', 1, 0),
(6293, '', 'pt_BR', 'minutes_meeting', 'Ata da reuniÃ£o', 1, 0),
(6294, '', 'en_US', 'minutes_meeting', 'Minutes of meeting', 1, 0),
(6295, '', 'es', 'minutes_meeting', 'Minuta de la reuniÃ³n', 1, 0),
(6296, '', 'fr', 'minutes_meeting', 'minutes_meeting', 1, 0),
(6297, '', 'pt_BR', 'scheduled_meeting', 'Pauta da ReuniÃ£o', 1, 0),
(6298, '', 'en_US', 'scheduled_meeting', 'Meeting agenda', 1, 20160520),
(6299, '', 'es', 'scheduled_meeting', 'Agenda de reuniÃ³n', 1, 20160520),
(6300, '', 'fr', 'scheduled_meeting', 'RÃ©unions prÃ©vues', 1, 0),
(6301, '', 'pt_BR', 'investigador', 'investigador', 1, 0),
(6302, '', 'en_US', 'investigador', 'Investigator', 1, 0),
(6303, '', 'es', 'investigador', 'Investigador', 1, 0),
(6304, '', 'fr', 'investigador', 'investigador', 1, 0),
(7438, '', 'en_US', 'admin_email', 'Admin email', 1, 20160520),
(7437, '', 'pt_BR', 'admin_email', 'admin_email', 1, 0),
(7436, '', 'fr', 'paho_code', 'paho_code', 1, 0),
(6309, '', 'pt_BR', 'locate_a_project', 'Localize um projeto', 1, 0),
(6310, '', 'en_US', 'locate_a_project', 'Locate a protocol', 1, 20160520),
(6311, '', 'es', 'locate_a_project', 'Localice un protocolo', 1, 20160520),
(6312, '', 'fr', 'locate_a_project', 'Rechercher un projet', 1, 0),
(7953, '', 'pt_BR', 'formato_decision_proethos.doc', 'formato_decision_proethos.doc', 1, 0),
(7952, '', 'fr', 'formato_certificacion_enmienda_proethos.', 'formato_certificacion_enmienda_proethos.', 1, 0),
(7954, '', 'en_US', 'formato_decision_proethos.doc', 'Decision template', 1, 20160520),
(6321, '', 'pt_BR', 'comment_edit', 'comment_edit', 1, 0),
(6322, '', 'en_US', 'comment_edit', 'Edit comment', 1, 20160520),
(6323, '', 'es', 'comment_edit', 'Editar comentar', 1, 0),
(6324, '', 'fr', 'comment_edit', 'comment_edit', 1, 0),
(7829, '', 'pt_BR', 'End of the investigation', 'End of the investigation', 1, 0),
(6329, '', 'pt_BR', 'acronym', 'TÃ­tulo acronico ou abreviatura', 1, 0),
(6330, '', 'en_US', 'acronym', 'Acronym or Abbreviated Title', 1, 0),
(6331, '', 'es', 'acronym', 'AcrÃ³nimo o TÃ­tulo abreviado', 1, 0),
(6332, '', 'fr', 'acronym', 'acronym', 1, 0),
(6333, '', 'pt_BR', 'acronym_inf', 'Nome utilizado para identificar um estudo, se pertinente', 1, 0),
(6334, '', 'en_US', 'acronym_inf', 'ID/Name used to identify a study, if applicable', 1, 0),
(6335, '', 'es', 'acronym_inf', 'Nombre utilizado para identificar un estudio, si aplica', 1, 0),
(6336, '', 'fr', 'acronym_inf', 'acronym_inf', 1, 0),
(6337, '', 'pt_BR', 'sample', 'EspecificaÃ§Ãµes da amostra dos participantes', 1, 0),
(6338, '', 'en_US', 'sample', 'Sample', 1, 0),
(6339, '', 'es', 'sample', 'Muestra', 1, 0),
(6340, '', 'fr', 'sample', 'sample', 1, 0),
(7477, '', 'pt_BR', 'pm_PRO', 'AprovaÃ§Ã£o condicional', 1, 20160520),
(7476, '', 'fr', 'pm_NOT', 'No aprobado', 1, 20160520),
(7475, '', 'es', 'pm_NOT', 'No aprobado', 1, 20160520),
(6345, '', 'pt_BR', 'gender', 'GÃªnero', 1, 0),
(6346, '', 'en_US', 'gender', 'Gender', 1, 0),
(6347, '', 'es', 'gender', 'GÃ©nero', 1, 0),
(6348, '', 'fr', 'gender', 'gender', 1, 0),
(7688, '', 'fr', 'local_ethical_inf', '', 1, 20160520),
(7687, '', 'es', 'local_ethical_inf', '', 1, 20160520),
(6353, '', 'pt_BR', 'minimum age', 'Idade mÃ­nima', 1, 0),
(6354, '', 'en_US', 'minimum age', 'Minimum age', 1, 20160520),
(6355, '', 'es', 'minimum age', 'Edad mÃ­nima', 1, 20160520),
(6356, '', 'fr', 'minimum age', 'minimum age', 1, 0),
(7604, '', 'fr', 'gender_inf', 'gender_inf', 1, 0),
(7603, '', 'es', 'gender_inf', 'gender_inf', 1, 0),
(7602, '', 'en_US', 'gender_inf', 'gender_inf', 1, 0),
(6361, '', 'pt_BR', 'maximum age', 'Idade mÃ¡xima', 1, 0),
(6362, '', 'en_US', 'maximum age', 'Maximum age', 1, 20160520),
(6363, '', 'es', 'maximum age', 'Edad MÃ¡xima', 1, 0),
(6364, '', 'fr', 'maximum age', 'maximum age', 1, 0),
(7616, '', 'fr', 'maximum age_inf', '', 1, 20160520),
(7615, '', 'es', 'maximum age_inf', '', 1, 20160520),
(7614, '', 'en_US', 'maximum age_inf', '', 1, 20160520),
(6369, '', 'pt_BR', 'recruitment', 'Recrutamento', 1, 0),
(6370, '', 'en_US', 'recruitment', 'Recruitment', 1, 0),
(6371, '', 'es', 'recruitment', 'Reclutamiento', 1, 0),
(6372, '', 'fr', 'recruitment', 'recruitment', 1, 0),
(7771, '', 'es', 'Adverse events report', 'Reporte de eventos adversos', 1, 0),
(6381, '', 'pt_BR', 'not_informed', 'NÃ£o informado', 1, 0),
(6382, '', 'en_US', 'not_informed', 'Not informed', 1, 0),
(6383, '', 'es', 'not_informed', 'No se ha informado', 1, 0),
(6384, '', 'fr', 'not_informed', 'not_informed', 1, 0),
(6385, '', 'pt_BR', 'file_list', 'Lista de aquivos', 1, 0),
(6386, '', 'en_US', 'file_list', 'File list', 1, 0),
(6387, '', 'es', 'file_list', 'Lista de archivos', 1, 0),
(6388, '', 'fr', 'file_list', 'file_list', 1, 0),
(7642, '', 'en_US', 'analysis_plan_inf', 'analysis_plan_inf', 1, 0),
(6393, '', 'pt_BR', 'accept_rejected', 'Trabalho recusado para avaliaÃ§Ã£o', 1, 0),
(6394, '', 'en_US', 'accept_rejected', 'Project not approved', 1, 20160520),
(6395, '', 'es', 'accept_rejected', 'Protocolo no aprobado', 1, 20160520),
(6396, '', 'fr', 'accept_rejected', 'accept_rejected', 1, 0),
(6397, '', 'pt_BR', 'dic_sta_B', 'relatado', 1, 0),
(6398, '', 'en_US', 'dic_sta_B', 'related', 1, 0),
(6399, '', 'es', 'dic_sta_B', 'dic_sta_B', 1, 0),
(6400, '', 'fr', 'dic_sta_B', 'dic_sta_B', 1, 0),
(6401, '', 'pt_BR', 'dic_sta_@', 'indicado', 1, 0),
(6402, '', 'en_US', 'dic_sta_@', 'indicated', 1, 0),
(6403, '', 'es', 'dic_sta_@', 'dic_sta_@', 1, 0),
(6404, '', 'fr', 'dic_sta_@', 'dic_sta_@', 1, 0),
(6405, '', 'pt_BR', 'reedit_draft_opinion', 'Corrigir parecer', 1, 0),
(6406, '', 'en_US', 'reedit_draft_opinion', 'Revise decision', 1, 20160520),
(6407, '', 'es', 'reedit_draft_opinion', 'Revisar decisiÃ³n', 1, 0),
(6408, '', 'fr', 'reedit_draft_opinion', 'reedit_draft_opinion', 1, 0),
(6409, '', 'pt_BR', '	', '	', 1, 0),
(6410, '', 'en_US', '	', '	', 1, 0),
(6411, '', 'es', '	', '	', 1, 0),
(6412, '', 'fr', '	', '	', 1, 0),
(7495, '', 'es', 'dic_pm_2', 'SelecciÃ³n justa de participantes', 1, 20160520),
(7494, '', 'en_US', 'dic_pm_2', 'Fair selection of participants', 1, 20160520),
(7493, '', 'pt_BR', 'dic_pm_2', 'SelecciÃ³n justa de participantes', 1, 20160520),
(7481, '', 'pt_BR', 'pm_RET', 'pm_RET', 1, 0),
(7482, '', 'en_US', 'pm_RET', 'pm_RET', 1, 0),
(7483, '', 'es', 'pm_RET', 'pm_RET', 1, 0),
(7484, '', 'fr', 'pm_RET', 'pm_RET', 1, 0),
(7485, '', 'pt_BR', 'dic_pm_0', 'Valor social', 1, 20160520),
(7486, '', 'en_US', 'dic_pm_0', 'Social value', 1, 20160520),
(7487, '', 'es', 'dic_pm_0', 'Valor social', 1, 20160520),
(7488, '', 'fr', 'dic_pm_0', 'Valor social', 1, 20160520),
(7489, '', 'pt_BR', 'dic_pm_1', 'Validez cientÃ­fica', 1, 20160520),
(7490, '', 'en_US', 'dic_pm_1', 'Scientific validity', 1, 20160520),
(7491, '', 'es', 'dic_pm_1', 'Validez cientÃ­fica', 1, 20160520),
(7492, '', 'fr', 'dic_pm_1', 'Validez cientÃ­fica', 1, 20160520),
(6429, '', 'pt_BR', 'admin_parecer_modelo', 'Modelos de pareceres', 1, 0),
(6430, '', 'en_US', 'admin_parecer_modelo', 'Decision types', 1, 20160520),
(6431, '', 'es', 'admin_parecer_modelo', 'Tipos de decisiÃ³n', 1, 20160520),
(6432, '', 'fr', 'admin_parecer_modelo', 'ModÃ¨les de dÃ©cisions', 1, 0),
(6433, '', 'pt_BR', 'pm_APR', 'Aprovado', 1, 20160520),
(6434, '', 'en_US', 'pm_APR', 'Approved', 1, 20160520),
(6435, '', 'es', 'pm_APR', 'Aprobado', 1, 20160520),
(6436, '', 'fr', 'pm_APR', 'Aprobado', 1, 20160520),
(7558, '', 'en_US', 'Acompanhamento semestral', 'Biannual monitoring', 1, 20160520),
(7557, '', 'pt_BR', 'Acompanhamento semestral', 'Acompanhamento semestral', 1, 0),
(7556, '', 'fr', 'dictamen_8', 'dictamen_8', 1, 0),
(7555, '', 'es', 'dictamen_8', 'dictamen_8', 1, 0),
(7553, '', 'pt_BR', 'dictamen_8', 'dictamen_8', 1, 0),
(7552, '', 'fr', 'dictamen_7', 'dictamen_7', 1, 0),
(7551, '', 'es', 'dictamen_7', 'dictamen_7', 1, 0),
(7550, '', 'en_US', 'dictamen_7', 'dictamen_7', 1, 0),
(7893, '', 'pt_BR', 'completed', 'Finalizado', 1, 20160520),
(7892, '', 'fr', 'suspended', 'suspended', 1, 0),
(7891, '', 'es', 'suspended', 'suspendido', 1, 0),
(7890, '', 'en_US', 'suspended', 'suspended', 1, 0),
(7889, '', 'pt_BR', 'suspended', 'suspended', 1, 0),
(7888, '', 'fr', 'recruiting', 'recruiting', 1, 0),
(7887, '', 'es', 'recruiting', 'reclutando', 1, 0),
(7886, '', 'en_US', 'recruiting', 'recruiting', 1, 0),
(7885, '', 'pt_BR', 'recruiting', 'recruiting', 1, 0),
(7884, '', 'fr', 'pending', 'pending', 1, 0),
(7883, '', 'es', 'pending', 'pendiente', 1, 0),
(7882, '', 'en_US', 'pending', 'pending', 1, 0),
(7881, '', 'pt_BR', 'pending', 'pending', 1, 0),
(7880, '', 'fr', 'nr_dictames_inf', 'nr_dictames_inf', 1, 0),
(7879, '', 'es', 'nr_dictames_inf', 'nr_dictames_inf', 1, 0),
(7878, '', 'en_US', 'nr_dictames_inf', 'nr_dictames_inf', 1, 0),
(7877, '', 'pt_BR', 'nr_dictames_inf', 'nr_dictames_inf', 1, 0),
(7876, '', 'fr', 'Azerbaijan', 'Azerbaijan', 1, 0),
(7875, '', 'es', 'Azerbaijan', 'Azerbaijan', 1, 0),
(7874, '', 'en_US', 'Azerbaijan', 'Azerbaijan', 1, 0),
(7872, '', 'fr', 'nr_dictames', 'nr_dictames', 1, 0),
(7871, '', 'es', 'nr_dictames', '# de opiniones requeridas', 1, 20160520),
(6489, '', 'pt_BR', 'parecer_modelo', 'parecer_modelo', 1, 0),
(6490, '', 'en_US', 'parecer_modelo', 'Decision types', 1, 20160520),
(6491, '', 'es', 'parecer_modelo', 'Tipos de decisiÃ³n', 1, 20160520),
(6492, '', 'fr', 'parecer_modelo', 'parecer_modelo', 1, 0),
(6493, '', 'pt_BR', 'country_item', 'Item', 1, 0),
(6494, '', 'en_US', 'country_item', 'Item', 1, 0),
(6495, '', 'es', 'country_item', 'Item', 1, 0),
(6496, '', 'fr', 'country_item', 'country_item', 1, 0),
(6497, '', 'pt_BR', 'country_desc', 'Nome do pais', 1, 0),
(6498, '', 'en_US', 'country_desc', 'Country', 1, 0),
(6499, '', 'es', 'country_desc', 'Pais', 1, 0),
(6500, '', 'fr', 'country_desc', 'country_desc', 1, 0),
(6501, '', 'pt_BR', 'country_sample_size', 'NÃºmero de participantes no paÃ­s', 1, 0),
(6502, '', 'en_US', 'country_sample_size', 'Country sample size', 1, 20160520),
(6503, '', 'es', 'country_sample_size', 'TamaÃ±o de la muestra del paÃ­s', 1, 20160520),
(6504, '', 'fr', 'country_sample_size', 'country_sample_size', 1, 0),
(6505, '', 'pt_BR', 'country_post', 'Registrar', 1, 0),
(6506, '', 'en_US', 'country_post', 'Post', 1, 0),
(6507, '', 'es', 'country_post', 'Registrar', 1, 0),
(6508, '', 'fr', 'country_post', 'country_post', 1, 0),
(6509, '', 'pt_BR', 'country_enrollment', 'paises de recrutamento', 1, 0),
(6510, '', 'en_US', 'country_enrollment', 'Country enrollment', 1, 0),
(6511, '', 'es', 'country_enrollment', 'Paises de reclutamiento', 1, 0),
(6512, '', 'fr', 'country_enrollment', 'country_enrollment', 1, 0),
(6513, '', 'pt_BR', 'admin_customize', 'Personalizar', 1, 0),
(6514, '', 'en_US', 'admin_customize', 'Customize', 1, 0),
(6515, '', 'es', 'admin_customize', 'Personalizar', 1, 0),
(6516, '', 'fr', 'admin_customize', 'Personnaliser', 1, 0),
(7947, '', 'es', 'formato_reporte_eventos_adversos_proetho', 'Formato Reporte de eventos adversos', 1, 20160520),
(6521, '', 'pt_BR', 'customize_logo', 'Customizar os logotipos', 1, 0),
(6522, '', 'en_US', 'customize_logo', 'Customize logos', 1, 20160520),
(6523, '', 'es', 'customize_logo', 'Personalizar logotipos', 1, 20160520),
(6524, '', 'fr', 'customize_logo', 'Personnalisez logo', 1, 0),
(6525, '', 'pt_BR', 'logo_documents', 'logo_documents', 1, 0),
(6526, '', 'en_US', 'logo_documents', 'Logos', 1, 20160520),
(6527, '', 'es', 'logo_documents', 'Logos', 1, 20160520),
(6528, '', 'fr', 'logo_documents', 'logo_documents', 1, 0),
(6529, '', 'pt_BR', 'logo_site', 'logo_site', 1, 0),
(6530, '', 'en_US', 'logo_site', 'Logo site', 1, 20160520),
(6531, '', 'es', 'logo_site', 'Sitio del logo', 1, 0),
(6532, '', 'fr', 'logo_site', 'logo_site', 1, 0),
(7781, '', 'pt_BR', 'AprobaciÃ³n Ã©tica local', 'AprobaciÃ³n Ã©tica local', 1, 0),
(6537, '', 'pt_BR', 'cust_logo_1', 'Logotipo da pÃ¡gina principal', 1, 0),
(6538, '', 'en_US', 'cust_logo_1', 'Logo home', 1, 0),
(6539, '', 'es', 'cust_logo_1', 'Logo de pagina principal', 1, 0),
(6540, '', 'fr', 'cust_logo_1', 'cust_logo_1', 1, 0),
(7946, '', 'en_US', 'formato_reporte_eventos_adversos_proetho', 'Adverse event report template', 1, 20160520),
(7945, '', 'pt_BR', 'formato_reporte_eventos_adversos_proetho', 'formato_reporte_eventos_adversos_proetho', 1, 0),
(7844, '', 'fr', 'file', 'file', 1, 0),
(7843, '', 'es', 'file', 'file', 1, 0),
(7842, '', 'en_US', 'file', 'file', 1, 0),
(7841, '', 'pt_BR', 'file', 'file', 1, 0),
(6549, '', 'pt_BR', 'ged_documento_tipo', 'Tipos de modelos de documentos', 1, 0),
(6550, '', 'en_US', 'ged_documento_tipo', 'Types of document templates', 1, 20160520),
(6551, '', 'es', 'ged_documento_tipo', 'Tipos de modelos de documentos', 1, 20160520),
(6552, '', 'fr', 'ged_documento_tipo', 'ged_documento_tipo', 1, 0),
(7601, '', 'pt_BR', 'gender_inf', 'gender_inf', 1, 0),
(7600, '', 'fr', 'sample_inf', 'sample_inf', 1, 0),
(7598, '', 'en_US', 'sample_inf', 'sample_inf', 1, 0),
(7599, '', 'es', 'sample_inf', 'sample_inf', 1, 0),
(7682, '', 'en_US', 'scientific_contact_inf', '', 1, 20160520),
(7680, '', 'fr', 'contacts_inf', 'contacts_inf', 1, 0),
(7681, '', 'pt_BR', 'scientific_contact_inf', '', 1, 20160520),
(7683, '', 'es', 'scientific_contact_inf', '', 1, 20160520),
(6569, '', 'pt_BR', 'month_01', 'Janeiro', 1, 0),
(6570, '', 'en_US', 'month_01', 'Jan', 1, 0),
(6571, '', 'es', 'month_01', 'Ene', 1, 0),
(6572, '', 'fr', 'month_01', 'month_01', 1, 0),
(6573, '', 'pt_BR', 'amendment_006', 'Cancelamento do estudo', 1, 0),
(6574, '', 'en_US', 'amendment_006', 'Cancellation of Study', 1, 0),
(6575, '', 'es', 'amendment_006', 'CancelaciÃ³n del estudio', 1, 0),
(6576, '', 'fr', 'amendment_006', 'amendment_006', 1, 0),
(6577, '', 'pt_BR', 'amendment_003', 'ConclusÃ£o do Estudo', 1, 0),
(6578, '', 'en_US', 'amendment_003', 'Completion of Study', 1, 0),
(6579, '', 'es', 'amendment_003', 'ConclusiÃ³n del estudio', 1, 20160520),
(6580, '', 'fr', 'amendment_003', 'amendment_003', 1, 0),
(6581, '', 'pt_BR', 'amendment_004', 'RelatÃ³rio de acompanhamento anual/semestral', 1, 0),
(6582, '', 'en_US', 'amendment_004', 'Follow-up Report', 1, 20160520),
(6583, '', 'es', 'amendment_004', 'Reporte de seguimiento', 1, 20160520),
(6584, '', 'fr', 'amendment_004', 'amendment_004', 1, 0),
(6585, '', 'pt_BR', 'amendment_005', 'SuspensÃ£o do estudo', 1, 0),
(6586, '', 'en_US', 'amendment_005', 'Discontinuation of Study', 1, 0),
(6587, '', 'es', 'amendment_005', 'SuspensiÃ³n del estudio', 1, 0),
(6588, '', 'fr', 'amendment_005', 'amendment_005', 1, 0),
(6589, '', 'pt_BR', 'amendment_007', 'Envio de outros documentos', 1, 0),
(6590, '', 'en_US', 'amendment_007', 'Submission of Other Documents', 1, 0),
(6591, '', 'es', 'amendment_007', 'EnvÃ­o de otros documentos', 1, 0),
(6592, '', 'fr', 'amendment_007', 'amendment_007', 1, 0),
(6593, '', 'pt_BR', 'date_suspension', 'date_suspension', 1, 0),
(6594, '', 'en_US', 'date_suspension', 'Suspension date', 1, 20160520),
(6595, '', 'es', 'date_suspension', 'Fecha de suspensiÃ³n', 1, 0),
(6596, '', 'fr', 'date_suspension', 'date_suspension', 1, 0),
(7739, '', 'es', 'ref', 'ref', 1, 0),
(7738, '', 'en_US', 'ref', 'ref', 1, 0),
(7737, '', 'pt_BR', 'ref', 'ref', 1, 0),
(7732, '', 'fr', 'submit_file', 'submit_file', 1, 0),
(7733, '', 'pt_BR', 'logo_login', 'logo_login', 1, 0),
(7734, '', 'en_US', 'logo_login', 'logo_login', 1, 0),
(7735, '', 'es', 'logo_login', 'Logo pÃ¡gina inicio', 1, 20160520),
(7736, '', 'fr', 'logo_login', 'logo_login', 1, 0),
(7697, '', 'pt_BR', 'Reporte de eventos adversos', 'Reporte de eventos adversos', 1, 0),
(7696, '', 'fr', 'International Clinical Trials Registry P', 'International Clinical Trials Registry P', 1, 0),
(7519, '', 'es', 'dic_pm_8', 'Comentarios o sugerencias', 1, 20160520),
(7520, '', 'fr', 'dic_pm_8', 'Comentarios o sugerencias', 1, 20160520),
(6621, '', 'pt_BR', 'ghost', 'Assumir o perfil de um usuÃ¡rio', 1, 0),
(6622, '', 'en_US', 'ghost', 'Act on behalf of a different user', 1, 0),
(6623, '', 'es', 'ghost', 'Asumir el perfil de otro usuario', 1, 0),
(6624, '', 'fr', 'ghost', 'Agir au nom dÂ´un autre utilisateur', 1, 0),
(6625, '', 'pt_BR', 'admin_ghost', 'Modo Ghost User', 1, 0),
(6626, '', 'en_US', 'admin_ghost', 'Proxy mode', 1, 0),
(6627, '', 'es', 'admin_ghost', 'Modo "proxy"', 1, 20160520),
(6628, '', 'fr', 'admin_ghost', 'Mode Proxy', 1, 0),
(6629, '', 'pt_BR', 'ghost_instruction', '', 1, 20160520),
(8652, '', 'pt_BR', 'justificativa_inf', '', 1, 20160520),
(8655, '', 'pt_BR', 'Modo de edición deshabilitado', 'Modo de ediciÃ³n deshabilitado', 1, 20160520),
(6630, '', 'en_US', 'ghost_instruction', '', 1, 20160520),
(6631, '', 'es', 'ghost_instruction', '', 1, 20160520),
(8536, '', 'es', 'help_file', 'Archivo de ayuda', 1, 20160520),
(8537, '', 'es', 'In submission', 'En proceso de presentaciÃ³n', 1, 20160520),
(6632, '', 'fr', 'ghost_instruction', 'ghost_instruction', 1, 0),
(6633, '', 'pt_BR', 'ghost_top', 'Modo Fantasma', 1, 0),
(6634, '', 'en_US', 'ghost_top', 'Proxy Mode', 1, 0),
(6635, '', 'es', 'ghost_top', 'Modo "actuando en nombre de"', 1, 0),
(6636, '', 'fr', 'ghost_top', 'ghost_top', 1, 0),
(6637, '', 'pt_BR', 'Document Model to Investigador', 'Modelo de documento para o pesquisador', 1, 0),
(6638, '', 'en_US', 'Document Model to Investigador', 'Document Model to Investigador', 1, 0),
(6639, '', 'es', 'Document Model to Investigador', 'Document Model to Investigador', 1, 0),
(6640, '', 'fr', 'Document Model to Investigador', 'Document Model to Investigador', 1, 0),
(6641, '', 'pt_BR', 'reporte_de_eventos_adversos.doc', 'FormulÃ¡rio para reportar eventos adversos (InglÃªs)', 1, 0),
(6642, '', 'en_US', 'reporte_de_eventos_adversos.doc', 'Form to report adverse events', 1, 20160520),
(6643, '', 'es', 'reporte_de_eventos_adversos.doc', 'Formulario para reportar eventos adversos', 1, 20160520),
(6644, '', 'fr', 'reporte_de_eventos_adversos.doc', 'reporte_de_eventos_adversos.doc', 1, 0),
(6645, '', 'pt_BR', 'certificacion_enmienda_sistema_pucpr.doc', 'CertificaÃ§Ã£o de emenda.doc', 1, 0),
(6646, '', 'en_US', 'certificacion_enmienda_sistema_pucpr.doc', 'Amendment Certification.doc', 1, 0),
(6647, '', 'es', 'certificacion_enmienda_sistema_pucpr.doc', 'CertificaciÃ³n de enmienda.doc', 1, 0),
(6648, '', 'fr', 'certificacion_enmienda_sistema_pucpr.doc', 'certificacion_enmienda_sistema_pucpr.doc', 1, 0),
(6649, '', 'pt_BR', 'decision_sistema_pucpr_aprobado.doc', 'Decisao aprovado.doc', 1, 0),
(6650, '', 'en_US', 'decision_sistema_pucpr_aprobado.doc', 'Decision approved.doc', 1, 20160520),
(6651, '', 'es', 'decision_sistema_pucpr_aprobado.doc', 'DecisiÃ³n aprobado.doc', 1, 20160520),
(6652, '', 'fr', 'decision_sistema_pucpr_aprobado.doc', 'decision_sistema_pucpr_aprobado.doc', 1, 0),
(6653, '', 'pt_BR', 'tit_ic_noticia', 'Email Communications', 1, 0),
(6654, '', 'en_US', 'tit_ic_noticia', 'Email Communications', 1, 0),
(6655, '', 'es', 'tit_ic_noticia', 'Comunicaciones electronicas', 1, 0),
(6656, '', 'fr', 'tit_ic_noticia', 'tit_ic_noticia', 1, 0),
(7523, '', 'es', 'Modo de ediÃ§Ã£o desabilitado', 'Modo de ediciÃ³n deshabilitado', 1, 20160520),
(7565, '', 'pt_BR', 'Final da pesquisa', 'Final da pesquisa', 1, 0),
(7564, '', 'fr', 'Acompanhamento anual', 'Acompanhamento anual', 1, 0),
(7822, '', 'en_US', 'Semi-annual', 'Semi-annual', 1, 0),
(7821, '', 'pt_BR', 'Semi-annual', 'Semi-annual', 1, 0),
(7820, '', 'fr', 'cep', 'cep', 1, 0),
(6669, '', 'pt_BR', 'action_005_adhoc', 'Indicar avaliador Ad-Hoc', 1, 0),
(6670, '', 'en_US', 'action_005_adhoc', 'Assign External Reviewer', 1, 0),
(6671, '', 'es', 'action_005_adhoc', 'Asignar revisor externo', 1, 0),
(6672, '', 'fr', 'action_005_adhoc', 'action_005_adhoc', 1, 0),
(7516, '', 'fr', 'dic_pm_7', 'Otros comentarios', 1, 20160520),
(7515, '', 'es', 'dic_pm_7', 'Otros comentarios', 1, 20160520),
(7496, '', 'fr', 'dic_pm_2', 'SelecciÃ³n justa de participantes', 1, 20160520),
(7497, '', 'pt_BR', 'dic_pm_3', 'Balance favorable de beneficios y riesgos', 1, 20160520),
(7498, '', 'en_US', 'dic_pm_3', 'Favorable balance of benefits and risks', 1, 20160520),
(7499, '', 'es', 'dic_pm_3', 'Balance favorable de beneficios y riesgos', 1, 20160520),
(7500, '', 'fr', 'dic_pm_3', 'Balance favorable de beneficios y riesgos', 1, 20160520),
(7501, '', 'pt_BR', 'dic_pm_4', 'Consentimiento informado', 1, 20160520),
(7502, '', 'en_US', 'dic_pm_4', 'Informed consent', 1, 20160520),
(7503, '', 'es', 'dic_pm_4', 'Consentimiento informado', 1, 20160520),
(7504, '', 'fr', 'dic_pm_4', 'Consentimiento informado', 1, 20160520),
(7505, '', 'pt_BR', 'dic_pm_5', 'Respeto por los participantes', 1, 20160520),
(7506, '', 'en_US', 'dic_pm_5', 'Respect for participants', 1, 20160520),
(7507, '', 'es', 'dic_pm_5', 'Respeto por los participantes', 1, 20160520),
(7508, '', 'fr', 'dic_pm_5', 'Respeto por los participantes', 1, 20160520),
(7509, '', 'pt_BR', 'dic_pm_6', 'JustificaciÃ³n', 1, 20160520),
(7510, '', 'en_US', 'dic_pm_6', 'Justification', 1, 20160520),
(7511, '', 'es', 'dic_pm_6', 'JustificaciÃ³n', 1, 20160520),
(7512, '', 'fr', 'dic_pm_6', 'JustificaciÃ³n', 1, 20160520),
(7513, '', 'pt_BR', 'dic_pm_7', 'Otros comentarios', 1, 20160520),
(7514, '', 'en_US', 'dic_pm_7', 'Other comments', 1, 20160520);
INSERT INTO `_messages` (`id_msg`, `msg_pag`, `msg_language`, `msg_field`, `msg_content`, `msg_ativo`, `msg_update`) VALUES
(6693, '', 'pt_BR', 'decision_oficial', 'DecisÃ£o do Parecer', 1, 0),
(6694, '', 'en_US', 'decision_oficial', 'Official decision', 1, 20160520),
(6695, '', 'es', 'decision_oficial', 'DecisiÃ³n Oficial', 1, 20160520),
(6696, '', 'fr', 'decision_oficial', 'decision_oficial', 1, 0),
(7928, '', 'fr', 'dictamen_PRO_1', 'dictamen_PRO_1', 1, 0),
(7927, '', 'es', 'dictamen_PRO_1', 'dictamen_PRO_1', 1, 0),
(7926, '', 'en_US', 'dictamen_PRO_1', 'dictamen_PRO_1', 1, 0),
(7925, '', 'pt_BR', 'dictamen_PRO_1', 'dictamen_PRO_1', 1, 0),
(6705, '', 'pt_BR', '2', '2', 1, 0),
(6706, '', 'en_US', '2', '2', 1, 0),
(6707, '', 'es', '2', '2', 1, 0),
(6708, '', 'fr', '2', '2', 1, 0),
(6709, '', 'pt_BR', '3', '3', 1, 0),
(6710, '', 'en_US', '3', '3', 1, 0),
(6711, '', 'es', '3', '3', 1, 0),
(6712, '', 'fr', '3', '3', 1, 0),
(6713, '', 'pt_BR', '4', '4', 1, 0),
(6714, '', 'en_US', '4', '4', 1, 0),
(6715, '', 'es', '4', '4', 1, 0),
(6716, '', 'fr', '4', '4', 1, 0),
(6717, '', 'pt_BR', '5', '5', 1, 0),
(6718, '', 'en_US', '5', '5', 1, 0),
(6719, '', 'es', '5', '5', 1, 0),
(6720, '', 'fr', '5', '5', 1, 0),
(6721, '', 'pt_BR', '6', '6', 1, 0),
(6722, '', 'en_US', '6', '6', 1, 0),
(6723, '', 'es', '6', '6', 1, 0),
(6724, '', 'fr', '6', '6', 1, 0),
(6725, '', 'pt_BR', 'date_dictamen', 'Data do Parecer', 1, 0),
(6726, '', 'en_US', 'date_dictamen', 'Decision date', 1, 20160520),
(6727, '', 'es', 'date_dictamen', 'Fecha de decisiÃ³n', 1, 0),
(6728, '', 'fr', 'date_dictamen', 'date_dictamen', 1, 0),
(6729, '', 'pt_BR', 'communicate_investigator_inf', 'Comunicar informaÃ§Ãµes do investigador', 1, 0),
(6730, '', 'en_US', 'communicate_investigator_inf', 'Send information to investigator', 1, 20160520),
(6731, '', 'es', 'communicate_investigator_inf', 'Enviar informaciÃ³n al investigador', 1, 20160520),
(6732, '', 'fr', 'communicate_investigator_inf', 'communicate_investigator_inf', 1, 0),
(6733, '', 'pt_BR', 'action_014', 'Enviar parecer para correÃ§Ãµes', 1, 0),
(6734, '', 'en_US', 'action_014', 'Send decision for corrections', 1, 20160520),
(6735, '', 'es', 'action_014', 'Enviar decisiÃ³n para correcciones', 1, 0),
(6736, '', 'fr', 'action_014', 'action_014', 1, 0),
(6737, '', 'pt_BR', 'reedit_draft_opinion_inf', '', 1, 20160520),
(6738, '', 'en_US', 'reedit_draft_opinion_inf', '', 1, 20160520),
(6739, '', 'es', 'reedit_draft_opinion_inf', '', 1, 20160520),
(6740, '', 'fr', 'reedit_draft_opinion_inf', '', 1, 20160520),
(6741, '', 'pt_BR', 'Insurance policy', 'ApÃ³lice de seguro', 1, 0),
(6742, '', 'en_US', 'Insurance policy', 'Insurance policy', 1, 0),
(6743, '', 'es', 'Insurance policy', 'PÃ³liza de seguro', 1, 0),
(6744, '', 'fr', 'Insurance policy', 'Insurance policy', 1, 0),
(6745, '', 'pt_BR', 'Local Ethical Opinion (Dictamen)', 'Local Ethical Opinion (Dictamen)', 1, 0),
(6746, '', 'en_US', 'Local Ethical Opinion (Dictamen)', 'Decision', 1, 0),
(6747, '', 'es', 'Local Ethical Opinion (Dictamen)', 'DecisiÃ³n', 1, 0),
(6748, '', 'fr', 'Local Ethical Opinion (Dictamen)', 'Local Ethical Opinion (Dictamen)', 1, 0),
(6749, '', 'pt_BR', 'pm_', 'pm_', 1, 0),
(6750, '', 'en_US', 'pm_', 'pm_', 1, 0),
(6751, '', 'es', 'pm_', 'pm_', 1, 0),
(6752, '', 'fr', 'pm_', 'pm_', 1, 0),
(6753, '', 'pt_BR', 'research_ongoing', 'Parecer Enviado', 1, 0),
(6754, '', 'en_US', 'research_ongoing', 'Decision issued', 1, 20160520),
(6755, '', 'es', 'research_ongoing', 'DecisiÃ³n emitida', 1, 20160520),
(6756, '', 'fr', 'research_ongoing', 'Projet en cours', 1, 0),
(7970, '', 'en_US', 'color', 'color', 1, 0),
(7968, '', 'fr', 'cod', 'cod', 1, 0),
(7969, '', 'pt_BR', 'color', 'color', 1, 0),
(7967, '', 'es', 'cod', 'cod', 1, 0),
(7966, '', 'en_US', 'cod', 'cod', 1, 0),
(6761, '', 'pt_BR', 'aproved', 'Aprovado', 1, 0),
(6762, '', 'en_US', 'aproved', 'Approved', 1, 0),
(6763, '', 'es', 'aproved', 'Aprobado', 1, 0),
(6764, '', 'fr', 'aproved', 'aproved', 1, 0),
(6765, '', 'pt_BR', 'committee_reports', 'RelatÃ³rios do ComitÃª', 1, 0),
(6766, '', 'en_US', 'committee_reports', 'Committee reports', 1, 20160520),
(6767, '', 'es', 'committee_reports', 'Reportes del comitÃ©', 1, 20160520),
(6768, '', 'fr', 'committee_reports', 'Rapports du ComitÃ©', 1, 0),
(6769, '', 'pt_BR', 'report_001', 'Indicadores', 1, 0),
(6770, '', 'en_US', 'report_001', 'Indicators', 1, 0),
(6771, '', 'es', 'report_001', 'Indicadores', 1, 0),
(6772, '', 'fr', 'report_001', 'Indicateurs', 1, 0),
(6773, '', 'pt_BR', 'year', 'year', 1, 0),
(6774, '', 'en_US', 'year', 'Year', 1, 0),
(6775, '', 'es', 'year', 'AÃ±o', 1, 0),
(6776, '', 'fr', 'year', 'year', 1, 0),
(6777, '', 'pt_BR', 'month_02', 'Fevereiro', 1, 0),
(6778, '', 'en_US', 'month_02', 'Feb', 1, 0),
(6779, '', 'es', 'month_02', 'Feb', 1, 0),
(6780, '', 'fr', 'month_02', 'month_02', 1, 0),
(6781, '', 'pt_BR', 'month_03', 'MarÃ§o', 1, 0),
(6782, '', 'en_US', 'month_03', 'Mar', 1, 0),
(6783, '', 'es', 'month_03', 'Mar', 1, 0),
(6784, '', 'fr', 'month_03', 'Mars', 1, 0),
(6785, '', 'pt_BR', 'month_04', 'Abril', 1, 0),
(6786, '', 'en_US', 'month_04', 'Apr', 1, 0),
(6787, '', 'es', 'month_04', 'Abr', 1, 0),
(6788, '', 'fr', 'month_04', 'Avril', 1, 0),
(6789, '', 'pt_BR', 'month_05', 'Maio', 1, 0),
(6790, '', 'en_US', 'month_05', 'May', 1, 0),
(6791, '', 'es', 'month_05', 'May', 1, 20160520),
(6792, '', 'fr', 'month_05', 'Mai', 1, 0),
(6793, '', 'pt_BR', 'month_06', 'Junho', 1, 0),
(6794, '', 'en_US', 'month_06', 'Jun', 1, 0),
(6795, '', 'es', 'month_06', 'Jun', 1, 0),
(6796, '', 'fr', 'month_06', 'month_06', 1, 0),
(6797, '', 'pt_BR', 'month_07', 'Julho', 1, 0),
(6798, '', 'en_US', 'month_07', 'Jul', 1, 0),
(6799, '', 'es', 'month_07', 'Jul', 1, 0),
(6800, '', 'fr', 'month_07', 'month_07', 1, 0),
(6801, '', 'pt_BR', 'month_08', 'Agosto', 1, 0),
(6802, '', 'en_US', 'month_08', 'Aug', 1, 0),
(6803, '', 'es', 'month_08', 'Ago', 1, 0),
(6804, '', 'fr', 'month_08', 'month_08', 1, 0),
(6805, '', 'pt_BR', 'report_001_inf', 'report_001_inf', 1, 0),
(6806, '', 'en_US', 'report_001_inf', 'Report 1', 1, 0),
(6807, '', 'es', 'report_001_inf', 'Reporte 1', 1, 0),
(6808, '', 'fr', 'report_001_inf', 'Rapport 1', 1, 0),
(6809, '', 'pt_BR', 'report_001a', 'Projetos submetidos', 1, 0),
(6810, '', 'en_US', 'report_001a', 'Protocols submitted', 1, 20160520),
(6811, '', 'es', 'report_001a', 'Protocolos presentados', 1, 20160520),
(6812, '', 'fr', 'report_001a', 'report_001a', 1, 0),
(6813, '', 'pt_BR', 'report_001b', 'Projetos avaliados', 1, 0),
(6814, '', 'en_US', 'report_001b', 'Protocols evaluated', 1, 20160520),
(6815, '', 'es', 'report_001b', 'Protocolos evaluados', 1, 20160520),
(6816, '', 'fr', 'report_001b', 'report_001b', 1, 0),
(6817, '', 'pt_BR', 'report_001c', 'NÃºmero de pareceres emitidos', 1, 0),
(6818, '', 'en_US', 'report_001c', 'Number of decisions issued', 1, 20160520),
(6819, '', 'es', 'report_001c', 'NÃºmero de decisiones emitidas', 1, 20160520),
(6820, '', 'fr', 'report_001c', 'report_001c', 1, 0),
(6821, '', 'pt_BR', 'report_002', 'Acompanhamento dos protocolos', 1, 0),
(6822, '', 'en_US', 'report_002', 'Protocol Monitoring', 1, 0),
(6823, '', 'es', 'report_002', 'Monitoreo de protocolos', 1, 0),
(6824, '', 'fr', 'report_002', 'Protocole surveillance', 1, 0),
(6825, '', 'pt_BR', 'report_003', 'Lista dos pesquisadores', 1, 0),
(6826, '', 'en_US', 'report_003', 'List of investigators', 1, 20160520),
(6827, '', 'es', 'report_003', 'Listado de investigadores', 1, 0),
(6828, '', 'fr', 'report_003', 'report_003', 1, 0),
(6829, '', 'pt_BR', 'report_004', 'Membros do Comite', 1, 0),
(6830, '', 'en_US', 'report_004', 'Members of the committee', 1, 20160520),
(6831, '', 'es', 'report_004', 'Miembros del ComitÃ©', 1, 0),
(6832, '', 'fr', 'report_004', 'report_004', 1, 0),
(6833, '', 'pt_BR', 'local_ethical_approval', 'AprovaÃ§Ã£o no local de origem', 1, 0),
(6834, '', 'en_US', 'local_ethical_approval', 'Prior ethical approval', 1, 20160520),
(6835, '', 'es', 'local_ethical_approval', 'AprobaciÃ³n Ã©tica previa', 1, 0),
(6836, '', 'fr', 'local_ethical_approval', 'Prior ethical approval', 1, 0),
(6837, '', 'pt_BR', 'local_ethical_approval_inf', '', 1, 0),
(6838, '', 'en_US', 'local_ethical_approval_inf', '', 1, 0),
(6839, '', 'es', 'local_ethical_approval_inf', '', 1, 20160520),
(6840, '', 'fr', 'local_ethical_approval_inf', '', 1, 20160520),
(6841, '', 'pt_BR', 'local_ethical_approval_inf_inf', 'local_ethical_approval_inf_inf', 1, 0),
(6842, '', 'en_US', 'local_ethical_approval_inf_inf', 'Local ethical approval info', 1, 20160520),
(6843, '', 'es', 'local_ethical_approval_inf_inf', 'InformaciÃ³n de la aprobaciÃ³n Ã©tica local', 1, 0),
(6844, '', 'fr', 'local_ethical_approval_inf_inf', 'local_ethical_approval_inf_inf', 1, 0),
(6847, '', 'es', 'local_ethical', 'Indique si el protocolo de investigaciÃ³n ya ha sido aprobado por un comitÃ© de Ã©tica local o, en su ausencia, por el Ministerio de Salud del paÃ­s. Toda aprobaciÃ³n Ã©tica previa debe adjuntarse.', 1, 0),
(6848, '', 'fr', 'local_ethical', 'local_ethical', 1, 0),
(6845, '', 'pt_BR', 'local_ethical', 'Informe se o protocolo de pesquisa jÃ¡ foi aprovado em suas instituiÃ§Ã£o e ou pais de origem. Em caso afirmativo, deve-se anexar o parecer nos arquivos de submissÃ£o para comprovaÃ§Ã£o.', 1, 0),
(6846, '', 'en_US', 'local_ethical', 'Indicate whether the research protocol has already been approved by a local ethics committee or, in its absence, by the countryÂ´s Minister of Health. Any previous ethical approval must be attached.', 1, 20160520),
(7621, '', 'pt_BR', 'key_exclusion_inf', '', 1, 20160520),
(7620, '', 'fr', 'key_inclusion_inf', '', 1, 20160520),
(7619, '', 'es', 'key_inclusion_inf', '', 1, 20160520),
(6853, '', 'pt_BR', 'report_002_inf', 'report_002_inf', 1, 0),
(6854, '', 'en_US', 'report_002_inf', 'Report 2', 1, 0),
(6855, '', 'es', 'report_002_inf', 'Reporte 2', 1, 0),
(6856, '', 'fr', 'report_002_inf', 'Rapport 2', 1, 0),
(6857, '', 'pt_BR', 'monitoring', 'MonitoraÃ§Ã£o', 1, 0),
(6858, '', 'en_US', 'monitoring', 'Monitoring', 1, 0),
(6859, '', 'es', 'monitoring', 'Monitoreo', 1, 0),
(6860, '', 'fr', 'monitoring', 'monitoring', 1, 0),
(6861, '', 'pt_BR', 'report_003_inf', '', 1, 20160520),
(6862, '', 'en_US', 'report_003_inf', '', 1, 20160520),
(6863, '', 'es', 'report_003_inf', '', 1, 20160520),
(6864, '', 'fr', 'report_003_inf', '', 1, 20160520),
(6865, '', 'pt_BR', 'report_004_inf', '', 1, 20160520),
(6866, '', 'en_US', 'report_004_inf', '', 1, 20160520),
(6867, '', 'es', 'report_004_inf', '', 1, 20160520),
(6868, '', 'fr', 'report_004_inf', '', 1, 20160520),
(7870, '', 'en_US', 'nr_dictames', 'nr_dictames', 1, 0),
(7869, '', 'pt_BR', 'nr_dictames', 'nr_dictames', 1, 0),
(6873, '', 'pt_BR', 'Template for Investigador', 'Template para pesquisador', 1, 0),
(6874, '', 'en_US', 'Template for Investigador', 'Reference documents for Committee', 1, 20160520),
(6875, '', 'es', 'Template for Investigador', 'Documentos de referencia del comitÃ©', 1, 20160520),
(6876, '', 'fr', 'Template for Investigador', 'ModÃ¨les pour les EnquÃªteurs', 1, 0),
(6877, '', 'pt_BR', 'Template for Committee', 'Template for Committee', 1, 0),
(6878, '', 'en_US', 'Template for Committee', 'Templates for committees', 1, 0),
(6879, '', 'es', 'Template for Committee', 'Formatos para comites', 1, 0),
(6880, '', 'fr', 'Template for Committee', 'Template for Committee', 1, 0),
(6881, '', 'pt_BR', 'admin_protocols', 'Protocolos no CEP (ManutenÃ§Ã£o)', 1, 0),
(6882, '', 'en_US', 'admin_protocols', 'Committee protocols (maintenance)', 1, 0),
(6883, '', 'es', 'admin_protocols', 'Protocolos del comitÃ© (mantenimiento)', 1, 0),
(6884, '', 'fr', 'admin_protocols', 'Protocoles Administratifs', 1, 0),
(6885, '', 'pt_BR', 'protocols_new', 'Adicionar protocolo manualmente', 1, 0),
(6886, '', 'en_US', 'protocols_new', 'Manage protocols manually', 1, 20160520),
(6887, '', 'es', 'protocols_new', 'Manejar protocolos manualmente', 1, 20160520),
(6888, '', 'fr', 'protocols_new', 'Protocoles Nouveaux', 1, 20160520),
(7828, '', 'fr', 'Annual Monitoring', 'Annual Monitoring', 1, 0),
(7827, '', 'es', 'Annual Monitoring', 'Monitoreo anual', 1, 20160520),
(7826, '', 'en_US', 'Annual Monitoring', 'Annual Monitoring', 1, 0),
(7825, '', 'pt_BR', 'Annual Monitoring', 'Annual Monitoring', 1, 0),
(7534, '', 'en_US', 'Approved', 'Approved', 1, 0),
(7533, '', 'pt_BR', 'Approved', 'Approved', 1, 0),
(7532, '', 'fr', 'dic_sta_A', 'dic_sta_A', 1, 0),
(7531, '', 'es', 'dic_sta_A', 'dic_sta_A', 1, 0),
(7832, '', 'fr', 'End of the investigation', 'End of the investigation', 1, 0),
(6901, '', 'pt_BR', 'ID', 'ID', 1, 0),
(6902, '', 'en_US', 'ID', 'ID', 1, 0),
(6903, '', 'es', 'ID', 'ID', 1, 0),
(6904, '', 'fr', 'ID', 'ID', 1, 0),
(6905, '', 'pt_BR', 'no_investigator', 'no_investigator', 1, 0),
(6906, '', 'en_US', 'no_investigator', 'There is no investigator', 1, 0),
(6907, '', 'es', 'no_investigator', 'No hay investigador', 1, 0),
(6908, '', 'fr', 'no_investigator', 'no_investigator', 1, 0),
(6917, '', 'pt_BR', 'Date of enrollment of first participant', 'Data prevista para o primeiro recrutamento', 1, 0),
(6918, '', 'en_US', 'Date of enrollment of first participant', 'Estimated date of initial recruitment', 1, 0),
(6919, '', 'es', 'Date of enrollment of first participant', 'Fecha prevista para el inicio de reclutamiento', 1, 0),
(6920, '', 'fr', 'Date of enrollment of first participant', 'Date of enrollment of first participant', 1, 0),
(6921, '', 'pt_BR', 'Date of enrollment of first participant_', 'Date of enrollment of first participant', 1, 0),
(6922, '', 'en_US', 'Date of enrollment of first participant_', 'Date of enrollment of first participant', 1, 0),
(6923, '', 'es', 'Date of enrollment of first participant_', 'Fecha de inscripciÃ³n del primer participante', 1, 0),
(6924, '', 'fr', 'Date of enrollment of first participant_', 'Date of enrollment of first participant_', 1, 0),
(6925, '', 'pt_BR', 'author_name', 'Nome do pesquisador', 1, 20160520),
(6926, '', 'en_US', 'author_name', 'Name of Investigator', 1, 20160520),
(6927, '', 'es', 'author_name', 'Nombre del investigador', 1, 20160520),
(6928, '', 'fr', 'author_name', 'author_name', 1, 0),
(6929, '', 'pt_BR', 'new_author', 'Adicionar novo investigador', 1, 0),
(6930, '', 'en_US', 'new_author', 'Add new investigator', 1, 0),
(6931, '', 'es', 'new_author', 'AÃ±adir nuevo investigador', 1, 0),
(6932, '', 'fr', 'new_author', 'new_author', 1, 0),
(6933, '', 'pt_BR', 'contact_active', 'Ativar este investigador como contato principal', 1, 0),
(6934, '', 'en_US', 'contact_active', 'Enable this researcher as the primary contact', 1, 0),
(6935, '', 'es', 'contact_active', 'Habilitar este investigador como el contacto principal', 1, 0),
(6936, '', 'fr', 'contact_active', 'contact_active', 1, 0),
(6937, '', 'pt_BR', 'author_not_found', 'Autor nÃ£o foi localizado, para inserir um novo autor Ã© necessÃ¡rio realizar seu cadastro na tela inicial do sistema', 1, 0),
(6938, '', 'en_US', 'author_not_found', 'Author not found. To register a  new author, please visit the home page.', 1, 0),
(6939, '', 'es', 'author_not_found', 'No se encontro al autor. Para registrar un nuevo autor, favor visitar la pagina principal.', 1, 20160520),
(6940, '', 'fr', 'author_not_found', 'author_not_found', 1, 0),
(6941, '', 'pt_BR', 'email_invalid', 'email_invalid', 1, 0),
(6942, '', 'en_US', 'email_invalid', 'Invalid email', 1, 0),
(6943, '', 'es', 'email_invalid', 'Correo no vÃ¡lido', 1, 20160520),
(6944, '', 'fr', 'email_invalid', 'email_invalid', 1, 0),
(6945, '', 'pt_BR', 'add_new_member', 'Incluir novo pesquisador', 1, 0),
(6946, '', 'en_US', 'add_new_member', 'Add new investigator', 1, 0),
(6947, '', 'es', 'add_new_member', 'AÃ±adir nuevo investigador', 1, 0),
(6948, '', 'fr', 'add_new_member', 'add_new_member', 1, 0),
(6949, '', 'pt_BR', 'new_author_inf', 'Para inserir um membro da equipe de pesquisa Ã© necessÃ¡rio que este esteja cadastrado na plataforma previamente. Para cadastra um novo investigador Ã© necessÃ¡rio entrar na tela de login do sistema.', 1, 0),
(6950, '', 'en_US', 'new_author_inf', 'To add a new member of the research team it is required to register him/her previously on this platform. To sign-up a new investigator it is required to go to the login information screen on the system.', 1, 0),
(6951, '', 'es', 'new_author_inf', 'Para aÃ±adir un nuevo miembro del equipo de investigaciÃ³n, se requiere registrarlo(a) previamente en esta plataforma. Para registrar un nuevo investigador, se requiere ir a la pantalla de informaciÃ³n de usuario en el sistema.', 1, 0),
(6952, '', 'fr', 'new_author_inf', 'new_author_inf', 1, 0),
(6953, '', 'pt_BR', 'email_inform', 'Informe o e-mail / login do investigador', 1, 0),
(6954, '', 'en_US', 'email_inform', 'Email or login info', 1, 0),
(6955, '', 'es', 'email_inform', 'InformaciÃ³n de correo electrÃ³nico o usuario', 1, 0),
(6956, '', 'fr', 'email_inform', 'email_inform', 1, 0),
(6957, '', 'pt_BR', 'date_submitted', 'data do envio', 1, 0),
(6958, '', 'en_US', 'date_submitted', 'Date submitted', 1, 20160520),
(6959, '', 'es', 'date_submitted', 'Fecha de presentaciÃ³n', 1, 0),
(6960, '', 'fr', 'date_submitted', 'date_submitted', 1, 0),
(6961, '', 'pt_BR', 'date_accept', 'Aceito em', 1, 0),
(6962, '', 'en_US', 'date_accept', 'Accepted on', 1, 0),
(6963, '', 'es', 'date_accept', 'Aceptado en', 1, 0),
(6964, '', 'fr', 'date_accept', 'date_accept', 1, 0),
(6965, '', 'pt_BR', 'date_update', 'Atualizado em', 1, 0),
(6966, '', 'en_US', 'date_update', 'Updated on', 1, 0),
(6967, '', 'es', 'date_update', 'Actualizado en', 1, 0),
(6968, '', 'fr', 'date_update', 'date_update', 1, 0),
(6969, '', 'pt_BR', 'date_amendment', 'Finalizado', 1, 0),
(6970, '', 'en_US', 'date_amendment', 'Finalized', 1, 20160520),
(6971, '', 'es', 'date_amendment', 'Finalizado', 1, 20160520),
(6972, '', 'fr', 'date_amendment', 'date_amendment', 1, 0),
(6973, '', 'pt_BR', 'dictamen_date', 'EmissÃ£o do parecer', 1, 0),
(6974, '', 'en_US', 'dictamen_date', 'Decision date', 1, 20160520),
(6975, '', 'es', 'dictamen_date', 'Fecha de decisiÃ³n', 1, 20160520),
(6976, '', 'fr', 'dictamen_date', 'dictamen_date', 1, 0),
(6977, '', 'pt_BR', 'aware_date', 'CiÃªncia em', 1, 0),
(6978, '', 'en_US', 'aware_date', 'Informed on', 1, 0),
(6979, '', 'es', 'aware_date', 'Informado en', 1, 0),
(6980, '', 'fr', 'aware_date', 'aware_date', 1, 0),
(7474, '', 'en_US', 'pm_NOT', 'Not approved', 1, 20160520),
(7473, '', 'pt_BR', 'pm_NOT', 'No aprobado', 1, 20160520),
(7472, '', 'fr', 'pm_NOA', 'pm_NOA', 1, 0),
(7471, '', 'es', 'pm_NOA', 'Exento', 1, 20160520),
(6985, '', 'pt_BR', 'author_already_registered', 'author_already_registered', 1, 0),
(6986, '', 'en_US', 'author_already_registered', 'Author already registered', 1, 0),
(6987, '', 'es', 'author_already_registered', 'El autor ya estÃ¡ registrado', 1, 20160520),
(6988, '', 'fr', 'author_already_registered', 'author_already_registered', 1, 0),
(6989, '', 'pt_BR', 'caae_already_exist', 'caae_already_exist', 1, 0),
(6990, '', 'en_US', 'caae_already_exist', 'ID # already exists', 1, 0),
(6991, '', 'es', 'caae_already_exist', 'No. de ID ya existe', 1, 0),
(6992, '', 'fr', 'caae_already_exist', 'caae_already_exist', 1, 0),
(6993, '', 'pt_BR', 'update', 'Atualizado', 1, 0),
(6994, '', 'en_US', 'update', 'Updated', 1, 0),
(6995, '', 'es', 'update', 'Actualizado', 1, 0),
(6996, '', 'fr', 'update', 'update', 1, 0),
(6997, '', 'pt_BR', 'Deshabilitar modo de ediciÃ³n', 'Deshabilitar modo de ediciÃ³n', 1, 0),
(6998, '', 'en_US', 'Deshabilitar modo de ediciÃ³n', 'Disable Editing  Mode', 1, 0),
(6999, '', 'es', 'Deshabilitar modo de ediciÃ³n', 'Deshabilitar modo de ediciÃ³n', 1, 0),
(7000, '', 'fr', 'Deshabilitar modo de ediciÃ³n', 'Deshabilitar modo de ediciÃ³n', 1, 0),
(7938, '', 'en_US', 'gt_ged_docume', 'gt_ged_docume', 1, 0),
(7001, '', 'pt_BR', 'about_committe', 'PersonalizaÃ§Ã£o das informaÃ§Ãµes do comitÃª', 1, 0),
(7002, '', 'en_US', 'about_committe', 'Customize committee information', 1, 20160520),
(7003, '', 'es', 'about_committe', 'Personalizar informaciÃ³n del comitÃ©', 1, 20160520),
(7004, '', 'fr', 'about_committe', 'Personnalisation des informations sur le comitÃ©', 1, 0),
(7005, '', 'pt_BR', 'about_committee', 'Sobre o ComitÃª de Ã‰tica', 1, 0),
(7006, '', 'en_US', 'about_committee', 'About the Ethics Committee', 1, 0),
(7007, '', 'es', 'about_committee', 'Sobre el ComitÃ© de Ã‰tica', 1, 0),
(7008, '', 'fr', 'about_committee', 'about_committee', 1, 0),
(7563, '', 'es', 'Acompanhamento anual', 'Monitoreo anual', 1, 20160520),
(7562, '', 'en_US', 'Acompanhamento anual', 'Annual monitoring', 1, 20160520),
(7013, '', 'pt_BR', 'paho_code_info', 'O cÃ³digo deve ser informado com quatro dÃ­gitos e nÃ£o deve ser repetido com outro CEP.', 1, 0),
(7014, '', 'en_US', 'paho_code_info', 'paho_code_info', 1, 0),
(7015, '', 'es', 'paho_code_info', 'paho_code_info', 1, 0),
(7016, '', 'fr', 'paho_code_info', 'paho_code_info', 1, 0),
(7017, '', 'pt_BR', 'committee_name', 'Nome do ComitÃª', 1, 0),
(7018, '', 'en_US', 'committee_name', 'Committee name', 1, 20160520),
(7019, '', 'es', 'committee_name', 'Nombre del ComitÃ©', 1, 20160520),
(7020, '', 'fr', 'committee_name', 'committee_name', 1, 0),
(7021, '', 'pt_BR', 'committe_site', 'Web Site do ComitÃª', 1, 0),
(7022, '', 'en_US', 'committe_site', 'Committee Website', 1, 20160520),
(7023, '', 'es', 'committe_site', 'Sitio Web del comitÃ©', 1, 20160520),
(7024, '', 'fr', 'committe_site', 'committe_site', 1, 0),
(7025, '', 'pt_BR', 'address_committee', 'EndereÃ§o do ComitÃª', 1, 0),
(7026, '', 'en_US', 'address_committee', 'Committee Address', 1, 0),
(7027, '', 'es', 'address_committee', 'DirecciÃ³n del Comite', 1, 20160520),
(7028, '', 'fr', 'address_committee', 'address_committee', 1, 0),
(7029, '', 'pt_BR', 'city', 'Cidade', 1, 0),
(7030, '', 'en_US', 'city', 'City', 1, 0),
(7031, '', 'es', 'city', 'Ciudad', 1, 0),
(7032, '', 'fr', 'city', 'city', 1, 0),
(7033, '', 'pt_BR', 'contact_committee', 'InformaÃ§Ãµes para contato com o ComitÃª', 1, 0),
(7034, '', 'en_US', 'contact_committee', 'Committee contact info', 1, 20160520),
(7035, '', 'es', 'contact_committee', 'Informacion de contacto del Comite', 1, 0),
(7036, '', 'fr', 'contact_committee', 'contact_committee', 1, 0),
(7037, '', 'pt_BR', 'phone', 'phone', 1, 0),
(7038, '', 'en_US', 'phone', 'Phone', 1, 0),
(7039, '', 'es', 'phone', 'TelÃ©fono', 1, 0),
(7040, '', 'fr', 'phone', 'phone', 1, 0),
(7041, '', 'pt_BR', 'admin_name', 'admin_name', 1, 0),
(7042, '', 'en_US', 'admin_name', 'Admin Name', 1, 0),
(7043, '', 'es', 'admin_name', 'Nombre del Admin', 1, 0),
(7044, '', 'fr', 'admin_name', 'admin_name', 1, 0),
(7677, '', 'pt_BR', 'contacts_inf', 'contacts_inf', 1, 0),
(7676, '', 'fr', 'references_inf', 'references_inf', 1, 0),
(7674, '', 'en_US', 'references_inf', 'references_inf', 1, 0),
(7673, '', 'pt_BR', 'references_inf', 'references_inf', 1, 0),
(7672, '', 'fr', 'schedule_inf', 'schedule_inf', 1, 0),
(7669, '', 'pt_BR', 'schedule_inf', 'schedule_inf', 1, 0),
(7670, '', 'en_US', 'schedule_inf', 'schedule_inf', 1, 0),
(7671, '', 'es', 'schedule_inf', 'schedule_inf', 1, 0),
(7675, '', 'es', 'references_inf', 'references_inf', 1, 0),
(7061, '', 'pt_BR', 'configuration_committe', 'Personalizar informaÃ§Ãµes do ComitÃª', 1, 0),
(7062, '', 'en_US', 'configuration_committe', 'Customize information on committee', 1, 20160520),
(7063, '', 'es', 'configuration_committe', 'Personalizar informaciÃ³n del comitÃ©', 1, 20160520),
(7064, '', 'fr', 'configuration_committe', 'configuration_committe', 1, 0),
(7065, '', 'pt_BR', 'men', 'Homem(ns)', 1, 0),
(7066, '', 'en_US', 'men', 'Men', 1, 0),
(7067, '', 'es', 'men', 'Hombres', 1, 0),
(7068, '', 'fr', 'men', 'men', 1, 0),
(7069, '', 'pt_BR', 'women', 'Mulher(es)', 1, 0),
(7070, '', 'en_US', 'women', 'Women', 1, 0),
(7071, '', 'es', 'women', 'Mujeres', 1, 0),
(7072, '', 'fr', 'women', 'women', 1, 0),
(7073, '', 'pt_BR', 'both', 'Ambos', 1, 0),
(7074, '', 'en_US', 'both', 'Both', 1, 0),
(7075, '', 'es', 'both', 'Ambos', 1, 0),
(7076, '', 'fr', 'both', 'both', 1, 0),
(7077, '', 'pt_BR', 'not_applicable', 'NÃ£o aplicÃ¡vel', 1, 0),
(7078, '', 'en_US', 'not_applicable', 'N/A', 1, 0),
(7079, '', 'es', 'not_applicable', 'n/a', 1, 0),
(7080, '', 'fr', 'not_applicable', 'not_applicable', 1, 0),
(7089, '', 'pt_BR', 'fonte_finaciamento', 'Fonte de financiamento', 1, 0),
(7090, '', 'en_US', 'fonte_finaciamento', 'Funding source', 1, 20160520),
(7091, '', 'es', 'fonte_finaciamento', 'Fuente de financiamiento', 1, 0),
(7092, '', 'fr', 'fonte_finaciamento', 'fonte_finaciamento', 1, 0),
(7093, '', 'pt_BR', 'fonte_finaciamento_inf', '', 1, 20160520),
(7094, '', 'en_US', 'fonte_finaciamento_inf', '', 1, 20160520),
(7095, '', 'es', 'fonte_finaciamento_inf', '', 1, 20160520),
(7096, '', 'fr', 'fonte_finaciamento_inf', '', 1, 20160520),
(7772, '', 'fr', 'Adverse events report', 'Adverse events report', 1, 0),
(7097, '', 'pt_BR', 'admin_message_row', 'Lista das mensagens do sistema', 1, 0),
(7098, '', 'en_US', 'admin_message_row', 'Consolidated list of system messages', 1, 20160520),
(7099, '', 'es', 'admin_message_row', 'Lista consolidada de mensajes del sistema', 1, 20160520),
(7100, '', 'fr', 'admin_message_row', 'admin_message_row', 1, 0),
(7830, '', 'en_US', 'End of the investigation', 'End of the investigation', 1, 0),
(7101, '', 'pt_BR', 'Modo de ediciÃ³n deshabilitado', 'Modo de ediciÃ³n deshabilitado', 1, 0),
(7102, '', 'en_US', 'Modo de ediciÃ³n deshabilitado', 'Editing Mode Disabled', 1, 0),
(7103, '', 'es', 'Modo de ediciÃ³n deshabilitado', 'Modo de ediciÃ³n deshabilitado', 1, 0),
(7104, '', 'fr', 'Modo de ediciÃ³n deshabilitado', 'Modo de ediciÃ³n deshabilitado', 1, 0),
(7105, '', 'pt_BR', 'minors', 'Menores (0-18 anos)', 1, 0),
(7106, '', 'en_US', 'minors', 'Minors', 1, 0),
(7107, '', 'es', 'minors', 'Menores', 1, 0),
(7108, '', 'fr', 'minors', 'minors', 1, 0),
(7109, '', 'pt_BR', 'admin_update', 'AtualizaÃ§Ã£o do sistema ProEthos', 1, 0),
(7110, '', 'en_US', 'admin_update', 'ProEthos System Testing', 1, 20160520),
(7111, '', 'es', 'admin_update', 'Pruebas del sistema ProEthos', 1, 20160520),
(7112, '', 'fr', 'admin_update', 'admin_update', 1, 0),
(7113, '', 'pt_BR', 'system_update', 'Atualiza sistema com nova versÃ£o', 1, 0),
(7114, '', 'en_US', 'system_update', 'System Update_DO NOT USE unless instructed to', 1, 0),
(7115, '', 'es', 'system_update', 'Actualizar sistema', 1, 20160520),
(7116, '', 'fr', 'system_update', 'system_update', 1, 0),
(7117, '', 'pt_BR', 'Editing Mode Disabled', 'Editing Mode Disabled', 1, 0),
(7118, '', 'en_US', 'Editing Mode Disabled', 'Editing Mode Disabled', 1, 0),
(7119, '', 'es', 'Editing Mode Disabled', 'Editing Mode Disabled', 1, 0),
(7120, '', 'fr', 'Editing Mode Disabled', 'Editing Mode Disabled', 1, 0),
(7121, '', 'pt_BR', 'cep_status_In submission', 'cep_status_In submission', 1, 0),
(7122, '', 'en_US', 'cep_status_In submission', 'Pending to Submit', 1, 0),
(7123, '', 'es', 'cep_status_In submission', 'Pendiente de presentar', 1, 20160520),
(7124, '', 'fr', 'cep_status_In submission', 'cep_status_In submission', 1, 0),
(7125, '', 'pt_BR', 'research_summary', 'Projetos de pesquisa', 1, 0),
(7126, '', 'en_US', 'research_summary', 'Investigator profile', 1, 0),
(7127, '', 'es', 'research_summary', 'Perfil de investigador', 1, 0),
(7128, '', 'fr', 'research_summary', 'research_summary', 1, 0),
(7597, '', 'pt_BR', 'sample_inf', 'sample_inf', 1, 0),
(7596, '', 'fr', 'health_condition_inf', 'health_condition_inf', 1, 0),
(7595, '', 'es', 'health_condition_inf', 'InformaciÃ³n de la condiciÃ³n de salud', 1, 20160520),
(7593, '', 'pt_BR', 'health_condition_inf', 'health_condition_inf', 1, 0),
(7594, '', 'en_US', 'health_condition_inf', 'health_condition_inf', 1, 0),
(7948, '', 'fr', 'formato_reporte_eventos_adversos_proetho', 'formato_reporte_eventos_adversos_proetho', 1, 0),
(7630, '', 'en_US', 'recruitment_status_inf', '', 1, 20160520),
(7629, '', 'pt_BR', 'recruitment_status_inf', '', 1, 20160520),
(7626, '', 'en_US', 'recruitment_inf', 'Information about recruitment', 1, 20160520),
(7627, '', 'es', 'recruitment_inf', 'InformaciÃ³n del reclutamiento', 1, 20160520),
(7628, '', 'fr', 'recruitment_inf', 'recruitment_inf', 1, 0),
(7613, '', 'pt_BR', 'maximum age_inf', '', 1, 20160520),
(7612, '', 'fr', 'minimum age_inf', '', 1, 20160520),
(7605, '', 'pt_BR', 'target_sample_size_inf', 'target_sample_size_inf', 1, 0),
(7606, '', 'en_US', 'target_sample_size_inf', 'target_sample_size_inf', 1, 0),
(7607, '', 'es', 'target_sample_size_inf', 'InformaciÃ³n del tamaÃ±o de la muestra', 1, 20160520),
(7608, '', 'fr', 'target_sample_size_inf', 'target_sample_size_inf', 1, 0),
(7609, '', 'pt_BR', 'minimum age_inf', '', 1, 20160520),
(7610, '', 'en_US', 'minimum age_inf', '', 1, 20160520),
(7611, '', 'es', 'minimum age_inf', '', 1, 20160520),
(7157, '', 'pt_BR', 'Deadline', 'Deadline', 1, 0),
(7158, '', 'en_US', 'Deadline', 'Deadline', 1, 0),
(7159, '', 'es', 'Deadline', 'Deadline', 1, 0),
(7160, '', 'fr', 'Deadline', 'Deadline', 1, 0),
(7162, '', 'en_US', 'secretary_menu', 'Menu of the secretariat', 1, 20160520),
(7163, '', 'es', 'secretary_menu', 'MenÃº del secretariado', 1, 20160520),
(7164, '', 'fr', 'secretary_menu', 'secretary_menu', 1, 0),
(7165, '', 'pt_BR', 'admin_menu', 'Menu do administrador - funcÃµes principais', 1, 20160520),
(7166, '', 'en_US', 'admin_menu', 'AdministratorÂ´s Menu', 1, 0),
(7167, '', 'es', 'admin_menu', 'MenÃº del administrador', 1, 20160520),
(7168, '', 'fr', 'admin_menu', 'admin_menu', 1, 0),
(7480, '', 'fr', 'pm_PRO', 'AprobaciÃ³n condicional', 1, 20160520),
(7479, '', 'es', 'pm_PRO', 'AprobaciÃ³n condicional', 1, 20160520),
(7478, '', 'en_US', 'pm_PRO', 'Conditional approval', 1, 20160520),
(7173, '', 'pt_BR', 'show_scheduled', 'mostrar calendÃ¡rio', 1, 0),
(7174, '', 'en_US', 'show_scheduled', 'show_scheduled', 1, 0),
(7175, '', 'es', 'show_scheduled', 'show_scheduled', 1, 0),
(7176, '', 'fr', 'show_scheduled', 'show_scheduled', 1, 0),
(7587, '', 'es', 'introduction - close_inf', 'introduction - close_inf', 1, 0),
(7586, '', 'en_US', 'introduction - close_inf', 'introduction - close_inf', 1, 0),
(7585, '', 'pt_BR', 'introduction - close_inf', 'introduction - close_inf', 1, 0),
(7181, '', 'pt_BR', 'projects', 'protocolos', 1, 0),
(7182, '', 'en_US', 'projects', 'Protocols', 1, 0),
(7183, '', 'es', 'projects', 'Protocolos', 1, 0),
(7184, '', 'fr', 'projects', 'projects', 1, 0),
(7185, '', 'pt_BR', 'login_failed', 'e-mail ou senha incorretos', 1, 0),
(7186, '', 'en_US', 'login_failed', 'e-mail or password is incorrect', 1, 0),
(7187, '', 'es', 'login_failed', 'correo electrÃ³nico o contraseÃ±a incorrectos', 1, 20160520),
(7188, '', 'fr', 'login_failed', 'e-mail ou mot de passe est incorrect', 1, 0),
(7189, '', 'pt_BR', 'action', 'action', 1, 0),
(7190, '', 'en_US', 'action', 'Action', 1, 0),
(7191, '', 'es', 'action', 'AcciÃ³n', 1, 0),
(7192, '', 'fr', 'action', 'action', 1, 0),
(7193, '', 'pt_BR', 'works_for_page', 'projetos por pÃ¡gina', 1, 0),
(7194, '', 'en_US', 'works_for_page', 'projects at page', 1, 0),
(7195, '', 'es', 'works_for_page', 'proyectos en la pÃ¡gina', 1, 0),
(7196, '', 'fr', 'works_for_page', 'projets Ã  la page', 1, 0),
(7906, '', 'en_US', 'cep_status_', 'cep_status_', 1, 0),
(7782, '', 'en_US', 'AprobaciÃ³n Ã©tica local', 'AprobaciÃ³n Ã©tica local', 1, 0),
(7905, '', 'pt_BR', 'cep_status_', 'cep_status_', 1, 0),
(7719, '', 'es', 'iten', 'Ã­tem', 1, 20160520),
(7718, '', 'en_US', 'iten', 'iten', 1, 0),
(7717, '', 'pt_BR', 'iten', 'iten', 1, 0),
(7716, '', 'fr', 'months', 'months', 1, 0),
(7873, '', 'pt_BR', 'Azerbaijan', 'Azerbaijan', 1, 0),
(7707, '', 'es', 'Total_of_the', 'Total de', 1, 0),
(7706, '', 'en_US', 'Total_of_the', 'Total of', 1, 20160520),
(7690, '', 'en_US', 'Informed Consent', 'Informed Consent', 1, 0),
(7689, '', 'pt_BR', 'Informed Consent', 'Informed Consent', 1, 0),
(7549, '', 'pt_BR', 'dictamen_7', 'dictamen_7', 1, 0),
(7548, '', 'fr', 'Expedited', 'Expedited', 1, 0),
(7547, '', 'es', 'Expedited', 'Expedita', 1, 0),
(7213, '', 'pt_BR', 'filter', 'filtrar', 1, 0),
(7214, '', 'en_US', 'filter', 'Filter', 1, 0),
(7215, '', 'es', 'filter', 'Filtrar', 1, 0),
(7216, '', 'fr', 'filter', 'filter', 1, 0),
(7434, '', 'en_US', 'paho_code', 'PAHO code', 1, 20160520),
(7433, '', 'pt_BR', 'paho_code', 'paho_code', 1, 0),
(7432, '', 'fr', 'show_records', 'show_records', 1, 0),
(7221, '', 'pt_BR', 'new_record', 'Novo', 1, 20160520),
(7222, '', 'en_US', 'new_record', 'New', 1, 20160520),
(7223, '', 'es', 'new_record', 'Nuevo', 1, 20160520),
(7224, '', 'fr', 'new_record', 'Nouveau', 1, 20160520),
(7965, '', 'pt_BR', 'cod', 'cod', 1, 0),
(7964, '', 'fr', 'faq', 'faq', 1, 0),
(7963, '', 'es', 'faq', 'Preguntas frecuentes', 1, 20160520),
(7962, '', 'en_US', 'faq', 'FAQ', 1, 20160520),
(7695, '', 'es', 'International Clinical Trials Registry P', 'Plataforma Internacional de Registro de Ensayos ClÃ­nicos', 1, 0),
(7233, '', 'pt_BR', 'WK_SUN', 'DOM', 1, 0),
(7234, '', 'en_US', 'WK_SUN', 'SUN', 1, 0),
(7235, '', 'es', 'WK_SUN', 'dom', 1, 0),
(7236, '', 'fr', 'WK_SUN', 'WK_SUN', 1, 0),
(7237, '', 'pt_BR', 'WK_MON', 'SEG', 1, 0),
(7238, '', 'en_US', 'WK_MON', 'MON', 1, 0),
(7239, '', 'es', 'WK_MON', 'lun', 1, 0),
(7240, '', 'fr', 'WK_MON', 'WK_MON', 1, 0),
(7241, '', 'pt_BR', 'WK_TUE', 'TER', 1, 0),
(7242, '', 'en_US', 'WK_TUE', 'TUE', 1, 0),
(7243, '', 'es', 'WK_TUE', 'mar', 1, 0),
(7244, '', 'fr', 'WK_TUE', 'WK_TUE', 1, 0),
(7245, '', 'pt_BR', 'WK_WED', 'QUA', 1, 0),
(7246, '', 'en_US', 'WK_WED', 'WED', 1, 0),
(7247, '', 'es', 'WK_WED', 'mie', 1, 0),
(7248, '', 'fr', 'WK_WED', 'WK_WED', 1, 0),
(7249, '', 'pt_BR', 'WK_THU', 'QUI', 1, 0),
(7250, '', 'en_US', 'WK_THU', 'THU', 1, 0),
(7251, '', 'es', 'WK_THU', 'jue', 1, 0),
(7252, '', 'fr', 'WK_THU', 'WK_THU', 1, 0),
(7253, '', 'pt_BR', 'WK_FRI', 'SEX', 1, 0),
(7254, '', 'en_US', 'WK_FRI', 'FRI', 1, 0),
(7255, '', 'es', 'WK_FRI', 'vie', 1, 0),
(7256, '', 'fr', 'WK_FRI', 'WK_FRI', 1, 0),
(7257, '', 'pt_BR', 'WK_SAT', 'SAB', 1, 0),
(7258, '', 'en_US', 'WK_SAT', 'SAT', 1, 0),
(7259, '', 'es', 'WK_SAT', 'sÃ¡b', 1, 0),
(7260, '', 'fr', 'WK_SAT', 'WK_SAT', 1, 0),
(7261, '', 'pt_BR', 'WK_GO_TODAY', 'hoje', 1, 0),
(7262, '', 'en_US', 'WK_GO_TODAY', 'today', 1, 0),
(7263, '', 'es', 'WK_GO_TODAY', 'hoy', 1, 0),
(7264, '', 'fr', 'WK_GO_TODAY', 'WK_GO_TODAY', 1, 0),
(7265, '', 'pt_BR', 'WK_TODAY', 'hoje', 1, 0),
(7266, '', 'en_US', 'WK_TODAY', 'today', 1, 0),
(7267, '', 'es', 'WK_TODAY', 'hoy', 1, 0),
(7268, '', 'fr', 'WK_TODAY', 'WK_TODAY', 1, 0),
(7269, '', 'pt_BR', 'WK_CLOSE', 'fechar', 1, 0),
(7270, '', 'en_US', 'WK_CLOSE', 'close', 1, 0),
(7271, '', 'es', 'WK_CLOSE', 'cerrar', 1, 0),
(7272, '', 'fr', 'WK_CLOSE', 'WK_CLOSE', 1, 0),
(7273, '', 'pt_BR', 'WK_PREV_YEAR', 'ano anterior', 1, 0),
(7274, '', 'en_US', 'WK_PREV_YEAR', 'year prior', 1, 0),
(7275, '', 'es', 'WK_PREV_YEAR', 'aÃ±o pasado', 1, 20160520),
(7276, '', 'fr', 'WK_PREV_YEAR', 'WK_PREV_YEAR', 1, 0),
(7277, '', 'pt_BR', 'WK_PREV_MONTH', 'mÃªs anterior', 1, 0),
(7278, '', 'en_US', 'WK_PREV_MONTH', 'month prior', 1, 0),
(7279, '', 'es', 'WK_PREV_MONTH', 'mes pasado', 1, 0),
(7280, '', 'fr', 'WK_PREV_MONTH', 'WK_PREV_MONTH', 1, 0),
(7281, '', 'pt_BR', 'WK_NEXT_MONTH', 'prÃ³ximo mÃªs', 1, 0),
(7282, '', 'en_US', 'WK_NEXT_MONTH', 'next month', 1, 0),
(7283, '', 'es', 'WK_NEXT_MONTH', 'mes prÃ³ximo', 1, 0),
(7284, '', 'fr', 'WK_NEXT_MONTH', 'WK_NEXT_MONTH', 1, 0),
(7285, '', 'pt_BR', 'WK_NEXT_YEAR', 'prÃ³ximo ano', 1, 0),
(7286, '', 'en_US', 'WK_NEXT_YEAR', 'next year', 1, 0),
(7287, '', 'es', 'WK_NEXT_YEAR', 'aÃ±o proximo', 1, 20160520),
(7288, '', 'fr', 'WK_NEXT_YEAR', 'WK_NEXT_YEAR', 1, 0),
(7289, '', 'pt_BR', 'WK_CHANGE_DATE', 'selecione a data', 1, 0),
(7290, '', 'en_US', 'WK_CHANGE_DATE', 'change date', 1, 0),
(7291, '', 'es', 'WK_CHANGE_DATE', 'seleccionar la fecha', 1, 0),
(7292, '', 'fr', 'WK_CHANGE_DATE', 'WK_CHANGE_DATE', 1, 0),
(7293, '', 'pt_BR', 'WK_DRAG_TO_MOVE', 'clique para mover', 1, 0),
(7294, '', 'en_US', 'WK_DRAG_TO_MOVE', 'drag to move', 1, 0),
(7295, '', 'es', 'WK_DRAG_TO_MOVE', 'sostener y mover', 1, 0),
(7296, '', 'fr', 'WK_DRAG_TO_MOVE', 'WK_DRAG_TO_MOVE', 1, 0),
(7297, '', 'pt_BR', 'WK_CHANGE_DAY', 'selecione a data', 1, 0),
(7298, '', 'en_US', 'WK_CHANGE_DAY', 'change day', 1, 0),
(7299, '', 'es', 'WK_CHANGE_DAY', 'seleccionar la fecha', 1, 0),
(7300, '', 'fr', 'WK_CHANGE_DAY', 'WK_CHANGE_DAY', 1, 0),
(7301, '', 'pt_BR', 'WK_MON_FIRST', 'segunda como primeiro dia da semana', 1, 0),
(7302, '', 'en_US', 'WK_MON_FIRST', 'monday first', 1, 0),
(7303, '', 'es', 'WK_MON_FIRST', 'lunes primero', 1, 20160520),
(7304, '', 'fr', 'WK_MON_FIRST', 'WK_MON_FIRST', 1, 0),
(7305, '', 'pt_BR', 'WK_SUM_FIRST', 'domingo como primeiro dia da semana', 1, 0),
(7306, '', 'en_US', 'WK_SUM_FIRST', 'sunday first', 1, 0),
(7307, '', 'es', 'WK_SUM_FIRST', 'domingo primero', 1, 20160520),
(7308, '', 'fr', 'WK_SUM_FIRST', 'WK_SUM_FIRST', 1, 0),
(7518, '', 'en_US', 'dic_pm_8', 'Comments or suggestions', 1, 20160520),
(7517, '', 'pt_BR', 'dic_pm_8', 'Comentarios o sugerencias', 1, 20160520),
(7313, '', 'pt_BR', 'about_print', 'Ã© uma colaboraÃ§Ã£o entre a OPAS e a PUCPR', 1, 0),
(7314, '', 'en_US', 'about_print', 'A collaboration between PAHO and the PUCPR', 1, 0),
(7315, '', 'es', 'about_print', 'Una colaboraciÃ³n entre la OPS y la PUCPR', 1, 0),
(7316, '', 'fr', 'about_print', 'about_print', 1, 0),
(7538, '', 'en_US', 'Exempt', 'Exempt', 1, 0),
(7537, '', 'pt_BR', 'Exempt', 'Exempt', 1, 0),
(7536, '', 'fr', 'Approved', 'Approved', 1, 0),
(7535, '', 'es', 'Approved', 'Aprobado', 1, 0),
(7441, '', 'pt_BR', 'contact_param', 'contact_param', 1, 0),
(7440, '', 'fr', 'admin_email', 'admin_email', 1, 0),
(7439, '', 'es', 'admin_email', 'Correo electrÃ³nico del admin', 1, 20160520),
(7435, '', 'es', 'paho_code', 'CÃ³digo OPS', 1, 20160520),
(7325, '', 'pt_BR', 'agenda_for_meeting', 'Pauta da reuniÃ£o', 1, 0),
(7326, '', 'en_US', 'agenda_for_meeting', 'Meeting Agenda', 1, 0),
(7327, '', 'es', 'agenda_for_meeting', 'Agenda de la reunion', 1, 0),
(7328, '', 'fr', 'agenda_for_meeting', 'agenda_for_meeting', 1, 0),
(7329, '', 'pt_BR', 'inform_the_data', 'informe os dados', 1, 0),
(7330, '', 'en_US', 'inform_the_data', 'Enter info', 1, 0),
(7331, '', 'es', 'inform_the_data', 'Ingrese informaciÃ³n', 1, 0),
(7332, '', 'fr', 'inform_the_data', 'inform_the_data', 1, 0),
(7333, '', 'pt_BR', 'approved_protocols', 'approved_protocols', 1, 0),
(7334, '', 'en_US', 'approved_protocols', 'Protocols with decision', 1, 20160520),
(7335, '', 'es', 'approved_protocols', 'Protocolos con decisiÃ³n', 1, 20160520),
(7336, '', 'fr', 'approved_protocols', 'approved_protocols', 1, 0),
(7937, '', 'pt_BR', 'gt_ged_docume', 'gt_ged_docume', 1, 0),
(7741, '', 'pt_BR', 'sub_ordem', 'sub_ordem', 1, 0),
(7337, '', 'pt_BR', 'confirm_metting', 'Confirmar data da reuniÃ£o', 1, 0),
(7338, '', 'en_US', 'confirm_metting', 'Confirm meeting date', 1, 0),
(7339, '', 'es', 'confirm_metting', 'Confirmar fecha de la reuniÃ³n', 1, 0),
(7340, '', 'fr', 'confirm_metting', 'confirm_metting', 1, 0),
(7701, '', 'pt_BR', 'Antarctica', 'Antarctica', 1, 0),
(7584, '', 'fr', 'introduction - close', 'introduction - close', 1, 0),
(7583, '', 'es', 'introduction - close', 'introduction - close', 1, 0),
(7353, '', 'pt_BR', 'Conditional Approval', 'Aprovado com recomendaÃ§Ã£o', 1, 0),
(7354, '', 'en_US', 'Conditional Approval', 'Conditional approval', 1, 20160520),
(7355, '', 'es', 'Conditional Approval', 'AprobaciÃ³n condicional', 1, 0),
(7356, '', 'fr', 'Conditional Approval', 'Conditional Approval', 1, 0),
(7700, '', 'fr', 'Reporte de eventos adversos', 'Reporte de eventos adversos', 1, 0),
(7699, '', 'es', 'Reporte de eventos adversos', 'Reporte de eventos adversos', 1, 0),
(7449, '', 'pt_BR', 'committee_type', 'committee_type', 1, 0),
(7448, '', 'fr', 'language_preference', 'language_preference', 1, 0),
(7446, '', 'en_US', 'language_preference', 'Language preference', 1, 20160520),
(7447, '', 'es', 'language_preference', 'Preferencia de idioma', 1, 20160520),
(7731, '', 'es', 'submit_file', 'Presentar', 1, 20160520),
(7730, '', 'en_US', 'submit_file', 'submit_file', 1, 0),
(7729, '', 'pt_BR', 'submit_file', 'submit_file', 1, 0),
(7720, '', 'fr', 'iten', 'iten', 1, 0),
(7721, '', 'pt_BR', 'created_in', 'created_in', 1, 0),
(7722, '', 'en_US', 'created_in', 'created_in', 1, 0),
(7723, '', 'es', 'created_in', 'created_in', 1, 0),
(7724, '', 'fr', 'created_in', 'created_in', 1, 0),
(7725, '', 'pt_BR', 'submitted_by_the_author', 'submitted_by_the_author', 1, 0),
(7726, '', 'en_US', 'submitted_by_the_author', 'Initial submission', 1, 20160520),
(7727, '', 'es', 'submitted_by_the_author', 'PresentaciÃ³n inicial', 1, 20160520),
(7728, '', 'fr', 'submitted_by_the_author', 'submitted_by_the_author', 1, 0),
(7694, '', 'en_US', 'International Clinical Trials Registry P', 'International Clinical Trials Registry Platform', 1, 0),
(7693, '', 'pt_BR', 'International Clinical Trials Registry P', 'International Clinical Trials Registry P', 1, 0),
(7691, '', 'es', 'Informed Consent', 'Consentimiento informado', 1, 0),
(7692, '', 'fr', 'Informed Consent', 'Informed Consent', 1, 0),
(7554, '', 'en_US', 'dictamen_8', 'dictamen_8', 1, 0),
(7393, '', 'pt_BR', 'Afghanistan', 'Afghanistan', 1, 0),
(7394, '', 'en_US', 'Afghanistan', 'Afghanistan', 1, 0),
(7395, '', 'es', 'Afghanistan', 'Afghanistan', 1, 0),
(7396, '', 'fr', 'Afghanistan', 'Afghanistan', 1, 0),
(7397, '', 'pt_BR', 'Brazil', 'Brazil', 1, 0),
(7398, '', 'en_US', 'Brazil', 'Brazil', 1, 0),
(7399, '', 'es', 'Brazil', 'Brasil', 1, 20160520),
(7400, '', 'fr', 'Brazil', 'Brazil', 1, 0),
(7445, '', 'pt_BR', 'language_preference', 'language_preference', 1, 0),
(7444, '', 'fr', 'contact_param', 'contact_param', 1, 0),
(7442, '', 'en_US', 'contact_param', 'contact_param', 1, 0),
(7443, '', 'es', 'contact_param', 'contact_param', 1, 0),
(7588, '', 'fr', 'introduction - close_inf', 'introduction - close_inf', 1, 0),
(7589, '', 'pt_BR', 'general_description_inf', 'general_description_inf', 1, 0),
(7590, '', 'en_US', 'general_description_inf', 'general_description_inf', 1, 0),
(7591, '', 'es', 'general_description_inf', 'general_description_inf', 1, 0),
(7592, '', 'fr', 'general_description_inf', 'general_description_inf', 1, 0),
(7981, '', 'pt_BR', 'human_interface', 'CÃ³digo de validaÃ§Ã£o humana', 1, 0),
(7982, '', 'en_US', 'human_interface', 'Human validation code', 1, 0),
(7983, '', 'es', 'human_interface', 'CÃ³digo de validaciÃ³n Humano', 1, 0),
(7984, '', 'fr', 'human_interface', 'Code de validation humaine', 1, 0),
(7985, '', 'pt_BR', 'human_check', 'Para validar o cadastro informe no campo abaixo somente os &lt;B&gt;nÃºmeros&lt;/B&gt; do cÃ³digo abaixo.', 1, 20160520),
(7986, '', 'en_US', 'human_check', 'To validate this record, enter the numbers given below', 1, 20160520),
(7987, '', 'es', 'human_check', 'Para validar este registro, ingrese los nÃºmeros dados a continuaciÃ³n', 1, 20160520),
(7988, '', 'fr', 'human_check', 'Pour valider le rapport ne rejoint dans le champ ci-dessous les numÃ©ros de code ci-dessous.', 1, 20160520),
(7989, '', 'pt_BR', 'type_number', 'Digite &lt;B&gt;somente&lt;/B&gt; os nÃºmeros', 1, 20160520),
(7990, '', 'en_US', 'type_number', 'Type &lt;B&gt;only&lt;/B&gt; the numbers', 1, 20160520),
(7991, '', 'es', 'type_number', 'Escriba sÃ³lo los nÃºmeros', 1, 0),
(7992, '', 'fr', 'type_number', 'Suffit de taper les numÃ©ros', 1, 0),
(7993, '', 'pt_BR', 'invalid_human', 'invalid_human', 1, 0),
(7994, '', 'en_US', 'invalid_human', 'Invalid human', 1, 20160520),
(7995, '', 'es', 'invalid_human', 'Persona no vÃ¡lida', 1, 20160520),
(7996, '', 'fr', 'invalid_human', 'invalid_human', 1, 0),
(7997, '', 'pt_BR', 'saved', 'saved', 1, 0),
(7998, '', 'en_US', 'saved', 'Saved', 1, 20160520),
(7999, '', 'es', 'saved', 'Guardado', 1, 20160520),
(8000, '', 'fr', 'saved', 'saved', 1, 0),
(8001, '', 'pt_BR', 'not_valided', 'not_valided', 1, 0),
(8002, '', 'en_US', 'not_valided', 'Not validated', 1, 20160520),
(8003, '', 'es', 'not_valided', 'No validado', 1, 20160520),
(8004, '', 'fr', 'not_valided', 'not_valided', 1, 0),
(8005, '', 'pt_BR', 'valided', 'valided', 1, 0),
(8006, '', 'en_US', 'valided', 'valided', 1, 0),
(8007, '', 'es', 'valided', 'Validado', 1, 20160520),
(8008, '', 'fr', 'valided', 'valided', 1, 0),
(8009, '', 'pt_BR', 'field_requered', 'field_requered', 1, 0),
(8010, '', 'en_US', 'field_requered', 'Required field', 1, 20160520),
(8011, '', 'es', 'field_requered', 'Campo obligatorio', 1, 0),
(8012, '', 'fr', 'field_requered', 'field_requered', 1, 0),
(8013, '', 'pt_BR', 'is_requered', 'is_requered', 1, 0),
(8014, '', 'en_US', 'is_requered', 'Required field', 1, 20160520),
(8015, '', 'es', 'is_requered', 'Campo requerido', 1, 20160520),
(8016, '', 'fr', 'is_requered', 'is_requered', 1, 0),
(8017, '', 'pt_BR', 'CSRF ingected', 'CSRF ingected', 1, 0),
(8018, '', 'en_US', 'CSRF ingected', 'CSRF ingected', 1, 0),
(8019, '', 'es', 'CSRF ingected', 'CSRF ingected', 1, 0),
(8020, '', 'fr', 'CSRF ingected', 'CSRF ingected', 1, 0),
(8021, '', 'pt_BR', 'committee_reports_cust', 'committee_reports_cust', 1, 0),
(8022, '', 'en_US', 'committee_reports_cust', 'committee_reports_cust', 1, 0),
(8023, '', 'es', 'committee_reports_cust', 'Reportes del ComitÃ©', 1, 20160520),
(8024, '', 'fr', 'committee_reports_cust', 'committee_reports_cust', 1, 0),
(8025, '', 'pt_BR', 'report_011', 'report_011', 1, 0),
(8026, '', 'en_US', 'report_011', 'report_011', 1, 0),
(8027, '', 'es', 'report_011', 'report_011', 1, 0),
(8028, '', 'fr', 'report_011', 'report_011', 1, 0),
(8029, '', 'pt_BR', 'report_011_inf', 'report_011_inf', 1, 0),
(8030, '', 'en_US', 'report_011_inf', 'report_011_inf', 1, 0),
(8031, '', 'es', 'report_011_inf', 'report_011_inf', 1, 0),
(8032, '', 'fr', 'report_011_inf', 'report_011_inf', 1, 0),
(8033, '', 'pt_BR', 'committee_reports_secr', 'committee_reports_secr', 1, 0),
(8034, '', 'en_US', 'committee_reports_secr', 'Reports of the Committee/s Secretariat', 1, 20160520),
(8035, '', 'es', 'committee_reports_secr', 'Reportes del secretariado del comitÃ©', 1, 20160520),
(8036, '', 'fr', 'committee_reports_secr', 'committee_reports_secr', 1, 0),
(8037, '', 'pt_BR', 'report_021', 'report_021', 1, 0),
(8038, '', 'en_US', 'report_021', 'report_021', 1, 0),
(8039, '', 'es', 'report_021', 'report_021', 1, 0),
(8040, '', 'fr', 'report_021', 'report_021', 1, 0),
(8041, '', 'pt_BR', 'admin_menu_special', 'Menu do administrador - complementos', 1, 0),
(8042, '', 'en_US', 'admin_menu_special', 'Special Menu of the Admin', 1, 20160520),
(8043, '', 'es', 'admin_menu_special', 'MenÃº especial del administrador', 1, 20160520),
(8044, '', 'fr', 'admin_menu_special', 'Special AdministratorÂ´s Menu', 1, 0),
(8045, '', 'pt_BR', 'select_an_option', 'select_an_option', 1, 0),
(8046, '', 'en_US', 'select_an_option', 'Select an option', 1, 20160520),
(8047, '', 'es', 'select_an_option', 'Seleccione una opciÃ³n', 1, 20160520),
(8048, '', 'fr', 'select_an_option', 'select_an_option', 1, 0),
(8049, '', 'pt_BR', 'disclaimer', 'Legal Disclaimer', 1, 20160520),
(8050, '', 'en_US', 'disclaimer', 'Legal Disclaimer', 1, 0),
(8051, '', 'es', 'disclaimer', 'Descargo de responsabilidad', 1, 0),
(8052, '', 'fr', 'disclaimer', 'Legal Disclaimer', 1, 0),
(8053, '', 'pt_BR', 'terms_of_use', 'Termos de Uso', 1, 0),
(8054, '', 'en_US', 'terms_of_use', 'Terms of Use', 1, 0),
(8055, '', 'es', 'terms_of_use', 'TÃ©rminos de uso', 1, 20160520),
(8056, '', 'fr', 'terms_of_use', 'Terms of Use', 1, 0),
(8057, '', 'pt_BR', 'proethos_files', 'Files', 1, 20160520),
(8058, '', 'en_US', 'proethos_files', 'Files', 1, 20160520),
(8059, '', 'es', 'proethos_files', 'Archivos', 1, 20160520),
(8060, '', 'fr', 'proethos_files', 'Files', 1, 20160520),
(8061, '', 'pt_BR', 'proethos_doc_guia', 'Guia de revisÃ£o Ã©tica', 1, 0),
(8062, '', 'en_US', 'proethos_doc_guia', 'Guide for ethics review', 1, 0),
(8063, '', 'es', 'proethos_doc_guia', 'GuÃ­a para la revisiÃ³n Ã©tica', 1, 0),
(8064, '', 'fr', 'proethos_doc_guia', 'Guide for ethics review', 1, 0),
(8065, '', 'pt_BR', 'proethos_doc_dict', 'Modelo de pareceres', 1, 0),
(8066, '', 'en_US', 'proethos_doc_dict', 'Decisions', 1, 20160520),
(8067, '', 'es', 'proethos_doc_dict', 'DictÃ¡menes (decisiones)', 1, 20160520),
(8068, '', 'fr', 'proethos_doc_dict', 'Template for decision', 1, 0),
(8069, '', 'pt_BR', 'proethos_doc_diap', 'Parecer de aprovaÃ§Ã£o', 1, 20160520),
(8070, '', 'en_US', 'proethos_doc_diap', 'Approval', 1, 20160520),
(8071, '', 'es', 'proethos_doc_diap', 'AprobaciÃ³n', 1, 20160520),
(8072, '', 'fr', 'proethos_doc_diap', 'Approval', 1, 20160520),
(8073, '', 'pt_BR', 'proethos_doc_diac', 'Parecer de aprovaÃ§Ã£o condicional', 1, 20160520),
(8074, '', 'en_US', 'proethos_doc_diac', 'Conditional approval', 1, 20160520),
(8075, '', 'es', 'proethos_doc_diac', 'AprobaciÃ³n condicional', 1, 20160520),
(8076, '', 'fr', 'proethos_doc_diac', 'Conditional approval', 1, 20160520),
(8077, '', 'pt_BR', 'proethos_doc_dina', 'Modelo de nÃ£o aprovado', 1, 20160520),
(8078, '', 'en_US', 'proethos_doc_dina', 'Non approval', 1, 20160520),
(8079, '', 'es', 'proethos_doc_dina', 'No aprobaciÃ³n', 1, 20160520),
(8080, '', 'fr', 'proethos_doc_dina', 'Non approval', 1, 20160520),
(8081, '', 'pt_BR', 'proethos_doc_adve', 'Modelo de relatÃ³rio de evento adverso', 1, 0),
(8082, '', 'en_US', 'proethos_doc_adve', 'Adverse event report', 1, 20160520),
(8083, '', 'es', 'proethos_doc_adve', 'Reporte de evento adverso', 1, 20160520),
(8084, '', 'fr', 'proethos_doc_adve', 'proethos_doc_adve', 1, 0),
(8085, '', 'pt_BR', 'proethos_doc_adve	', 'proethos_doc_adve	', 1, 0),
(8086, '', 'en_US', 'proethos_doc_adve	', 'Template to report an adverse event', 1, 0),
(8087, '', 'es', 'proethos_doc_adve	', 'Modelo de reporte de evento adverso', 1, 0),
(8088, '', 'fr', 'proethos_doc_adve	', 'proethos_doc_adve	', 1, 0),
(8089, '', 'pt_BR', 'system_teste', 'Teste de instalaÃ§Ã£o do sistema', 1, 0),
(8090, '', 'en_US', 'system_teste', 'System installation test', 1, 20160520),
(8091, '', 'es', 'system_teste', 'Prueba de instalaciÃ³n del sistema', 1, 20160520),
(8092, '', 'fr', 'system_teste', 'System test', 1, 0),
(8093, '', 'pt_BR', 'El Salvador', 'El Salvador', 1, 0),
(8094, '', 'en_US', 'El Salvador', 'El Salvador', 1, 0),
(8095, '', 'es', 'El Salvador', 'El Salvador', 1, 0),
(8096, '', 'fr', 'El Salvador', 'El Salvador', 1, 0),
(8097, '', 'pt_BR', 'investigator_reported', 'investigator_reported', 1, 0),
(8098, '', 'en_US', 'investigator_reported', 'investigator_reported', 1, 0),
(8099, '', 'es', 'investigator_reported', 'DecisiÃ³n comunicada al investigador', 1, 20160520),
(8100, '', 'fr', 'investigator_reported', 'investigator_reported', 1, 0),
(8101, '', 'pt_BR', 'meeting', 'meeting', 1, 0),
(8102, '', 'en_US', 'meeting', 'Meeting', 1, 20160520),
(8103, '', 'es', 'meeting', 'ReuniÃ³n', 1, 20160520),
(8104, '', 'fr', 'meeting', 'meeting', 1, 0),
(8105, '', 'pt_BR', 'Investigator profile', 'Investigator profile', 1, 0),
(8106, '', 'en_US', 'Investigator profile', 'Investigator profile', 1, 0);
INSERT INTO `_messages` (`id_msg`, `msg_pag`, `msg_language`, `msg_field`, `msg_content`, `msg_ativo`, `msg_update`) VALUES
(8107, '', 'es', 'Investigator profile', 'Investigator profile', 1, 0),
(8108, '', 'fr', 'Investigator profile', 'Investigator profile', 1, 0),
(8109, '', 'pt_BR', 'Committee profile', 'Committee profile', 1, 0),
(8110, '', 'en_US', 'Committee profile', 'Committee profile', 1, 0),
(8111, '', 'es', 'Committee profile', 'Perfil del comitÃ©', 1, 20160520),
(8112, '', 'fr', 'Committee profile', 'Committee profile', 1, 0),
(8113, '', 'pt_BR', 'My Account', 'My Account', 1, 0),
(8114, '', 'en_US', 'My Account', 'My account', 1, 20160520),
(8115, '', 'es', 'My Account', 'Mi cuenta', 1, 20160520),
(8116, '', 'fr', 'My Account', 'My Account', 1, 0),
(8117, '', 'pt_BR', 'Frequently Asked Questions', 'Frequently Asked Questions', 1, 0),
(8118, '', 'en_US', 'Frequently Asked Questions', 'Frequently Asked Questions', 1, 0),
(8119, '', 'es', 'Frequently Asked Questions', 'Frequently Asked Questions', 1, 0),
(8120, '', 'fr', 'Frequently Asked Questions', 'Frequently Asked Questions', 1, 0),
(8121, '', 'pt_BR', 'Document Templates', 'Document Templates', 1, 0),
(8122, '', 'en_US', 'Document Templates', 'Formatos de documentos', 1, 20160520),
(8123, '', 'es', 'Document Templates', 'Document Templates', 1, 0),
(8124, '', 'fr', 'Document Templates', 'Document Templates', 1, 0),
(8125, '', 'pt_BR', 'Admin Menu', 'Admin Menu', 1, 0),
(8126, '', 'en_US', 'Admin Menu', 'Admin Menu', 1, 0),
(8127, '', 'es', 'Admin Menu', 'Admin Menu', 1, 0),
(8128, '', 'fr', 'Admin Menu', 'Admin Menu', 1, 0),
(8129, '', 'pt_BR', 'all', 'all', 1, 0),
(8130, '', 'en_US', 'all', 'All', 1, 20160520),
(8131, '', 'es', 'all', 'Todos', 1, 20160520),
(8132, '', 'fr', 'all', 'all', 1, 0),
(8133, '', 'pt_BR', 'in analysis', 'in analysis', 1, 0),
(8134, '', 'en_US', 'in analysis', 'In analysis', 1, 20160520),
(8135, '', 'es', 'in analysis', 'En anÃ¡lisis', 1, 20160520),
(8136, '', 'fr', 'in analysis', 'in analysis', 1, 0),
(8137, '', 'pt_BR', 'committee_scretary', 'committee_secretary', 1, 20160520),
(8138, '', 'en_US', 'committee_scretary', 'Committee&#x2F;s secretary', 1, 20160520),
(8139, '', 'es', 'committee_scretary', 'SecretarÃ­a del ComitÃ©', 1, 20160520),
(8140, '', 'fr', 'committee_scretary', 'committee_scretary', 1, 0),
(8141, '', 'pt_BR', 'secretary', 'secretary', 1, 0),
(8142, '', 'en_US', 'secretary', 'Secretary', 1, 20160520),
(8143, '', 'es', 'secretary', 'Secretariado', 1, 20160520),
(8144, '', 'fr', 'secretary', 'secretary', 1, 0),
(8145, '', 'pt_BR', 'report_menu', 'report_menu', 1, 0),
(8146, '', 'en_US', 'report_menu', 'Menu of reports', 1, 20160520),
(8147, '', 'es', 'report_menu', 'MenÃº de reportes', 1, 20160520),
(8148, '', 'fr', 'report_menu', 'report_menu', 1, 0),
(8149, '', 'pt_BR', 'caption_status_X', 'caption_status_X', 1, 0),
(8150, '', 'en_US', 'caption_status_X', 'caption_status_X', 1, 0),
(8151, '', 'es', 'caption_status_X', 'caption_status_X', 1, 0),
(8152, '', 'fr', 'caption_status_X', 'caption_status_X', 1, 0),
(8153, '', 'pt_BR', 'address_geo', 'address_geo', 1, 0),
(8154, '', 'en_US', 'address_geo', 'Map', 1, 20160520),
(8155, '', 'es', 'address_geo', 'Mapa', 1, 20160520),
(8156, '', 'fr', 'address_geo', 'address_geo', 1, 0),
(8157, '', 'pt_BR', 'address_geo_info', 'address_geo_info', 1, 0),
(8158, '', 'en_US', 'address_geo_info', 'Map info', 1, 20160520),
(8159, '', 'es', 'address_geo_info', 'InformaciÃ³n del mapa', 1, 20160520),
(8160, '', 'fr', 'address_geo_info', 'address_geo_info', 1, 0),
(8161, '', 'pt_BR', 'coord_x', 'coord_x', 1, 0),
(8162, '', 'en_US', 'coord_x', 'Coord_x', 1, 20160520),
(8163, '', 'es', 'coord_x', 'Coord_x', 1, 20160520),
(8164, '', 'fr', 'coord_x', 'coord_x', 1, 0),
(8165, '', 'pt_BR', 'coord_y', 'coord_y', 1, 0),
(8166, '', 'en_US', 'coord_y', 'Coord_y', 1, 20160520),
(8167, '', 'es', 'coord_y', 'Coord_y', 1, 20160520),
(8168, '', 'fr', 'coord_y', 'coord_y', 1, 0),
(8169, '', 'pt_BR', 'phone_number', 'phone_number', 1, 0),
(8170, '', 'en_US', 'phone_number', 'Phone number', 1, 20160520),
(8171, '', 'es', 'phone_number', 'NÃºmero de telÃ©fono', 1, 20160520),
(8172, '', 'fr', 'phone_number', 'phone_number', 1, 0),
(8173, '', 'pt_BR', 'select_option', 'select_option', 1, 0),
(8174, '', 'en_US', 'select_option', 'Select option', 1, 20160520),
(8175, '', 'es', 'select_option', 'Elegir opciÃ³n', 1, 20160520),
(8176, '', 'fr', 'select_option', 'select_option', 1, 0),
(8177, '', 'pt_BR', 'tit_faq', 'tit_faq', 1, 0),
(8178, '', 'en_US', 'tit_faq', 'tit_faq', 1, 0),
(8179, '', 'es', 'tit_faq', 'tit_faq', 1, 0),
(8180, '', 'fr', 'tit_faq', 'tit_faq', 1, 0),
(8181, '', 'pt_BR', 'Perfil de investigador', 'Perfil de investigador', 1, 0),
(8182, '', 'en_US', 'Perfil de investigador', 'Investigator profile', 1, 20160520),
(8183, '', 'es', 'Perfil de investigador', 'Perfil de investigador', 1, 0),
(8184, '', 'fr', 'Perfil de investigador', 'Perfil de investigador', 1, 0),
(8185, '', 'pt_BR', 'Perfil de comit?', 'Perfil de comite', 1, 0),
(8186, '', 'en_US', 'Perfil de comit?', 'Committee profile', 1, 20160520),
(8187, '', 'es', 'Perfil de comite', 'Perfil de comite', 1, 0),
(8188, '', 'fr', 'Perfil de comite', 'Perfil de comite', 1, 0),
(8189, '', 'pt_BR', 'Mi cuenta', 'Mi cuenta', 1, 0),
(8190, '', 'en_US', 'Mi cuenta', 'My account', 1, 20160520),
(8191, '', 'es', 'Mi cuenta', 'Mi cuenta', 1, 0),
(8192, '', 'fr', 'Mi cuenta', 'Mi cuenta', 1, 0),
(8193, '', 'pt_BR', 'Preguntas frecuentes', 'Preguntas frecuentes', 1, 0),
(8194, '', 'en_US', 'Preguntas frecuentes', 'FAQ', 1, 20160520),
(8195, '', 'es', 'Preguntas frecuentes', 'Preguntas frecuentes', 1, 0),
(8196, '', 'fr', 'Preguntas frecuentes', 'Preguntas frecuentes', 1, 0),
(8197, '', 'pt_BR', 'Plantillas de documentos', 'Plantillas de documentos', 1, 0),
(8198, '', 'en_US', 'Plantillas de documentos', 'Document templates', 1, 20160520),
(8199, '', 'es', 'Plantillas de documentos', 'Plantillas de documentos', 1, 0),
(8200, '', 'fr', 'Plantillas de documentos', 'Plantillas de documentos', 1, 0),
(8201, '', 'pt_BR', 'Menu del administrador', 'Menu del administrador', 1, 0),
(8202, '', 'en_US', 'Menu del administrador', 'Menu del administrador', 1, 0),
(8203, '', 'es', 'Menu del administrador', 'Menu del administrador', 1, 0),
(8204, '', 'fr', 'Menu del administrador', 'Menu del administrador', 1, 0),
(8205, '', 'pt_BR', 'Contacto', 'Contacto', 1, 0),
(8206, '', 'en_US', 'Contacto', 'Contacto', 1, 0),
(8207, '', 'es', 'Contacto', 'Contacto', 1, 0),
(8208, '', 'fr', 'Contacto', 'Contacto', 1, 0),
(8209, '', 'pt_BR', 'borrar_file', 'borrar_file', 1, 0),
(8210, '', 'en_US', 'borrar_file', 'borrar_file', 1, 0),
(8211, '', 'es', 'borrar_file', 'borrar_file', 1, 0),
(8212, '', 'fr', 'borrar_file', 'borrar_file', 1, 0),
(8213, '', 'pt_BR', 'confirm_del_file', 'confirm_del_file', 1, 0),
(8214, '', 'en_US', 'confirm_del_file', 'Delete file', 1, 20160520),
(8215, '', 'es', 'confirm_del_file', 'Borrar archivo', 1, 20160520),
(8216, '', 'fr', 'confirm_del_file', 'confirm_del_file', 1, 0),
(8217, '', 'pt_BR', 'admin_research_list', 'admin_research_list', 1, 0),
(8218, '', 'en_US', 'admin_research_list', 'List of investigators', 1, 20160520),
(8219, '', 'es', 'admin_research_list', 'Registro de investigadores', 1, 20160520),
(8220, '', 'fr', 'admin_research_list', 'admin_research_list', 1, 0),
(8221, '', 'pt_BR', 'documents_title_list', 'documents_title_list', 1, 0),
(8222, '', 'en_US', 'documents_title_list', 'Types of document templates', 1, 20160520),
(8223, '', 'es', 'documents_title_list', 'Tipos de modelos de documentos', 1, 20160520),
(8224, '', 'fr', 'documents_title_list', 'documents_title_list', 1, 0),
(8225, '', 'pt_BR', 'documents_dictamen', 'documents_dictamen', 1, 0),
(8226, '', 'en_US', 'documents_dictamen', 'Decision documents', 1, 20160520),
(8227, '', 'es', 'documents_dictamen', 'Documentos de decisiÃ³n', 1, 20160520),
(8228, '', 'fr', 'documents_dictamen', 'documents_dictamen', 1, 0),
(8229, '', 'pt_BR', 'admin_faq_list', 'admin_faq_list', 1, 0),
(8230, '', 'en_US', 'admin_faq_list', 'FAQ', 1, 20160520),
(8231, '', 'es', 'admin_faq_list', 'Lista de preguntas frecuentes', 1, 20160520),
(8232, '', 'fr', 'admin_faq_list', 'admin_faq_list', 1, 0),
(8233, '', 'pt_BR', 'report_perfil_member', 'RelatÃ³rio de perfil de usuÃ¡rios', 1, 20160520),
(8234, '', 'en_US', 'report_perfil_member', 'Report of user profiles', 1, 20160520),
(8235, '', 'es', 'report_perfil_member', 'Reporte de perfiles de usuario', 1, 20160520),
(8236, '', 'fr', 'report_perfil_member', 'report_perfil_member', 1, 0),
(8237, '', 'pt_BR', 'admin_submission_field', 'admin_submission_field', 1, 0),
(8238, '', 'en_US', 'admin_submission_field', 'Submission fields', 1, 20160520),
(8239, '', 'es', 'admin_submission_field', 'Campos de presentaciÃ³n', 1, 20160520),
(8240, '', 'fr', 'admin_submission_field', 'admin_submission_field', 1, 0),
(8241, '', 'pt_BR', 'admin_amend_type', 'admin_amend_type', 1, 0),
(8242, '', 'en_US', 'admin_amend_type', 'Register new fields', 1, 20160520),
(8243, '', 'es', 'admin_amend_type', 'Registrar nuevos campos', 1, 20160520),
(8244, '', 'fr', 'admin_amend_type', 'admin_amend_type', 1, 0),
(8245, '', 'pt_BR', 'system_test_email', 'System teste - e-mail', 1, 20160520),
(8246, '', 'en_US', 'system_test_email', 'System test - e-mail', 1, 20160520),
(8247, '', 'es', 'system_test_email', 'Prueba de instalaciÃ³n - e-mail', 1, 20160520),
(8248, '', 'fr', 'system_test_email', 'system_test_email', 1, 0),
(8249, '', 'pt_BR', 'system_php_info', 'system_php_info', 1, 0),
(8250, '', 'en_US', 'system_php_info', 'System information', 1, 20160520),
(8251, '', 'es', 'system_php_info', 'InformaciÃ³n del sistema', 1, 20160520),
(8252, '', 'fr', 'system_php_info', 'system_php_info', 1, 0),
(8253, '', 'pt_BR', 'admin_message_list', 'admin_message_list', 1, 0),
(8254, '', 'en_US', 'admin_message_list', 'List of system messages', 1, 20160520),
(8255, '', 'es', 'admin_message_list', 'Listado de mensajes del sistema', 1, 20160520),
(8256, '', 'fr', 'admin_message_list', 'admin_message_list', 1, 0),
(8257, '', 'pt_BR', 'admin_update_system', 'admin_update_system', 1, 0),
(8258, '', 'en_US', 'admin_update_system', 'Admin Update', 1, 20160520),
(8259, '', 'es', 'admin_update_system', 'ActualizaciÃ³n del administrador', 1, 20160520),
(8260, '', 'fr', 'admin_update_system', 'admin_update_system', 1, 0),
(8261, '', 'pt_BR', 'system_update_system', 'system_update_system', 1, 0),
(8262, '', 'en_US', 'system_update_system', 'Update system', 1, 20160520),
(8263, '', 'es', 'system_update_system', 'Actualizar sistema', 1, 20160520),
(8264, '', 'fr', 'system_update_system', 'system_update_system', 1, 0),
(8265, '', 'pt_BR', 'version', 'version', 1, 0),
(8266, '', 'en_US', 'version', 'Version', 1, 20160520),
(8267, '', 'es', 'version', 'VersiÃ³n', 1, 20160520),
(8268, '', 'fr', 'version', 'version', 1, 0),
(8269, '', 'pt_BR', 'Filter Clean', 'Filter Clean', 1, 0),
(8270, '', 'en_US', 'Filter Clean', 'Filter Clean', 1, 0),
(8271, '', 'es', 'Filter Clean', 'Filter Clean', 1, 0),
(8272, '', 'fr', 'Filter Clean', 'Filter Clean', 1, 0),
(8273, '', 'pt_BR', 'filter_clean', 'filter_clean', 1, 0),
(8274, '', 'en_US', 'filter_clean', 'filter_clean', 1, 0),
(8275, '', 'es', 'filter_clean', 'Borrar filtro', 1, 20160520),
(8276, '', 'fr', 'filter_clean', 'filter_clean', 1, 0),
(8277, '', 'pt_BR', 'searcha', 'searcha', 1, 0),
(8278, '', 'en_US', 'searcha', 'searcha', 1, 0),
(8279, '', 'es', 'searcha', 'searcha', 1, 0),
(8280, '', 'fr', 'searcha', 'searcha', 1, 0),
(8281, '', 'pt_BR', 'filter_in', 'filter_in', 1, 0),
(8282, '', 'en_US', 'filter_in', 'filter_in', 1, 0),
(8283, '', 'es', 'filter_in', 'Filtrar', 1, 20160520),
(8284, '', 'fr', 'filter_in', 'filter_in', 1, 0),
(8285, '', 'pt_BR', 'successful', 'successful', 1, 0),
(8286, '', 'en_US', 'successful', 'successful', 1, 0),
(8287, '', 'es', 'successful', 'successful', 1, 0),
(8288, '', 'fr', 'successful', 'successful', 1, 0),
(8289, '', 'pt_BR', 'already update - 001', 'already update - 001', 1, 0),
(8290, '', 'en_US', 'already update - 001', 'already update - 001', 1, 0),
(8291, '', 'es', 'already update - 001', 'already update - 001', 1, 0),
(8292, '', 'fr', 'already update - 001', 'already update - 001', 1, 0),
(8293, '', 'pt_BR', 'already update - 002', 'already update - 002', 1, 0),
(8294, '', 'en_US', 'already update - 002', 'already update - 002', 1, 0),
(8295, '', 'es', 'already update - 002', 'already update - 002', 1, 0),
(8296, '', 'fr', 'already update - 002', 'already update - 002', 1, 0),
(8297, '', 'pt_BR', 'already update - 003', 'already update - 003', 1, 0),
(8298, '', 'en_US', 'already update - 003', 'already update - 003', 1, 0),
(8299, '', 'es', 'already update - 003', 'already update - 003', 1, 0),
(8300, '', 'fr', 'already update - 003', 'already update - 003', 1, 0),
(8301, '', 'pt_BR', 'already update - 004', 'already update - 004', 1, 0),
(8302, '', 'en_US', 'already update - 004', 'already update - 004', 1, 0),
(8303, '', 'es', 'already update - 004', 'already update - 004', 1, 0),
(8304, '', 'fr', 'already update - 004', 'already update - 004', 1, 0),
(8305, '', 'pt_BR', 'already update - 005', 'already update - 005', 1, 0),
(8306, '', 'en_US', 'already update - 005', 'already update - 005', 1, 0),
(8307, '', 'es', 'already update - 005', 'already update - 005', 1, 0),
(8308, '', 'fr', 'already update - 005', 'already update - 005', 1, 0),
(8309, '', 'pt_BR', 'already update - 006a', 'already update - 006a', 1, 0),
(8310, '', 'en_US', 'already update - 006a', 'already update - 006a', 1, 0),
(8311, '', 'es', 'already update - 006a', 'already update - 006a', 1, 0),
(8312, '', 'fr', 'already update - 006a', 'already update - 006a', 1, 0),
(8313, '', 'pt_BR', 'already update - 006b', 'already update - 006b', 1, 0),
(8314, '', 'en_US', 'already update - 006b', 'already update - 006b', 1, 0),
(8315, '', 'es', 'already update - 006b', 'already update - 006b', 1, 0),
(8316, '', 'fr', 'already update - 006b', 'already update - 006b', 1, 0),
(8317, '', 'pt_BR', 'already update - 006C', 'already update - 006C', 1, 0),
(8318, '', 'en_US', 'already update - 006C', 'already update - 006C', 1, 0),
(8319, '', 'es', 'already update - 006C', 'already update - 006C', 1, 0),
(8320, '', 'fr', 'already update - 006C', 'already update - 006C', 1, 0),
(8321, '', 'pt_BR', 'Tipo de documento invÃ¡lido', 'Tipo de documento invÃ¡lido', 1, 0),
(8322, '', 'en_US', 'Tipo de documento invÃ¡lido', 'Tipo de documento invÃ¡lido', 1, 0),
(8323, '', 'es', 'Tipo de documento invÃ¡lido', 'Tipo de documento invÃ¡lido', 1, 0),
(8324, '', 'fr', 'Tipo de documento invÃ¡lido', 'Tipo de documento invÃ¡lido', 1, 0),
(8325, '', 'pt_BR', 'already update - 006D', 'already update - 006D', 1, 0),
(8326, '', 'en_US', 'already update - 006D', 'already update - 006D', 1, 0),
(8327, '', 'es', 'already update - 006D', 'already update - 006D', 1, 0),
(8328, '', 'fr', 'already update - 006D', 'already update - 006D', 1, 0),
(8329, '', 'pt_BR', 'already update - 007A', 'already update - 007A', 1, 0),
(8330, '', 'en_US', 'already update - 007A', 'already update - 007A', 1, 0),
(8331, '', 'es', 'already update - 007A', 'already update - 007A', 1, 0),
(8332, '', 'fr', 'already update - 007A', 'already update - 007A', 1, 0),
(8333, '', 'pt_BR', 'already update - 007B', 'already update - 007B', 1, 0),
(8334, '', 'en_US', 'already update - 007B', 'already update - 007B', 1, 0),
(8335, '', 'es', 'already update - 007B', 'already update - 007B', 1, 0),
(8336, '', 'fr', 'already update - 007B', 'already update - 007B', 1, 0),
(8337, '', 'pt_BR', 'already update - 007C', 'already update - 007C', 1, 0),
(8338, '', 'en_US', 'already update - 007C', 'already update - 007C', 1, 0),
(8339, '', 'es', 'already update - 007C', 'already update - 007C', 1, 0),
(8340, '', 'fr', 'already update - 007C', 'already update - 007C', 1, 0),
(8341, '', 'pt_BR', 'send_to_secretary', 'send_to_secretary', 1, 0),
(8342, '', 'en_US', 'send_to_secretary', 'send_to_secretary', 1, 0),
(8343, '', 'es', 'send_to_secretary', 'Finalizar proceso', 1, 20160520),
(8344, '', 'fr', 'send_to_secretary', 'send_to_secretary', 1, 0),
(8345, '', 'pt_BR', '#projeto - 2#', '#projeto - 2#', 1, 0),
(8346, '', 'en_US', '#projeto - 2#', '#projeto - 2#', 1, 0),
(8347, '', 'es', '#projeto - 2#', '#projeto - 2#', 1, 0),
(8348, '', 'fr', '#projeto - 2#', '#projeto - 2#', 1, 0),
(8349, '', 'pt_BR', 'top_submit_menu_7', 'top_submit_menu_7', 1, 0),
(8350, '', 'en_US', 'top_submit_menu_7', 'top_submit_menu_7', 1, 0),
(8351, '', 'es', 'top_submit_menu_7', 'Lista de validaciÃ³n', 1, 20160520),
(8352, '', 'fr', 'top_submit_menu_7', 'top_submit_menu_7', 1, 0),
(8353, '', 'pt_BR', 'main_type', 'main_type', 1, 0),
(8354, '', 'en_US', 'main_type', 'Submission type', 1, 20160520),
(8355, '', 'es', 'main_type', 'Tipo de presentaciÃ³n', 1, 20160520),
(8356, '', 'fr', 'main_type', 'main_type', 1, 0),
(8357, '', 'pt_BR', 'title_acronym_inf', '', 1, 20160520),
(8358, '', 'en_US', 'title_acronym_inf', '', 1, 20160520),
(8359, '', 'es', 'title_acronym_inf', '', 1, 20160520),
(8360, '', 'fr', 'title_acronym_inf', '', 1, 20160520),
(8361, '', 'pt_BR', 'title_acronym', 'title_acronym', 1, 0),
(8362, '', 'en_US', 'title_acronym', 'Title acronym', 1, 20160520),
(8363, '', 'es', 'title_acronym', 'AcrÃ³nimos del tÃ­tulo', 1, 20160520),
(8364, '', 'fr', 'title_acronym', 'title_acronym', 1, 0),
(8365, '', 'pt_BR', 'amendment_', 'amendment_', 1, 0),
(8366, '', 'en_US', 'amendment_', 'Amendment', 1, 20160520),
(8367, '', 'es', 'amendment_', 'Protocolo de investigaciÃ³n', 1, 20160520),
(8368, '', 'fr', 'amendment_', 'amendment_', 1, 0),
(8369, '', 'pt_BR', 'connect with', '', 1, 20160520),
(8370, '', 'en_US', 'connect with', '', 1, 20160520),
(8371, '', 'es', 'connect with', '', 1, 20160520),
(8372, '', 'fr', 'connect with', 'connect wit', 1, 20160520),
(8373, '', 'pt_BR', 'or', 'or', 1, 0),
(8374, '', 'en_US', 'or', '', 1, 20160520),
(8375, '', 'es', 'or', '', 1, 20160520),
(8376, '', 'fr', 'or', 'or', 1, 0),
(8377, '', 'pt_BR', '#men', '#men', 1, 0),
(8378, '', 'en_US', '#men', '#men', 1, 0),
(8379, '', 'es', '#men', 'Hombres', 1, 20160520),
(8380, '', 'fr', '#men', '#men', 1, 0),
(8381, '', 'pt_BR', '#women', '#women', 1, 0),
(8382, '', 'en_US', '#women', '#women', 1, 0),
(8383, '', 'es', '#women', 'Mujeres', 1, 20160520),
(8384, '', 'fr', '#women', '#women', 1, 0),
(8385, '', 'pt_BR', '#both', '#both', 1, 0),
(8386, '', 'en_US', '#both', '#both', 1, 0),
(8387, '', 'es', '#both', 'Ambos', 1, 20160520),
(8388, '', 'fr', '#both', '#both', 1, 0),
(8389, '', 'pt_BR', '#not_applicable', '#not_applicable', 1, 0),
(8390, '', 'en_US', '#not_applicable', '#not_applicable', 1, 0),
(8391, '', 'es', '#not_applicable', 'No aplica', 1, 20160520),
(8392, '', 'fr', '#not_applicable', '#not_applicable', 1, 0),
(8393, '', 'pt_BR', 'already update - 009', 'already update - 009', 1, 0),
(8394, '', 'en_US', 'already update - 009', 'already update - 009', 1, 0),
(8395, '', 'es', 'already update - 009', 'already update - 009', 1, 0),
(8396, '', 'fr', 'already update - 009', 'already update - 009', 1, 0),
(8397, '', 'en_US', '&lt;font color=red &gt;Erro:01 - erro_extensao', '&lt;font color=red &gt;Error:01 - extension error', 1, 20160520),
(8398, '', 'en_US', 'action_020', 'Decision', 1, 20160520),
(8399, '', 'en_US', 'action_021', 'Finalize revision', 1, 20160520),
(8400, '', 'en_US', 'admin_email_password', 'Admin password', 1, 20160520),
(8401, '', 'en_US', 'admin_utf8_convert', 'Convert to UTF8', 1, 20160520),
(8402, '', 'en_US', 'adverso_memo', 'Send report using template titled &quot;Report of adverse event,&quot; which can be found under the &quot;Documents&quot; tab.', 1, 20160520),
(8403, '', 'en_US', 'adverso_memo_inf', '', 1, 20160520),
(8404, '', 'en_US', 'amendment_008', 'Communicate recruiting status', 1, 20160520),
(8405, '', 'en_US', 'amendment_009', 'Request approval extension', 1, 20160520),
(8406, '', 'en_US', 'amendment_010', 'Submit an amendment', 1, 20160520),
(8407, '', 'en_US', 'amendment__AME', 'Protocol management', 1, 20160520),
(8408, '', 'en_US', 'amendment__PRO', 'Investigation', 1, 20160520),
(8409, '', 'en_US', 'AprobaciÃ³n Ã©tica de otro comitÃ©', 'Approval from another committee', 1, 20160520),
(8410, '', 'en_US', 'Aprobación ética local', 'AprobaciÃ³n Ã©tica local', 1, 20160520),
(8411, '', 'en_US', 'Aval cientÃ­fico', 'Approval of scientific committee', 1, 20160520),
(8412, '', 'en_US', 'BibliografÃ­a', 'Bibliography', 1, 20160520),
(8413, '', 'en_US', 'cep_protocol', 'ERC protocols', 1, 20160520),
(8414, '', 'en_US', 'change', 'Change', 1, 20160520),
(8419, '', 'en_US', 'copy_the_text', 'Copy the text below', 1, 20160520),
(8420, '', 'en_US', 'CUESTIONARIO', 'Survey', 1, 20160520),
(8421, '', 'en_US', 'date_reclutamiento', 'Date of recruitment', 1, 20160520),
(8422, '', 'en_US', 'Deshabilitar modo de edición', 'Disable Editing  Mode', 1, 20160520),
(8423, '', 'en_US', 'Dictamen emitido por otro comitÃ©', 'Review/Decision', 1, 20160520),
(8427, '', 'en_US', 'Finalización de la investigación', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 20160520),
(8428, '', 'en_US', 'finish_avaliation', 'Finish evaluation', 1, 20160520),
(8429, '', 'en_US', 'finish_avaliation_act', 'Finish', 1, 20160520),
(8430, '', 'en_US', 'investigator', 'Investigator', 1, 20160520),
(8431, '', 'en_US', 'JustificaciÃ³n de dispensa del consentim', 'Justification to release consent', 1, 20160520),
(8432, '', 'en_US', 'justificativa', 'Justification', 1, 20160520),
(8433, '', 'en_US', 'justificativa_inf', '', 1, 20160520),
(8434, '', 'en_US', 'Material de reclutamiento / informaciÃ³n', 'Enrollment material/information', 1, 20160520),
(8436, '', 'en_US', 'method_2', 'Method 2', 1, 20160520),
(8437, '', 'en_US', 'Metodologia', 'Methodology', 1, 20160520),
(8438, '', 'en_US', 'Metodologia_inf', '', 1, 20160520),
(8439, '', 'en_US', 'Modo de edição desabilitado', 'Modo de ediÃ§Ã£o desabilitado', 1, 20160520),
(8440, '', 'en_US', 'Modo de edición deshabilitado', 'Editing Mode Disabled', 1, 20160520),
(8441, '', 'en_US', 'monitoreo_protocolos', 'Protocol monitoring', 1, 20160520),
(8442, '', 'en_US', 'no_start', 'Not started', 1, 20160520),
(8443, '', 'en_US', 'OpiniÃ³n interina', 'Decision', 1, 20160520),
(8444, '', 'en_US', 'original_niec', 'Original ID', 1, 20160520),
(8445, '', 'en_US', 'Perfil de comitÃ©', 'Committee profile', 1, 20160520),
(8446, '', 'en_US', 'perfil_user_name', 'User name profile', 1, 20160520),
(8447, '', 'en_US', 'Póliza de seguro', 'Insurance policy', 1, 20160520),
(8448, '', 'en_US', 'PresentÃ¡ndose', 'In submission', 1, 20160520),
(8449, '', 'en_US', 'print_this_page', 'Print this page', 1, 20160520),
(8450, '', 'en_US', 'proethos_docs', 'Internal doc', 1, 20160520),
(8451, '', 'en_US', 'proethos_docs_models', 'Monitoring document', 1, 20160520),
(8452, '', 'en_US', 'proethos_doc_apem', 'Amendment approval', 1, 20160520),
(8453, '', 'en_US', 'proethos_doc_apex', 'Extension approval', 1, 20160520),
(8454, '', 'en_US', 'proethos_doc_diex', 'Exempt', 1, 20160520),
(8455, '', 'en_US', 'proethos_doc_soli_emen', 'Amendment to protocol', 1, 20160520),
(8456, '', 'en_US', 'proethos_doc_soli_exte', 'Request to extend approval', 1, 20160520),
(8457, '', 'en_US', 'proethos_files_inf', '', 1, 20160520),
(8458, '', 'en_US', 'PROTOCOLO ANIMALES', 'Protocol with animals', 1, 20160520),
(8465, '', 'en_US', 'result', 'Result', 1, 20160520),
(8466, '', 'en_US', 'RESUMEN EJECUTIVO', 'Executive summary', 1, 20160520),
(8467, '', 'en_US', 'resume_adhoc', 'Adhoc summary', 1, 20160520),
(8468, '', 'en_US', '_messages', 'Messages', 1, 20160520),
(8469, '', 'es', '#Amendment approved', 'Enmienda aprobada', 1, 20160520),
(8470, '', 'es', '#Amendment Not Approved', 'Enmienda no aprobada', 1, 20160520),
(8471, '', 'es', '#Approved', 'Aprobado', 1, 20160520),
(8472, '', 'es', '#ASISTENTE', 'Asistente', 1, 20160520),
(8473, '', 'es', '#COLABORADOR', 'Colaborador', 1, 20160520),
(8474, '', 'es', '#completed', 'Completado', 1, 20160520),
(8475, '', 'es', '#Conditional Approval', 'AprobaciÃ³n condicional', 1, 20160520),
(8476, '', 'es', '#Exempt', 'Exento', 1, 20160520),
(8477, '', 'es', '#Expedited', 'ExpÃ©dita', 1, 20160520),
(8478, '', 'es', '#Not Approved', 'No aprobado', 1, 20160520),
(8479, '', 'es', '#PATROCINADOR', 'Patrocinador', 1, 20160520),
(8480, '', 'es', '#pending', 'Pendiente', 1, 20160520),
(8481, '', 'es', '#recruiting', 'Reclutando', 1, 20160520),
(8482, '', 'es', '#submit_enviar', 'Enviar', 1, 20160520),
(8483, '', 'es', '#suspended', 'Suspendido', 1, 20160520),
(8484, '', 'es', '&lt;font color=red &gt;Erro:01 - erro_extensao', '&lt;font color=red &gt;Error:01 - error de extensiÃ³n', 1, 20160520),
(8485, '', 'es', 'action_020', 'DictÃ¡men', 1, 20160520),
(8486, '', 'es', 'action_021', 'Finalizar revisiÃ³n', 1, 20160520),
(8487, '', 'es', 'admin_email_password', 'ContraseÃ±a del admin', 1, 20160520),
(8488, '', 'es', 'admin_utf8_convert', 'Convertir texto a UTF8', 1, 20160520),
(8489, '', 'es', 'adverso_memo', 'Enviar reporte utilizando el formato titulado &quot;Reporte de evento adverso&quot;, encontrado bajo la pestaÃ±a &quot;Documentos&quot;.', 1, 20160520),
(8490, '', 'es', 'adverso_memo_inf', '', 1, 20160520),
(8491, '', 'es', 'amendment_008', 'Comunicar estado del reclutamiento', 1, 20160520),
(8492, '', 'es', 'amendment_009', 'Solicitud de extensiÃ³n de la aprobaciÃ³n', 1, 20160520),
(8493, '', 'es', 'amendment_010', 'Presentar una enmienda', 1, 20160520),
(8494, '', 'es', 'amendment_AME', 'Enmienda', 1, 20160520),
(8495, '', 'es', 'amendment__AME', 'AdministraciÃ³n de protocolo', 1, 20160520),
(8496, '', 'es', 'amendment__PRO', 'InvestigaciÃ³n', 1, 20160520),
(8497, '', 'es', 'Aprobación ética local', 'AprobaciÃ³n Ã©tica local', 1, 20160520),
(8498, '', 'es', 'assigned data', 'Datos asignados', 1, 20160520),
(8499, '', 'es', 'bottom_monitoring', 'Acciones de seguimiento', 1, 20160520),
(8500, '', 'es', 'caption_status_problem', 'Protocolos con problemas', 1, 20160520),
(8501, '', 'es', 'caption_status_Z', 'Protocolos que necesitan revisiÃ³n', 1, 20160520),
(8502, '', 'es', 'cep_amendment_type_cap', 'Registrar nuevos tipos de seguimiento', 1, 20160520),
(8503, '', 'es', 'cep_protocol', 'Protocolos del CEI', 1, 20160520),
(8504, '', 'es', 'change', 'Cambiar', 1, 20160520),
(8509, '', 'es', 'communicate_013', 'Comunicar al investigador', 1, 20160520),
(8510, '', 'es', 'conclusion_estudio_justificar', 'JustificaciÃ³n', 1, 20160520),
(8511, '', 'es', 'conclusion_memo', 'InformaciÃ³n inicial', 1, 20160520),
(8512, '', 'es', 'confirme_decline', 'Confirmar rechazo', 1, 20160520),
(8516, '', 'es', 'CUESTIONARIO', 'Cuestionario', 1, 20160520),
(8517, '', 'es', 'date_less_than_current', 'Fecha pasada - incorrecta', 1, 20160520),
(8518, '', 'es', 'date_reclutamiento', 'Fecha de reclutamiento', 1, 20160520),
(8519, '', 'es', 'decline', 'Rechazar', 1, 20160520),
(8520, '', 'es', 'declined', 'Rechazado', 1, 20160520),
(8521, '', 'es', 'del_file', 'Confirmar borrar archivo', 1, 20160520),
(8522, '', 'es', 'Denied', 'Denegado', 1, 20160520),
(8523, '', 'es', 'Deshabilitar modo de edición', 'Deshabilitar modo de ediciÃ³n', 1, 20160520),
(8524, '', 'es', 'Dictamen emitido por otro comitÃ©', 'RevisiÃ³n/DecisiÃ³n', 1, 20160520),
(8525, '', 'es', 'dictamen_vt', 'Opiniones', 1, 20160520),
(8526, '', 'es', 'documents_title_commite', 'Documentos', 1, 20160520),
(8527, '', 'es', 'document_models', 'Modelos de documentos', 1, 20160520),
(8528, '', 'es', 'Enable edit Mode&lt;A href="javascript:newx', 'Enable edit mode&lt;A href=&quot;javascript:newx', 1, 20160520),
(8529, '', 'es', 'fecha_conclusion', 'Fecha de conclusiÃ³n', 1, 20160520),
(8530, '', 'es', 'files_submited', 'Archivos enviados', 1, 20160520),
(8531, '', 'es', 'file_type', 'Tipo de archivo', 1, 20160520),
(8532, '', 'es', 'Finalización de la investigación', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 20160520),
(8533, '', 'es', 'finish_avaliation', 'Finalizar evaluaciÃ³n', 1, 20160520),
(8534, '', 'es', 'finish_avaliation_act', 'Finalizar', 1, 20160520),
(8535, '', 'es', 'format', 'Formato', 1, 20160520),
(8538, '', 'es', 'investigator', 'Investigador', 1, 20160520),
(8539, '', 'es', 'in_review_list', 'En revisiÃ³n', 1, 20160520),
(8540, '', 'es', 'JustificaciÃ³n de dispensa del consentim', 'JustificaciÃ³n de dispensa del consentimiento', 1, 20160520),
(8541, '', 'es', 'justificativa', 'JustificaciÃ³n', 1, 20160520),
(8542, '', 'es', 'justificativa_inf', '', 1, 20160520),
(8543, '', 'es', 'messages', 'Mensajes', 1, 20160520),
(8545, '', 'es', 'method_2', 'MÃ©todo 2', 1, 20160520),
(8546, '', 'es', 'Metodologia', 'MetodologÃ­a', 1, 20160520),
(8547, '', 'es', 'Metodologia_inf', '', 1, 20160520),
(8548, '', 'es', 'Modo de edição desabilitado', 'Modo de edicion desabilitado', 1, 20160520),
(8549, '', 'es', 'Modo de edición deshabilitado', 'Modo de ediciÃ³n deshabilitado', 1, 20160520),
(8550, '', 'es', 'monitoreo_envio_docs_justificar', 'JustificaciÃ³n', 1, 20160520),
(8551, '', 'es', 'monitoreo_protocolos', 'Monitoreo de protocolos', 1, 20160520),
(8552, '', 'es', 'monitoreo_recrutamento', 'Fecha de cambio', 1, 20160520),
(8553, '', 'es', 'monitoreo_recrutamento_status', 'Estado', 1, 20160520),
(8554, '', 'es', 'Next', 'Siguiente', 1, 20160520),
(8555, '', 'es', 'not_applied', 'No se ha aplicado', 1, 20160520),
(8556, '', 'es', 'not_aproved', 'No aprobado', 1, 20160520),
(8557, '', 'es', 'no_start', 'No ha iniciado', 1, 20160520),
(8558, '', 'es', 'no_validated', 'ERROR', 1, 20160520),
(8559, '', 'es', 'OpiniÃ³n interina', 'DecisiÃ³n', 1, 20160520),
(8560, '', 'es', 'original_niec', 'No. de identificaciÃ³n original', 1, 20160520),
(8561, '', 'es', 'Perfil de comit?', 'Perfil de comitÃ©', 1, 20160520),
(8562, '', 'es', 'perfil_user_name', 'Perfil de nombre de usuario', 1, 20160520),
(8563, '', 'es', 'pm_EXT', 'ExpÃ©dita', 1, 20160520),
(8564, '', 'es', 'Póliza de seguro', 'PÃ³liza de seguro', 1, 20160520),
(8565, '', 'es', 'post_max_size', 'TamaÃ±o mÃ¡ximo del campo', 1, 20160520),
(8566, '', 'es', 'print_this_page', 'Imprimir esta pÃ¡gina', 1, 20160520),
(8567, '', 'es', 'proethos_docs', 'Documento interno', 1, 20160520),
(8568, '', 'es', 'proethos_docs_models', 'Documentos de monitoreo', 1, 20160520),
(8569, '', 'es', 'proethos_doc_apem', 'AprobaciÃ³n de la enmienda', 1, 20160520),
(8570, '', 'es', 'proethos_doc_apex', 'AprobaciÃ³n de la extensiÃ³n', 1, 20160520),
(8571, '', 'es', 'proethos_doc_diex', 'Exento', 1, 20160520),
(8572, '', 'es', 'proethos_doc_soli_emen', 'Enmienda al protocolo', 1, 20160520),
(8573, '', 'es', 'proethos_doc_soli_exte', 'Solicitud de extensiÃ³n de la aprobaciÃ³n', 1, 20160520),
(8574, '', 'es', 'proethos_files_inf', '', 1, 20160520),
(8575, '', 'es', 'PROTOCOLO ANIMALES', 'Protocolo con animales', 1, 20160520),
(8583, '', 'es', 'RESUMEN EJECUTIVO', 'Resumen ejecutivo', 1, 20160520),
(8584, '', 'es', 'resume_adhoc', 'Resumen Adhoc', 1, 20160520),
(8585, '', 'es', 'send_by_email', 'Enviar por correo', 1, 20160520),
(8586, '', 'es', 'send_file', 'enviar archivo', 1, 20160520),
(8587, '', 'es', 'send_monitoreo', 'Enviar', 1, 20160520),
(8588, '', 'es', 'solicitud_extension_justificacion', 'JustificaciÃ³n', 1, 20160520),
(8589, '', 'es', 'submit_end_monitoreo', 'Seguimiento exitoso', 1, 20160520),
(8590, '', 'es', 'submit_end_monitoreo_008', 'Estado del reclutamiento registrado', 1, 20160520),
(8591, '', 'es', 'submit_end_monitoreo_008_text', 'Estado del reclutamiento registrado exitosamente', 1, 20160520),
(8592, '', 'es', 'submit_monitoreo', 'Presentar', 1, 20160520),
(8593, '', 'es', 'submit_term_002', 'Presentar Reporte de eventos adversos serios//normales', 1, 20160520),
(8594, '', 'es', 'submit_term_003', 'Presentar Reporte de conclusiÃ³n del estudio', 1, 20160520),
(8595, '', 'es', 'submit_term_007', 'Presentar documentos adicionales', 1, 20160520),
(8596, '', 'es', 'submit_term_009', 'Presentar solicitud de extensiÃ³n', 1, 20160520),
(8597, '', 'es', 'Tipo de document invalido', 'Tipo de documento invalido', 1, 20160520),
(8598, '', 'es', 'top_submit_002_1', 'PresentaciÃ³n de archivos', 1, 20160520),
(8599, '', 'es', 'top_submit_002_2', 'JustificaciÃ³n', 1, 20160520),
(8600, '', 'es', 'top_submit_002_3', 'Verificar y presentar', 1, 20160520),
(8601, '', 'es', 'top_submit_003_1', 'JustificaciÃ³n', 1, 20160520),
(8602, '', 'es', 'top_submit_003_2', 'PresentaciÃ³n de archivos', 1, 20160520),
(8603, '', 'es', 'top_submit_003_3', 'Verificar y presentar', 1, 20160520),
(8604, '', 'es', 'top_submit_004_1', 'JustificaciÃ³n', 1, 20160520),
(8605, '', 'es', 'top_submit_004_2', 'PresentaciÃ³n de archivos', 1, 20160520),
(8606, '', 'es', 'top_submit_004_3', 'Verificar y presentar', 1, 20160520),
(8607, '', 'es', 'top_submit_005_1', 'JustificaciÃ³n', 1, 20160520),
(8608, '', 'es', 'top_submit_005_2', 'PresentaciÃ³n de archivos', 1, 20160520),
(8609, '', 'es', 'top_submit_005_3', 'Verificar y presentar', 1, 20160520),
(8610, '', 'es', 'top_submit_006_1', 'JustificaciÃ³n', 1, 20160520),
(8611, '', 'es', 'top_submit_006_2', 'PresentaciÃ³n de archivos', 1, 20160520),
(8612, '', 'es', 'top_submit_006_3', 'Verificar y presentar', 1, 20160520),
(8613, '', 'es', 'top_submit_007_1', 'JustificaciÃ³n', 1, 20160520),
(8614, '', 'es', 'top_submit_007_2', 'PresentaciÃ³n de archivos', 1, 20160520),
(8615, '', 'es', 'top_submit_007_3', 'Verificar y presentar', 1, 20160520),
(8616, '', 'es', 'top_submit_008_1', 'Fecha y estado del reclutamiento', 1, 20160520),
(8617, '', 'es', 'top_submit_009_1', 'JustificaciÃ³n', 1, 20160520),
(8618, '', 'es', 'top_submit_009_2', 'PresentaciÃ³n de archivos', 1, 20160520),
(8619, '', 'es', 'top_submit_009_3', 'Verificar y presentar', 1, 20160520),
(8620, '', 'es', 'top_submit_010_1', 'Enmienda 1', 1, 20160520),
(8621, '', 'es', 'top_submit_010_2', 'Enmienda 2', 1, 20160520),
(8622, '', 'es', 'top_submit_010_3', 'Enmienda 3', 1, 20160520),
(8623, '', 'es', 'upload_dictamen', 'Subir', 1, 20160520),
(8624, '', 'es', 'upload_draft_opinion', 'Subir dictÃ¡men', 1, 20160520),
(8625, '', 'es', 'upload_draft_opinion_inf', 'Adjunte el dictÃ¡men de este protocolo', 1, 20160520),
(8626, '', 'es', 'validated', 'OK', 1, 20160520),
(8627, '', 'es', 'wdyd_amend', 'Elija una opciÃ³n', 1, 20160520),
(8628, '', 'es', 'wdyd_amend_inf', 'Acciones', 1, 20160520),
(8629, '', 'es', '_messages', 'Mensajes', 1, 20160520),
(8630, '', 'fr', '&lt;font color=red &gt;Erro:01 - erro_extensao', '&lt;font color=red &gt;Erro:01 - erreur dÂ´extension', 1, 20160520),
(8631, '', 'fr', 'adverso_memo_inf', '', 1, 20160520),
(8632, '', 'fr', 'Aprobación ética local', 'AprobaciÃ³n Ã©tica local', 1, 20160520),
(8636, '', 'fr', 'Finalización de la investigación', 'FinalizaciÃ³n de la investigaciÃ³n', 1, 20160520),
(8637, '', 'fr', 'justificativa_inf', '', 1, 20160520),
(8640, '', 'fr', 'Modo de edición deshabilitado', 'Modo de ediciÃ³n deshabilitado', 1, 20160520),
(8641, '', 'fr', 'OpiniÃ³n interina', 'DecisiÃ³n', 1, 20160520),
(8642, '', 'fr', 'Póliza de seguro', 'PÃ³liza de seguro', 1, 20160520),
(8643, '', 'fr', 'proethos_files_inf', '', 1, 20160520),
(8732, '', 'en_US', 'assigned data', 'assigned data', 1, 0),
(8733, '', 'fr', 'assigned data', 'assigned data', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_pais`
--
ALTER TABLE `ajax_pais`
 ADD UNIQUE KEY `id_pais` (`id_pais`);

--
-- Indexes for table `apoio_idioma`
--
ALTER TABLE `apoio_idioma`
 ADD UNIQUE KEY `id_i` (`id_i`);

--
-- Indexes for table `apoio_titulacao`
--
ALTER TABLE `apoio_titulacao`
 ADD UNIQUE KEY `id_ap_tit` (`id_ap_tit`);

--
-- Indexes for table `calender`
--
ALTER TABLE `calender`
 ADD UNIQUE KEY `id_cal` (`id_cal`);

--
-- Indexes for table `calender_type`
--
ALTER TABLE `calender_type`
 ADD UNIQUE KEY `id_calt` (`id_calt`);

--
-- Indexes for table `cep_action`
--
ALTER TABLE `cep_action`
 ADD UNIQUE KEY `id_action` (`id_action`);

--
-- Indexes for table `cep_action_permission`
--
ALTER TABLE `cep_action_permission`
 ADD UNIQUE KEY `id_actionp` (`id_actionp`);

--
-- Indexes for table `cep_amendment_type`
--
ALTER TABLE `cep_amendment_type`
 ADD UNIQUE KEY `id_amt` (`id_amt`);

--
-- Indexes for table `cep_comment`
--
ALTER TABLE `cep_comment`
 ADD UNIQUE KEY `id_cepc` (`id_cepc`);

--
-- Indexes for table `cep_dictamen`
--
ALTER TABLE `cep_dictamen`
 ADD UNIQUE KEY `id_pp` (`id_pp`);

--
-- Indexes for table `cep_ged_documento`
--
ALTER TABLE `cep_ged_documento`
 ADD UNIQUE KEY `id_doc` (`id_doc`);

--
-- Indexes for table `cep_ged_documento_tipo`
--
ALTER TABLE `cep_ged_documento_tipo`
 ADD UNIQUE KEY `id_doct` (`id_doct`);

--
-- Indexes for table `cep_parecer`
--
ALTER TABLE `cep_parecer`
 ADD UNIQUE KEY `id_pr` (`id_pr`);

--
-- Indexes for table `cep_protocolos`
--
ALTER TABLE `cep_protocolos`
 ADD UNIQUE KEY `id_cep` (`id_cep`);

--
-- Indexes for table `cep_protocolos_historic`
--
ALTER TABLE `cep_protocolos_historic`
 ADD UNIQUE KEY `id_his` (`id_his`);

--
-- Indexes for table `cep_protocol_log`
--
ALTER TABLE `cep_protocol_log`
 ADD UNIQUE KEY `id_cl` (`id_cl`);

--
-- Indexes for table `cep_status`
--
ALTER TABLE `cep_status`
 ADD UNIQUE KEY `id_ess` (`id_ess`);

--
-- Indexes for table `cep_submit_country`
--
ALTER TABLE `cep_submit_country`
 ADD UNIQUE KEY `id_ctr` (`id_ctr`);

--
-- Indexes for table `cep_submit_crono`
--
ALTER TABLE `cep_submit_crono`
 ADD UNIQUE KEY `id_scrono` (`id_scrono`);

--
-- Indexes for table `cep_submit_documento`
--
ALTER TABLE `cep_submit_documento`
 ADD UNIQUE KEY `id_doc` (`id_doc`);

--
-- Indexes for table `cep_submit_documentos_obrigatorio`
--
ALTER TABLE `cep_submit_documentos_obrigatorio`
 ADD UNIQUE KEY `id_sdo` (`id_sdo`);

--
-- Indexes for table `cep_submit_documento_valor`
--
ALTER TABLE `cep_submit_documento_valor`
 ADD UNIQUE KEY `id_spc` (`id_spc`);

--
-- Indexes for table `cep_submit_ged_files`
--
ALTER TABLE `cep_submit_ged_files`
 ADD UNIQUE KEY `id_pl` (`id_pl`);

--
-- Indexes for table `cep_submit_grupos`
--
ALTER TABLE `cep_submit_grupos`
 ADD UNIQUE KEY `id_sg` (`id_sg`);

--
-- Indexes for table `cep_submit_institution_dados`
--
ALTER TABLE `cep_submit_institution_dados`
 ADD UNIQUE KEY `id_sid` (`id_sid`);

--
-- Indexes for table `cep_submit_manuscrito_field`
--
ALTER TABLE `cep_submit_manuscrito_field`
 ADD UNIQUE KEY `id_sub` (`id_sub`);

--
-- Indexes for table `cep_submit_manuscrito_tipo`
--
ALTER TABLE `cep_submit_manuscrito_tipo`
 ADD UNIQUE KEY `id_sp` (`id_sp`);

--
-- Indexes for table `cep_submit_orca`
--
ALTER TABLE `cep_submit_orca`
 ADD UNIQUE KEY `id_sorca` (`id_sorca`);

--
-- Indexes for table `cep_submit_register_unit`
--
ALTER TABLE `cep_submit_register_unit`
 ADD UNIQUE KEY `id_csru` (`id_csru`);

--
-- Indexes for table `cep_submit_team`
--
ALTER TABLE `cep_submit_team`
 ADD UNIQUE KEY `id_ct` (`id_ct`);

--
-- Indexes for table `cep_submit_tipo`
--
ALTER TABLE `cep_submit_tipo`
 ADD UNIQUE KEY `id_sp` (`id_sp`);

--
-- Indexes for table `cep_submit_valor`
--
ALTER TABLE `cep_submit_valor`
 ADD UNIQUE KEY `id_spc` (`id_spc`);

--
-- Indexes for table `cep_survey`
--
ALTER TABLE `cep_survey`
 ADD UNIQUE KEY `id_sr` (`id_sr`);

--
-- Indexes for table `cep_team`
--
ALTER TABLE `cep_team`
 ADD UNIQUE KEY `id_ct` (`id_ct`);

--
-- Indexes for table `discentes`
--
ALTER TABLE `discentes`
 ADD UNIQUE KEY `id_pa` (`id_pa`);

--
-- Indexes for table `docentes`
--
ALTER TABLE `docentes`
 ADD UNIQUE KEY `id_pp` (`id_pp`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
 ADD UNIQUE KEY `id_faq` (`id_faq`);

--
-- Indexes for table `frases`
--
ALTER TABLE `frases`
 ADD UNIQUE KEY `id_fr` (`id_fr`);

--
-- Indexes for table `ged_documento`
--
ALTER TABLE `ged_documento`
 ADD UNIQUE KEY `id_doc` (`id_doc`);

--
-- Indexes for table `ged_documento_tipo`
--
ALTER TABLE `ged_documento_tipo`
 ADD UNIQUE KEY `id_doct` (`id_doct`);

--
-- Indexes for table `ic_noticia`
--
ALTER TABLE `ic_noticia`
 ADD UNIQUE KEY `id_nw` (`id_nw`);

--
-- Indexes for table `instituion_action`
--
ALTER TABLE `instituion_action`
 ADD UNIQUE KEY `id_ia` (`id_ia`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
 ADD UNIQUE KEY `id_i` (`id_i`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
 ADD UNIQUE KEY `id_it` (`id_it`);

--
-- Indexes for table `institution_action`
--
ALTER TABLE `institution_action`
 ADD UNIQUE KEY `id_ia` (`id_ia`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
 ADD UNIQUE KEY `journal_id` (`journal_id`);

--
-- Indexes for table `nucleo`
--
ALTER TABLE `nucleo`
 ADD UNIQUE KEY `id_n` (`id_n`);

--
-- Indexes for table `parecer_modelo`
--
ALTER TABLE `parecer_modelo`
 ADD UNIQUE KEY `id_pm` (`id_pm`);

--
-- Indexes for table `register_unit`
--
ALTER TABLE `register_unit`
 ADD UNIQUE KEY `id_ru` (`id_ru`);

--
-- Indexes for table `submit_manuscrito_field`
--
ALTER TABLE `submit_manuscrito_field`
 ADD UNIQUE KEY `id_sub` (`id_sub`);

--
-- Indexes for table `submit_manuscrito_tipo`
--
ALTER TABLE `submit_manuscrito_tipo`
 ADD UNIQUE KEY `id_sp` (`id_sp`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
 ADD UNIQUE KEY `id_us` (`id_us`);

--
-- Indexes for table `usuario_perfil`
--
ALTER TABLE `usuario_perfil`
 ADD UNIQUE KEY `id_usp` (`id_usp`);

--
-- Indexes for table `usuario_perfis_ativo`
--
ALTER TABLE `usuario_perfis_ativo`
 ADD UNIQUE KEY `id_up` (`id_up`);

--
-- Indexes for table `_committee`
--
ALTER TABLE `_committee`
 ADD UNIQUE KEY `id_cm` (`id_cm`);

--
-- Indexes for table `_messages`
--
ALTER TABLE `_messages`
 ADD UNIQUE KEY `id_msg` (`id_msg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax_pais`
--
ALTER TABLE `ajax_pais`
MODIFY `id_pais` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `apoio_idioma`
--
ALTER TABLE `apoio_idioma`
MODIFY `id_i` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `apoio_titulacao`
--
ALTER TABLE `apoio_titulacao`
MODIFY `id_ap_tit` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `calender`
--
ALTER TABLE `calender`
MODIFY `id_cal` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `calender_type`
--
ALTER TABLE `calender_type`
MODIFY `id_calt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cep_action`
--
ALTER TABLE `cep_action`
MODIFY `id_action` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cep_action_permission`
--
ALTER TABLE `cep_action_permission`
MODIFY `id_actionp` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `cep_amendment_type`
--
ALTER TABLE `cep_amendment_type`
MODIFY `id_amt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cep_comment`
--
ALTER TABLE `cep_comment`
MODIFY `id_cepc` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cep_dictamen`
--
ALTER TABLE `cep_dictamen`
MODIFY `id_pp` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cep_ged_documento`
--
ALTER TABLE `cep_ged_documento`
MODIFY `id_doc` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `cep_ged_documento_tipo`
--
ALTER TABLE `cep_ged_documento_tipo`
MODIFY `id_doct` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cep_parecer`
--
ALTER TABLE `cep_parecer`
MODIFY `id_pr` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cep_protocolos`
--
ALTER TABLE `cep_protocolos`
MODIFY `id_cep` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cep_protocolos_historic`
--
ALTER TABLE `cep_protocolos_historic`
MODIFY `id_his` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `cep_protocol_log`
--
ALTER TABLE `cep_protocol_log`
MODIFY `id_cl` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cep_status`
--
ALTER TABLE `cep_status`
MODIFY `id_ess` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `cep_submit_country`
--
ALTER TABLE `cep_submit_country`
MODIFY `id_ctr` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cep_submit_crono`
--
ALTER TABLE `cep_submit_crono`
MODIFY `id_scrono` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cep_submit_documento`
--
ALTER TABLE `cep_submit_documento`
MODIFY `id_doc` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cep_submit_documentos_obrigatorio`
--
ALTER TABLE `cep_submit_documentos_obrigatorio`
MODIFY `id_sdo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cep_submit_documento_valor`
--
ALTER TABLE `cep_submit_documento_valor`
MODIFY `id_spc` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `cep_submit_ged_files`
--
ALTER TABLE `cep_submit_ged_files`
MODIFY `id_pl` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cep_submit_grupos`
--
ALTER TABLE `cep_submit_grupos`
MODIFY `id_sg` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cep_submit_institution_dados`
--
ALTER TABLE `cep_submit_institution_dados`
MODIFY `id_sid` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cep_submit_manuscrito_field`
--
ALTER TABLE `cep_submit_manuscrito_field`
MODIFY `id_sub` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `cep_submit_manuscrito_tipo`
--
ALTER TABLE `cep_submit_manuscrito_tipo`
MODIFY `id_sp` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cep_submit_orca`
--
ALTER TABLE `cep_submit_orca`
MODIFY `id_sorca` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cep_submit_register_unit`
--
ALTER TABLE `cep_submit_register_unit`
MODIFY `id_csru` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cep_submit_team`
--
ALTER TABLE `cep_submit_team`
MODIFY `id_ct` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cep_submit_tipo`
--
ALTER TABLE `cep_submit_tipo`
MODIFY `id_sp` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cep_submit_valor`
--
ALTER TABLE `cep_submit_valor`
MODIFY `id_spc` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cep_survey`
--
ALTER TABLE `cep_survey`
MODIFY `id_sr` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cep_team`
--
ALTER TABLE `cep_team`
MODIFY `id_ct` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `discentes`
--
ALTER TABLE `discentes`
MODIFY `id_pa` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `docentes`
--
ALTER TABLE `docentes`
MODIFY `id_pp` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
MODIFY `id_faq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `frases`
--
ALTER TABLE `frases`
MODIFY `id_fr` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ged_documento`
--
ALTER TABLE `ged_documento`
MODIFY `id_doc` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ged_documento_tipo`
--
ALTER TABLE `ged_documento_tipo`
MODIFY `id_doct` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ic_noticia`
--
ALTER TABLE `ic_noticia`
MODIFY `id_nw` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `instituion_action`
--
ALTER TABLE `instituion_action`
MODIFY `id_ia` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `institution`
--
ALTER TABLE `institution`
MODIFY `id_i` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
MODIFY `id_it` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `institution_action`
--
ALTER TABLE `institution_action`
MODIFY `id_ia` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
MODIFY `journal_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nucleo`
--
ALTER TABLE `nucleo`
MODIFY `id_n` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parecer_modelo`
--
ALTER TABLE `parecer_modelo`
MODIFY `id_pm` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `register_unit`
--
ALTER TABLE `register_unit`
MODIFY `id_ru` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `submit_manuscrito_field`
--
ALTER TABLE `submit_manuscrito_field`
MODIFY `id_sub` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `submit_manuscrito_tipo`
--
ALTER TABLE `submit_manuscrito_tipo`
MODIFY `id_sp` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
MODIFY `id_us` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuario_perfil`
--
ALTER TABLE `usuario_perfil`
MODIFY `id_usp` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `usuario_perfis_ativo`
--
ALTER TABLE `usuario_perfis_ativo`
MODIFY `id_up` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `_committee`
--
ALTER TABLE `_committee`
MODIFY `id_cm` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `_messages`
--
ALTER TABLE `_messages`
MODIFY `id_msg` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8734;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
