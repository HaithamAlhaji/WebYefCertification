-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.26-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5700
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_yef_certification
CREATE DATABASE IF NOT EXISTS `db_yef_certification` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_yef_certification`;

-- Dumping structure for table db_yef_certification.tbl_certifications
CREATE TABLE IF NOT EXISTS `tbl_certifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `certification_template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `client_certification` (`client_id`,`certification_template_id`),
  KEY `FK_tbl_certifications_tbl_certifications_templates` (`certification_template_id`),
  KEY `FK_tbl_certifications_tbl_users` (`user_id`),
  CONSTRAINT `FK_tbl_certifications_tbl_certifications_templates` FOREIGN KEY (`certification_template_id`) REFERENCES `tbl_certifications_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_certifications_tbl_clients` FOREIGN KEY (`client_id`) REFERENCES `tbl_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tbl_certifications_tbl_users` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=971 DEFAULT CHARSET=utf8;

-- Dumping data for table db_yef_certification.tbl_certifications: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_certifications` DISABLE KEYS */;
INSERT IGNORE INTO `tbl_certifications` (`id`, `client_id`, `certification_template_id`, `user_id`, `creation`) VALUES
	(805, 397, 1, 1, '2020-03-21 16:25:58'),
	(806, 401, 1, 1, '2020-03-21 16:25:58'),
	(807, 403, 1, 1, '2020-03-21 16:25:58'),
	(808, 405, 1, 1, '2020-03-21 16:25:58'),
	(809, 418, 1, 1, '2020-03-21 16:25:58'),
	(810, 437, 1, 1, '2020-03-21 16:25:58'),
	(811, 443, 1, 1, '2020-03-21 16:25:58'),
	(812, 454, 1, 1, '2020-03-21 16:25:58'),
	(813, 463, 1, 1, '2020-03-21 16:25:58'),
	(814, 471, 1, 1, '2020-03-21 16:25:58'),
	(815, 478, 1, 1, '2020-03-21 16:25:58'),
	(816, 480, 1, 1, '2020-03-21 16:25:58'),
	(817, 481, 1, 1, '2020-03-21 16:25:58'),
	(818, 492, 1, 1, '2020-03-21 16:25:58'),
	(819, 493, 1, 1, '2020-03-21 16:25:58'),
	(820, 505, 1, 1, '2020-03-21 16:25:58'),
	(821, 506, 1, 1, '2020-03-21 16:25:58'),
	(822, 507, 1, 1, '2020-03-21 16:25:58'),
	(823, 523, 1, 1, '2020-03-21 16:25:58'),
	(824, 528, 1, 1, '2020-03-21 16:25:58'),
	(825, 530, 1, 1, '2020-03-21 16:25:58'),
	(826, 532, 1, 1, '2020-03-21 16:25:58'),
	(827, 535, 1, 1, '2020-03-21 16:25:58'),
	(828, 396, 1, 1, '2020-03-21 16:25:58'),
	(836, 402, 2, 1, '2020-03-21 16:26:02'),
	(837, 406, 2, 1, '2020-03-21 16:26:02'),
	(838, 407, 2, 1, '2020-03-21 16:26:02'),
	(839, 411, 2, 1, '2020-03-21 16:26:02'),
	(840, 428, 2, 1, '2020-03-21 16:26:02'),
	(841, 432, 2, 1, '2020-03-21 16:26:02'),
	(842, 446, 2, 1, '2020-03-21 16:26:02'),
	(843, 449, 2, 1, '2020-03-21 16:26:02'),
	(844, 458, 2, 1, '2020-03-21 16:26:02'),
	(845, 460, 2, 1, '2020-03-21 16:26:02'),
	(846, 467, 2, 1, '2020-03-21 16:26:02'),
	(847, 468, 2, 1, '2020-03-21 16:26:02'),
	(848, 482, 2, 1, '2020-03-21 16:26:02'),
	(849, 483, 2, 1, '2020-03-21 16:26:02'),
	(850, 484, 2, 1, '2020-03-21 16:26:02'),
	(851, 487, 2, 1, '2020-03-21 16:26:02'),
	(852, 489, 2, 1, '2020-03-21 16:26:02'),
	(853, 490, 2, 1, '2020-03-21 16:26:02'),
	(854, 491, 2, 1, '2020-03-21 16:26:02'),
	(855, 494, 2, 1, '2020-03-21 16:26:02'),
	(856, 495, 2, 1, '2020-03-21 16:26:02'),
	(857, 498, 2, 1, '2020-03-21 16:26:02'),
	(858, 499, 2, 1, '2020-03-21 16:26:02'),
	(859, 500, 2, 1, '2020-03-21 16:26:02'),
	(860, 502, 2, 1, '2020-03-21 16:26:02'),
	(861, 503, 2, 1, '2020-03-21 16:26:02'),
	(862, 510, 2, 1, '2020-03-21 16:26:02'),
	(863, 511, 2, 1, '2020-03-21 16:26:02'),
	(864, 512, 2, 1, '2020-03-21 16:26:02'),
	(865, 516, 2, 1, '2020-03-21 16:26:02'),
	(866, 518, 2, 1, '2020-03-21 16:26:02'),
	(867, 519, 2, 1, '2020-03-21 16:26:02'),
	(868, 522, 2, 1, '2020-03-21 16:26:02'),
	(869, 525, 2, 1, '2020-03-21 16:26:02'),
	(870, 527, 2, 1, '2020-03-21 16:26:02'),
	(871, 396, 2, 1, '2020-03-21 16:26:02'),
	(899, 398, 3, 1, '2020-03-21 16:26:05'),
	(900, 399, 3, 1, '2020-03-21 16:26:05'),
	(901, 400, 3, 1, '2020-03-21 16:26:05'),
	(902, 404, 3, 1, '2020-03-21 16:26:05'),
	(903, 409, 3, 1, '2020-03-21 16:26:05'),
	(904, 410, 3, 1, '2020-03-21 16:26:05'),
	(905, 415, 3, 1, '2020-03-21 16:26:05'),
	(906, 419, 3, 1, '2020-03-21 16:26:05'),
	(907, 422, 3, 1, '2020-03-21 16:26:05'),
	(908, 423, 3, 1, '2020-03-21 16:26:05'),
	(909, 425, 3, 1, '2020-03-21 16:26:05'),
	(910, 427, 3, 1, '2020-03-21 16:26:05'),
	(911, 429, 3, 1, '2020-03-21 16:26:05'),
	(912, 431, 3, 1, '2020-03-21 16:26:05'),
	(913, 436, 3, 1, '2020-03-21 16:26:05'),
	(914, 438, 3, 1, '2020-03-21 16:26:05'),
	(915, 439, 3, 1, '2020-03-21 16:26:05'),
	(916, 440, 3, 1, '2020-03-21 16:26:05'),
	(917, 441, 3, 1, '2020-03-21 16:26:05'),
	(918, 450, 3, 1, '2020-03-21 16:26:05'),
	(919, 452, 3, 1, '2020-03-21 16:26:05'),
	(920, 453, 3, 1, '2020-03-21 16:26:05'),
	(921, 455, 3, 1, '2020-03-21 16:26:05'),
	(922, 457, 3, 1, '2020-03-21 16:26:05'),
	(923, 461, 3, 1, '2020-03-21 16:26:05'),
	(924, 465, 3, 1, '2020-03-21 16:26:05'),
	(925, 466, 3, 1, '2020-03-21 16:26:05'),
	(926, 470, 3, 1, '2020-03-21 16:26:05'),
	(927, 472, 3, 1, '2020-03-21 16:26:05'),
	(928, 485, 3, 1, '2020-03-21 16:26:05'),
	(929, 497, 3, 1, '2020-03-21 16:26:05'),
	(930, 501, 3, 1, '2020-03-21 16:26:05'),
	(931, 513, 3, 1, '2020-03-21 16:26:05'),
	(932, 517, 3, 1, '2020-03-21 16:26:05'),
	(933, 531, 3, 1, '2020-03-21 16:26:05'),
	(934, 534, 3, 1, '2020-03-21 16:26:05'),
	(935, 537, 3, 1, '2020-03-21 16:26:05'),
	(936, 539, 3, 1, '2020-03-21 16:26:05'),
	(962, 488, 4, 1, '2020-03-21 16:26:09'),
	(963, 504, 4, 1, '2020-03-21 16:26:09'),
	(964, 515, 4, 1, '2020-03-21 16:26:09'),
	(965, 540, 4, 1, '2020-03-21 16:26:09'),
	(969, 396, 3, 1, '2020-03-21 16:30:33'),
	(970, 396, 4, 1, '2020-03-21 16:30:33');
