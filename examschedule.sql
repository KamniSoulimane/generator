-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2017 at 12:27 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `examschedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` mediumint(9) DEFAULT NULL,
  `nom_etudiant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filiere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matricule` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom_etudiant`, `filiere`, `matricule`) VALUES
(1, 'Anika', 'GL', '16811203-2928'),
(2, 'Glenna', 'SIC', '16471027-1109'),
(3, 'Marshall', 'RSD', '16570111-7904'),
(4, 'Eden', 'MID', '16841109-7739'),
(5, 'Nichole', 'GL', '16650418-7789'),
(6, 'Giacomo', 'RSD', '16000508-2672'),
(7, 'Grace', 'GL', '16260205-1290'),
(8, 'Juliet', 'GL', '16851027-9964'),
(9, 'Violet', 'GL', '16820925-4062'),
(10, 'Patricia', 'MID', '16350820-0262'),
(11, 'Kathleen', 'GL', '16280825-4888'),
(12, 'Anthony', 'RSD', '16690925-6890'),
(13, 'Barrett', 'GL', '16881205-8926'),
(14, 'Hayden', 'GL', '16500329-4278'),
(15, 'Josephine', 'GL', '16040902-8883'),
(16, 'Miriam', 'GL', '16781030-7459'),
(17, 'Orlando', 'MID', '16380422-9759'),
(18, 'Melanie', 'GL', '16260318-3043'),
(19, 'Chester', 'GL', '16190423-7714'),
(20, 'Oprah', 'MID', '16431122-6908'),
(21, 'Travis', 'GL', '16160403-3231'),
(22, 'Dane', 'SIC', '16980609-1337'),
(23, 'Halee', 'GL', '16560704-1265'),
(24, 'Maris', 'MID', '16190507-3779'),
(25, 'Ivan', 'MID', '16530905-9219'),
(26, 'Raya', 'SIC', '16441014-4564'),
(27, 'Graham', 'RSD', '16630814-9522'),
(28, 'Orla', 'GL', '16271005-7668'),
(29, 'Tyrone', 'MID', '16951213-3951'),
(30, 'Ria', 'SIC', '16090715-0155'),
(31, 'Melyssa', 'GL', '16390125-5772'),
(32, 'Hall', 'RSD', '16151221-7256'),
(33, 'Inga', 'GL', '16850516-7687'),
(34, 'Gray', 'GL', '16161229-1987'),
(35, 'Ryan', 'RSD', '16121123-6680'),
(36, 'Indigo', 'RSD', '16770902-2326'),
(37, 'Nyssa', 'MID', '16510925-6361'),
(38, 'Tallulah', 'SIC', '16691123-0701'),
(39, 'Ryder', 'MID', '16161205-5309'),
(40, 'Vernon', 'MID', '16000703-2105'),
(41, 'Wesley', 'RSD', '16140818-7977'),
(42, 'Steel', 'RSD', '16060629-8495'),
(43, 'Xantha', 'SIC', '16751203-0045'),
(44, 'Yolanda', 'RSD', '16990114-3587'),
(45, 'Paul', 'SIC', '16261208-9843'),
(46, 'Cyrus', 'GL', '16800829-1919'),
(47, 'Ryan', 'MID', '16440524-9071'),
(48, 'Ursa', 'MID', '16350327-9030'),
(49, 'Signe', 'MID', '16720823-2202'),
(50, 'Maite', 'GL', '16750830-0170'),
(51, 'Alexandra', 'SIC', '16320629-7131'),
(52, 'Hermione', 'RSD', '16661111-9436'),
(53, 'Uma', 'RSD', '16150130-4206'),
(54, 'Porter', 'GL', '16420427-7752'),
(55, 'Salvador', 'MID', '16420616-2424'),
(56, 'Jack', 'SIC', '16060504-3371'),
(57, 'Isabelle', 'RSD', '16010607-6649'),
(58, 'Seth', 'SIC', '16130602-2854'),
(59, 'Winter', 'SIC', '16890718-1583'),
(60, 'Castor', 'MID', '16160503-7280'),
(61, 'Donovan', 'MID', '16210208-7307'),
(62, 'Zenaida', 'RSD', '16290422-1567'),
(63, 'Teegan', 'SIC', '16800628-2936'),
(64, 'Sandra', 'RSD', '16880125-4338'),
(65, 'Mira', 'RSD', '16820219-7847'),
(66, 'Sawyer', 'RSD', '16990117-4350'),
(67, 'Garrett', 'SIC', '16840806-4486'),
(68, 'Meghan', 'GL', '16681028-0708'),
(69, 'Rhoda', 'MID', '16730206-6431'),
(70, 'Samuel', 'GL', '16380613-8057'),
(71, 'Alika', 'RSD', '16980926-8981'),
(72, 'Melissa', 'RSD', '16970704-4583'),
(73, 'MacKenzie', 'GL', '16230407-8732'),
(74, 'Isabella', 'GL', '16340610-9920'),
(75, 'Indigo', 'MID', '16830413-3419'),
(76, 'Fredericka', 'RSD', '16421222-7815'),
(77, 'Jena', 'MID', '16901110-1152'),
(78, 'Hamilton', 'GL', '16380328-7188'),
(79, 'Baxter', 'RSD', '16430912-4941'),
(80, 'MacKensie', 'RSD', '16390615-5043'),
(81, 'Hoyt', 'RSD', '16540416-6646'),
(82, 'Leigh', 'MID', '16271226-4205'),
(83, 'Kaseem', 'GL', '16781123-0098'),
(84, 'Ifeoma', 'RSD', '16781126-8643'),
(85, 'Lysandra', 'MID', '16560503-8065'),
(86, 'Justina', 'MID', '16681125-2433'),
(87, 'Quin', 'SIC', '16951128-7311'),
(88, 'Aurelia', 'MID', '16741111-1201'),
(89, 'Grant', 'MID', '16070522-3980'),
(90, 'Forrest', 'GL', '16950605-2613'),
(91, 'Naomi', 'GL', '16391228-4712'),
(92, 'Emma', 'RSD', '16011115-9521'),
(93, 'Cody', 'SIC', '16930409-1037'),
(94, 'Charde', 'SIC', '16860330-4083'),
(95, 'Guinevere', 'SIC', '16331119-1278'),
(96, 'Mallory', 'RSD', '16650223-8105'),
(97, 'Hall', 'RSD', '16740226-7053'),
(98, 'Alexa', 'SIC', '16530927-8363'),
(99, 'Porter', 'SIC', '16540311-0470'),
(100, 'Dieter', 'SIC', '16220823-7624');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id_module` mediumint(9) DEFAULT NULL,
  `libele` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coefficient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filiere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `semestre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id_module`, `libele`, `coefficient`, `filiere`, `semestre`) VALUES