/*!40000 ALTER TABLE `tbl_certifications` ENABLE KEYS */;

-- Dumping structure for table db_yef_certification.tbl_certifications_downloaded
CREATE TABLE IF NOT EXISTS `tbl_certifications_downloaded` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certification_id` int(11) NOT NULL,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_tbl_certifications_downloaded_tbl_certifications` (`certification_id`),
  CONSTRAINT `FK_tbl_certifications_downloaded_tbl_certifications` FOREIGN KEY (`certification_id`) REFERENCES `tbl_certifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=704 DEFAULT CHARSET=utf8;

-- Dumping data for table db_yef_certification.tbl_certifications_downloaded: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_certifications_downloaded` DISABLE KEYS */;
INSERT IGNORE INTO `tbl_certifications_downloaded` (`id`, `certification_id`, `creation`) VALUES
	(700, 828, '2020-03-21 16:30:50'),
	(701, 871, '2020-03-21 16:31:04'),
	(702, 969, '2020-03-21 16:31:17'),
	(703, 970, '2020-03-21 16:31:28');
/*!40000 ALTER TABLE `tbl_certifications_downloaded` ENABLE KEYS */;

-- Dumping structure for table db_yef_certification.tbl_certifications_templates
CREATE TABLE IF NOT EXISTS `tbl_certifications_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(8) NOT NULL,
  `description` text,
  `provider` varchar(255) DEFAULT NULL,
  `image_en` varchar(255) NOT NULL DEFAULT 'certification_image.png',
  `image_ar` varchar(255) NOT NULL DEFAULT 'certification_image.png',
  `background` varchar(255) NOT NULL DEFAULT 'certification_image.png',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `code_x` int(11) NOT NULL DEFAULT '0',
  `code_y` int(11) NOT NULL DEFAULT '0',
  `name_en_x` int(11) NOT NULL DEFAULT '0',
  `name_en_y` int(11) NOT NULL DEFAULT '0',
  `name_en_width` int(11) NOT NULL DEFAULT '0',
  `creation_x` int(11) NOT NULL DEFAULT '0',
  `creation_y` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `Index 5` (`code`),
  KEY `FK_tbl_certifications_templates_tbl_users` (`user_id`),
  CONSTRAINT `FK_tbl_certifications_templates_tbl_users` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table db_yef_certification.tbl_certifications_templates: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_certifications_templates` DISABLE KEYS */;