(1, 'conception objet', '3', 'SIC', 'semestre1'),
(2, 'web ', '2', 'SIC', 'semestre2'),
(3, 'bdd ', '1', 'RSD', 'semestre1'),
(4, 'SI', '1', 'MID', 'semestre1'),
(5, 'SI', '3', 'RSD', 'semestre2'),
(6, 'conception objet', '1', 'MID', 'semestre1'),
(7, 'conception objet', '2', 'GL', 'semestre2'),
(8, 'management', '3', 'SIC', 'semestre1'),
(9, 'web ', '3', 'SIC', 'semestre2'),
(10, 'netWorking', '3', 'GL', 'semestre2'),
(11, 'management', '3', 'MID', 'semestre1'),
(12, 'management', '2', 'GL', 'semestre1'),
(13, 'SI', '1', 'MID', 'semestre2'),
(14, 'SI', '3', 'SIC', 'semestre2'),
(15, 'bdd ', '2', 'SIC', 'semestre1'),
(16, 'management', '1', 'RSD', 'semestre1'),
(17, 'management', '2', 'MID', 'semestre1'),
(18, 'web ', '3', 'RSD', 'semestre1'),
(19, 'algorithmique ', '2', 'SIC', 'semestre1'),
(20, 'algorithmique ', '2', 'RSD', 'semestre1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