INSERT IGNORE INTO `tbl_certifications_templates` (`id`, `name`, `code`, `description`, `provider`, `image_en`, `image_ar`, `background`, `user_id`, `creation`, `code_x`, `code_y`, `name_en_x`, `name_en_y`, `name_en_width`, `creation_x`, `creation_y`) VALUES
	(1, 'ورشة التدوين و كيفية استعمال مواقع التواصل الاجتماعي', 'YEF01SOC', 'ورشة التدوين و كيفية استعمال مواقع التواصل الاجتماعي', 'سمية جمال', 'YEF01SOC.png', 'YEF01SOC.png', 'YEF01SOC.png', 1, '2019-09-02 21:55:33', 375, 511, 220, 220, 420, 200, 530),
	(2, 'ورشة  التصوير الفوتوغرافي و صناعة الأفلام القصيرة', 'YEF01PHO', 'ورشة  التصوير الفوتوغرافي و صناعة الأفلام القصيرة', 'خبيب كواس', 'YEF01PHO.png', 'YEF01PHO.png', 'YEF01PHO.png', 1, '2019-09-02 21:55:33', 375, 510, 220, 220, 420, 200, 530),
	(3, 'ورشة  الشراكة و أخلاقيات العلاقات الإجتماعية', 'YEF01COM', 'ورشة  الشراكة و أخلاقيات العلاقات الإجتماعية', 'عمر المشهداني', 'YEF01COM.png', 'YEF01COM.png', 'YEF01COM.png', 1, '2019-09-02 21:55:33', 375, 510, 220, 220, 420, 200, 530),
	(4, ' ورشة  الإستراتيجية التسويقية', 'YEF01STR', ' ورشة  الإستراتيجية التسويقية', 'ابو بكر صحوري', 'YEF01STR.png', 'YEF01STR.png', 'YEF01STR.png', 1, '2019-09-02 21:55:33', 375, 510, 220, 220, 420, 200, 530);
/*!40000 ALTER TABLE `tbl_certifications_templates` ENABLE KEYS */;

-- Dumping structure for table db_yef_certification.tbl_clients
CREATE TABLE IF NOT EXISTS `tbl_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL DEFAULT 'none',
  `name_ar` varchar(255) DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;

-- Dumping data for table db_yef_certification.tbl_clients: ~145 rows (approximately)
/*!40000 ALTER TABLE `tbl_clients` DISABLE KEYS */;
INSERT IGNORE INTO `tbl_clients` (`id`, `email`, `name_en`, `name_ar`, `birthday`, `creation`, `user_id`) VALUES
	(396, 'haithamtalhaji@yahoo.com', 'Haitham Alhaji', NULL, '1994-06-04 00:00:00', '2020-03-20 22:04:48', 1),
	(397, 'ammisaidr@gmail.com', 'Riad ammi said', NULL, NULL, '2020-03-21 16:04:23', 1),
	(398, 'kherfibakir88@gmail.com', 'Kherfi Bakir', NULL, NULL, '2020-03-21 16:04:23', 1),
	(399, 'chebahmahdi@gmail.com', 'Mehdi Oussama Chebbah', NULL, NULL, '2020-03-21 16:04:23', 1),
	(400, 'cerinacici95@gmail.com', 'Boulafaat cerine', NULL, NULL, '2020-03-21 16:04:23', 1),
	(401, 'marwabra31@gmail.com', 'Maroua Brahim', NULL, NULL, '2020-03-21 16:04:23', 1),
	(402, 'almkhalfiosamah@gmail.com', 'Osamah  Ali', NULL, NULL, '2020-03-21 16:04:23', 1),
	(403, 'imadeca0@gmail.com', 'Drissi imed eddine ', NULL, NULL, '2020-03-21 16:04:23', 1),
	(404, 'imene6400@gmail.com', 'Nour El Imane Gacem', NULL, NULL, '2020-03-21 16:04:23', 1),
	(405, 'ou.ayachiamor@gmail.com', 'Oussama ayachi amor', NULL, NULL, '2020-03-21 16:04:23', 1),
	(406, 'yazeenkhalid@gmail.com', 'Yazeen raheem', NULL, NULL, '2020-03-21 16:04:23', 1),
	(407, 'fatimkhassoon@xn--gmal-nza.com', 'Fatimraheem', NULL, NULL, '2020-03-21 16:04:23', 1),
	(408, 'rashoshhatem@gmail.com', 'Rasha dawod', NULL, '2000-10-11 00:00:00', '2020-03-21 16:04:23', 1),
	(409, 'weaam198875@gmail.com', 'Weaam Ismail ', NULL, '1998-08-09 00:00:00', '2020-03-21 16:04:23', 1),
	(410, 'Raghad.dawod99@gmail.com', 'Raghad dawod', NULL, '1999-01-17 00:00:00', '2020-03-21 16:04:23', 1),
	(411, 'lovelymonym@hotmail.com', 'Omnya naji', NULL, NULL, '2020-03-21 16:04:23', 1),
	(412, 'baraaosama66@gmail.com', 'Baraa Osamah Faeq', NULL, NULL, '2020-03-21 16:04:23', 1),
	(413, 'mohamed-houria@hotmail.fr', 'Houria Mohamed', NULL, '1993-07-24 00:00:00', '2020-03-21 16:04:23', 1),
	(414, 'ebba95hussam@gmail.com', 'EBAA HADEED', NULL, '1995-04-23 00:00:00', '2020-03-21 16:04:23', 1),
	(415, 'hamzayhachi@gmail.com', 'Hamza Hachich ', NULL, '2001-08-04 00:00:00', '2020-03-21 16:04:23', 1),
	(416, 'karamalmarzoq@gmail.com', 'Abdulkareem almarzoq', NULL, '2000-11-26 00:00:00', '2020-03-21 16:04:23', 1),
	(417, 'keemo.alieaqi@yahoo.com', 'Hakim alzubaidy', NULL, '1997-03-21 00:00:00', '2020-03-21 16:04:23', 1),
	(418, 'moohaboy@gmail.com', 'Ben Aoumeur mohammed ', NULL, '1996-10-16 00:00:00', '2020-03-21 16:04:23', 1),
	(419, 'yh32101@gmail.com', 'Yasmina Hassan', NULL, '2001-06-13 00:00:00', '2020-03-21 16:04:23', 1),
	(420, 'mohammedkun1997@gmail.com', 'Mohammed marshall ', NULL, NULL, '2020-03-21 16:04:23', 1),
	(421, 'amro.manar.mustafa@gmail.com', 'Manar Amro', NULL, NULL, '2020-03-21 16:04:23', 1),
	(422, 'h7zem1234@gmail.com', 'Hazem alawadhi', NULL, '2001-07-16 00:00:00', '2020-03-21 16:04:23', 1),
	(423, 'omerbashar16@gmail.com', 'Omar aljarrah', NULL, '1995-11-15 00:00:00', '2020-03-21 16:04:23', 1),
	(424, 'mohmmedlotfe96@gmail.com', 'Mohammed Al Jazzar ', NULL, '1996-07-21 00:00:00', '2020-03-21 16:04:23', 1),
	(425, 'ohoudkth@gmail.com', 'Ohoud alkathery ', NULL, '2000-09-05 00:00:00', '2020-03-21 16:04:23', 1),
	(426, 'karamehseraj@gmail.com', 'Saraj karamah', NULL, '1998-05-14 00:00:00', '2020-03-21 16:04:23', 1),
	(427, 'kouartameddjihad@gmail.com', 'Mohamed djihad kouarta', NULL, NULL, '2020-03-21 16:04:23', 1),
	(428, 'h7zem33311@gmail.com', 'Hazem ameen', NULL, NULL, '2020-03-21 16:04:23', 1),
	(429, 'dodosaihi.ks@gmail.com', 'Khadija SAIHI ', NULL, '2000-07-14 00:00:00', '2020-03-21 16:04:23', 1),
	(430, 'khul2222@iCloud.com', 'Khulood alashowl', NULL, '2000-04-30 00:00:00', '2020-03-21 16:04:23', 1),
	(431, 'ala.jjamal@gmail.com', 'ALAA ALWINDAWI ', NULL, NULL, '2020-03-21 16:04:23', 1),
	(432, 'hdeelalamri@hotmail.com', 'Hadeel Ahmed Alamri ', NULL, '2000-05-06 00:00:00', '2020-03-21 16:04:23', 1),
	(433, 'ahmadraadiq@gmail.com', 'Ahmed Raad Alzubaidi', NULL, '1995-08-01 00:00:00', '2020-03-21 16:04:23', 1),
	(434, 'khadija.saihi@bahcesehir.edu.tr', 'Khadija SAIHI ', NULL, NULL, '2020-03-21 16:04:23', 1),
	(435, 'ahaob1100@gmail.com', 'Anas Hesham ', NULL, '1998-06-08 00:00:00', '2020-03-21 16:04:23', 1),
	(436, 'hayaboudan@gmail.com', 'Haya Aboudan', NULL, NULL, '2020-03-21 16:04:23', 1),
	(437, 'ghimani46@gmail.com', 'Ghimani houaria', NULL, NULL, '2020-03-21 16:04:23', 1),
	(438, 'chihab153@gmail.com', 'Nacer chihab eddine', NULL, '1996-07-16 00:00:00', '2020-03-21 16:04:23', 1),
	(439, 'saeeding@gmail.com', 'Bokor mahamat khalifa', NULL, NULL, '2020-03-21 16:04:23', 1),
	(440, 'abdelrahimannour799@gmail.com', 'Abdelrahim Annour Saleh', NULL, '1993-10-15 00:00:00', '2020-03-21 16:04:23', 1),
	(441, 'kalotitamara@gmail.com', 'Tamara kaloti', NULL, '2002-02-13 00:00:00', '2020-03-21 16:04:23', 1),
	(442, 'homamafoura@gmail.com', 'Humam affura', NULL, '2000-02-01 00:00:00', '2020-03-21 16:04:23', 1),
	(443, 'waleedq47@gmail.com', 'Waleed Kudayh', NULL, '1997-08-06 00:00:00', '2020-03-21 16:04:23', 1),
	(444, 'ilhembrahimi04@gmail.com', 'Ilhem brahimi', NULL, '1995-08-11 00:00:00', '2020-03-21 16:04:23', 1),
	(445, 'wissem2009@yahoo.fr', 'Asma brahimi', NULL, '1988-09-20 00:00:00', '2020-03-21 16:04:23', 1),
	(446, 'elsoufysalma@gmail.com', 'Salma Elsoufy ', NULL, '1999-03-02 00:00:00', '2020-03-21 16:04:23', 1),
	(447, 'raghad.dawod@gmail.com', 'Raghad dawod', NULL, NULL, '2020-03-21 16:04:23', 1),
	(448, 'abdallah.sd29@gmail.com', 'Abdallah soda', NULL, '1999-01-01 00:00:00', '2020-03-21 16:04:23', 1),
	(449, 'soundousmanel1998@gmail.com', 'Soundous manel', NULL, NULL, '2020-03-21 16:04:23', 1),
	(450, 'nouarimane44@gmail.com', 'Iman Nouar', NULL, NULL, '2020-03-21 16:04:23', 1),
	(451, 'mariam.ahmadmashal@gmail.com', 'Mariam Mashaal', NULL, '1999-03-18 00:00:00', '2020-03-21 16:04:23', 1),
	(452, 'mohamadakidi934@gmail.com', 'Mohamad akidi', NULL, NULL, '2020-03-21 16:04:23', 1),
	(453, 'lolakhawla2002@gmail.com', 'Safi khaoula', NULL, NULL, '2020-03-21 16:04:23', 1),
	(454, 'ahmaddabbas467@gmail.com', 'AHMAD DABBAS', NULL, '1997-08-20 00:00:00', '2020-03-21 16:04:23', 1),
	(455, 'wbaba747@gmail.com', 'Walid baba addoun', NULL, '2000-03-24 00:00:00', '2020-03-21 16:04:23', 1),
	(456, 'sarah.s16a@gmail.com', 'Sara Abuowaimir ', NULL, '1997-06-25 00:00:00', '2020-03-21 16:04:23', 1),
	(457, 'amrobebo55@gmail.com', 'Amro Adel', NULL, NULL, '2020-03-21 16:04:23', 1),
	(458, 'omniasamir477@gmail.com', 'Omnia samir ', NULL, '1998-12-06 00:00:00', '2020-03-21 16:04:23', 1),
	(459, 'oussamamermoul@gmail.com', 'OUSSAMA MERMOUL', NULL, '1998-04-18 00:00:00', '2020-03-21 16:04:23', 1),
	(460, 'naoui.lamisse2000@gmail.com', 'Naoui lamisse', NULL, NULL, '2020-03-21 16:04:23', 1),
	(461, 'ibrahemalzaim2018@gmail.com', 'Ibrahem Alzaim', NULL, NULL, '2020-03-21 16:04:24', 1),
	(462, 'theepicabdullah@gmail.com', 'Abdullah Abdin', NULL, NULL, '2020-03-21 16:04:24', 1),
	(463, 'bayoud.selma@gmail.com', 'Selma bayoud', NULL, NULL, '2020-03-21 16:04:24', 1),
	(464, 'mohgamashal@gmail.com', 'Mohga Mashaal', NULL, NULL, '2020-03-21 16:04:24', 1),
	(465, 'moaidmk77@gmail.com', 'Moaid kreash', NULL, NULL, '2020-03-21 16:04:24', 1),
	(466, 'djennadjenna1@icloud.com', 'Benyettoy nidhal', NULL, '2000-10-07 00:00:00', '2020-03-21 16:04:24', 1),
	(467, 'isra-elshareef@hotmail.com', 'Israa Alsharif', NULL, '1989-07-04 00:00:00', '2020-03-21 16:04:24', 1),
	(468, 'ahmedfadimahamdi@gmail.com', 'Mahamdi ahmed fafi', NULL, '2001-11-12 00:00:00', '2020-03-21 16:04:24', 1),
	(469, 'deemasaad1999@gmail.com', 'Dimah alneamy ', NULL, '1999-06-16 00:00:00', '2020-03-21 16:04:24', 1),
	(470, 'yalsanjary@gmail.com', 'Yousif Mohammed Alsnjari', NULL, '1995-01-01 00:00:00', '2020-03-21 16:04:24', 1),
	(471, 'maya96soume@gmail.com', 'Kahlouche soumeya maya ', NULL, '2020-02-01 00:00:00', '2020-03-21 16:04:24', 1),
	(472, 'tarekelmadridi@gmail.com', 'Tarek cheikhaoui', NULL, '1996-04-15 00:00:00', '2020-03-21 16:04:24', 1),
	(473, 'mariamalrawi1998h@gmail.com', 'Mariam Raef Alrawi ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(474, 'prinssstar1998@iclud.com', 'SHIREEN HASAN ALQAISY', NULL, NULL, '2020-03-21 16:04:24', 1),
	(475, 'noor.quaba21@gmail.com', 'NOOR QABA', NULL, NULL, '2020-03-21 16:04:24', 1),
	(476, 'israa.qaba@gmail.com', 'ISRAA QABA', NULL, '1998-07-22 00:00:00', '2020-03-21 16:04:24', 1),
	(477, 'eng.mhmd@outlook.com', 'Mohammed Jeryo', NULL, NULL, '2020-03-21 16:04:24', 1),
	(478, 'esraa.quaba@gmail.com', 'ISRAA QABA', NULL, NULL, '2020-03-21 16:04:24', 1),
	(479, 'zenoo.al@gmail.com', 'Zainalabdin M', NULL, NULL, '2020-03-21 16:04:24', 1),
	(480, 'essafikhaoula98@gmail.com', 'Khaoula es-safi', NULL, '1998-07-08 00:00:00', '2020-03-21 16:04:24', 1),
	(481, 'ucefath.fy@gmail.com', 'Fatah youcef', NULL, NULL, '2020-03-21 16:04:24', 1),
	(482, 'abojwan@yahoo.com', 'Bakr AL-Mohammedi ', NULL, '1998-08-14 00:00:00', '2020-03-21 16:04:24', 1),
	(483, 'maryamjamal1326@gmail.com', 'Maryam Almasharawi', NULL, '1995-02-20 00:00:00', '2020-03-21 16:04:24', 1),
	(484, 'hasan.alomari93@gmail.com', 'HASAN ALOMARI', NULL, NULL, '2020-03-21 16:04:24', 1),
	(485, 'josephali836@gmail.com', 'Yousif AlGburi', NULL, NULL, '2020-03-21 16:04:24', 1),
	(486, 'aljuboorimanar2@gmail.com', 'Manar Aljuboori ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(487, 'rababsellaoui2018@gmail.com', 'Rabab sellaoui ', NULL, '1997-04-21 00:00:00', '2020-03-21 16:04:24', 1),
	(488, 'esraakamel83@gmail.com', 'ESEAA ELSEAIDY', NULL, '1999-07-03 00:00:00', '2020-03-21 16:04:24', 1),
	(489, 'hanannoman@std.sehir.edu.tr', 'Hanan noman', NULL, NULL, '2020-03-21 16:04:24', 1),
	(490, 'sarasharaf666@gmail.com', 'Sara sharaf', NULL, NULL, '2020-03-21 16:04:24', 1),
	(491, 'alizyr85@gmail.com', 'ALI ZAKARIYA YAHYA ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(492, 'ahmed.fadi@barid.com', 'Ahmed fadi', NULL, NULL, '2020-03-21 16:04:24', 1),
	(493, 'joryar642@yahoo.com', 'Hajar arwaneh', NULL, '2001-01-01 00:00:00', '2020-03-21 16:04:24', 1),
	(494, 'nen0o.2009@icloud.com', 'Haneen abdoh', NULL, '1995-08-01 00:00:00', '2020-03-21 16:04:24', 1),
	(495, 'aydan.19993@gmail.com', 'Bushra Benzer', NULL, NULL, '2020-03-21 16:04:24', 1),
	(496, 'humaira.abdulh1@gmail.com', 'Humaira abdulhafiz', NULL, NULL, '2020-03-21 16:04:24', 1),
	(497, 'AmmarAbbas2017.2018@gmail.com', 'ABBAS AMMAR AHMED NOMAN', NULL, NULL, '2020-03-21 16:04:24', 1),
	(498, 'abunasser-2009@hotmail.com', 'abdurabah ahmed swiri', NULL, NULL, '2020-03-21 16:04:24', 1),
	(499, 'alialihussen20@gmail.com', 'ALI AL-ZANGANAH', NULL, NULL, '2020-03-21 16:04:24', 1),
	(500, 'mehrianoura@gmail.com', 'Noura mehria ', NULL, '1997-05-14 00:00:00', '2020-03-21 16:04:24', 1),
	(501, 'ghazwan22.khalis33@gmail.com', 'Ghazwan Alzubaidy', NULL, NULL, '2020-03-21 16:04:24', 1),
	(502, 'arezkiahmelhadil@gmail.com', 'Arezki Amel ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(503, 'sab09mez21@yahoo.fr', 'Sabrina mezrag', NULL, '1998-06-18 00:00:00', '2020-03-21 16:04:24', 1),
	(504, 'rymasan96@gmail.com', 'Bouchellal Ryma Meriem', NULL, '1994-12-04 00:00:00', '2020-03-21 16:04:24', 1),
	(505, 'hananewinchester@gmail.com', 'Bouchellal Hanane ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(506, 'hakimhadboune20@gmail.com', 'ABDELHAKIM HADBOUNE ', NULL, '2000-09-22 00:00:00', '2020-03-21 16:04:24', 1),
	(507, 'fouad.labanji@gmail.com', 'FOUAD  LABANDJI', NULL, NULL, '2020-03-21 16:04:24', 1),
	(508, 'kha.essafi@gmail.com', 'Khaoula Essafi', NULL, NULL, '2020-03-21 16:04:24', 1),
	(509, 'Yaffaassaf@yahoo.com', 'Hala Assaf', NULL, NULL, '2020-03-21 16:04:24', 1),
	(510, 'Chellisnds@outlook.com', 'Soundous Chelli ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(511, 'y10b.mihad@gmail.com', 'Mahad rashed', NULL, '2000-07-08 00:00:00', '2020-03-21 16:04:24', 1),
	(512, 'madhar191@gmail.com', 'Mudhher ahmed mudhher', NULL, NULL, '2020-03-21 16:04:24', 1),
	(513, 'maminow7@gmail.com', 'Ouada Meriem ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(514, 'ramazanmyth@gmail.com', 'RAMADHAN ALI Alissawi ', NULL, '1996-02-09 00:00:00', '2020-03-21 16:04:24', 1),
	(515, 'lolaaya2012@gmail.com', 'Zineb fertas', NULL, '1995-10-11 00:00:00', '2020-03-21 16:04:24', 1),
	(516, 'almoflihi99@gmail.com', 'Almoflihi', NULL, NULL, '2020-03-21 16:04:24', 1),
	(517, 'sadek.rabha@gmail.com', 'Saidi Mohamed Sadek', NULL, NULL, '2020-03-21 16:04:24', 1),
	(518, 'mamoun.abdullah95@gmail.com', 'Mamoon Alani', NULL, NULL, '2020-03-21 16:04:24', 1),
	(519, 'Mohammedislam346@yahoo.com', 'Mohammed Salim Hasan', NULL, '1993-11-15 00:00:00', '2020-03-21 16:04:24', 1),
	(520, 'dham2741@gmail.com', 'Daham AL abed ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(521, 'aljubouri940@gmail.com', 'Mohammed Shaker Mahmoud ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(522, 'ehabkhaldon2020@gmail.com', 'Ihab altaee', NULL, '1994-05-17 00:00:00', '2020-03-21 16:04:24', 1),
	(523, 'rawan.anbar@gmail.com', 'Rawan Nazar', NULL, NULL, '2020-03-21 16:04:24', 1),
	(524, 'omar.du2016@gmail.com', 'Omar Al-Dulaimi ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(525, 'moamin.alzrzoor@gmail.com', 'Moamin  Alzrzoor', NULL, NULL, '2020-03-21 16:04:24', 1),
	(526, 'rruukkmm2323@gmail.com', 'Ruqaya alsultan ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(527, 'suzanosama58@gmail.com', 'SUZAN OSAMA', NULL, NULL, '2020-03-21 16:04:24', 1),
	(528, 'balqessaref99@gmail.com', 'Balqees Alkubaisi ', NULL, NULL, '2020-03-21 16:04:24', 1),
	(529, 'asawerfiras642@gmail.com', 'Asawer Firas', NULL, '1999-03-22 00:00:00', '2020-03-21 16:04:24', 1),
	(530, 'arwajm00@gmail.com', 'Arwa Elmashharawi', NULL, '1993-06-29 00:00:00', '2020-03-21 16:04:24', 1),
	(531, 'cheikhaouitarek@gmail.com', 'Tarek cheikhaoui', NULL, NULL, '2020-03-21 16:04:24', 1),
	(532, 'hachimoh6@gmail.com', 'Hachi Mohamed Elamine', NULL, '1996-12-14 00:00:00', '2020-03-21 16:04:24', 1),
	(533, 'ahmedfadimahamdi@yahoo.com', 'Mahamdi ahmed fadi', NULL, NULL, '2020-03-21 16:04:24', 1),
	(534, 'djamelkhattara@gmail.com', 'Djamel Eddine Khattara', NULL, NULL, '2020-03-21 16:04:24', 1),
	(535, 'ahmedraad1995@gmail.com', 'Ahmed Raad Alzubaidi', NULL, NULL, '2020-03-21 16:04:24', 1),
	(536, 'nawala283@gmail.com', 'Nawal aly', NULL, NULL, '2020-03-21 16:04:24', 1),
	(537, 'saad91awad@gmail.com', 'Saad  algburi', NULL, NULL, '2020-03-21 16:04:24', 1),
	(538, 'abomaria.1995@gmail.com', 'MUHAMEDALFATEH FOUAD ', NULL, '1995-08-02 00:00:00', '2020-03-21 16:04:24', 1),
	(539, 'raniabenseghir@gmail.com', 'Rania BENSEGHIR', NULL, NULL, '2020-03-21 16:04:24', 1),
	(540, 'safaaeltie93@gmail.com', 'Safaa Mahdi', NULL, '1992-11-21 00:00:00', '2020-03-21 16:04:25', 1);
/*!40000 ALTER TABLE `tbl_clients` ENABLE KEYS */;

-- Dumping structure for table db_yef_certification.tbl_clients_missing
CREATE TABLE IF NOT EXISTS `tbl_clients_missing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `certifications` varbinary(50) DEFAULT NULL,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

-- Dumping data for table db_yef_certification.tbl_clients_missing: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_clients_missing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_clients_missing` ENABLE KEYS */;

-- Dumping structure for table db_yef_certification.tbl_users
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_yef_certification.tbl_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT IGNORE INTO `tbl_users` (`id`, `email`, `password`, `creation`) VALUES
	(1, 'haithamtalhaji@yahoo.com', '601f1889667efaebb33b8c12572835da3f027f78', '2019-09-02 21:53:45');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
