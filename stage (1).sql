-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 10 nov. 2020 à 17:03
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stage`
--

-- --------------------------------------------------------

--
-- Structure de la table `avancement`
--

DROP TABLE IF EXISTS `avancement`;
CREATE TABLE IF NOT EXISTS `avancement` (
  `IDAVANCEMENT` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEL` int(11) NOT NULL,
  `NUMAVANCEMENT` int(11) NOT NULL,
  `DATEAVANCEMENT` date NOT NULL,
  `DATEALERTAVANCEMENT` date NOT NULL,
  `STATUTAVANCEMENT` text NOT NULL COMMENT 'fait, à jours, à préparer, expiré',
  PRIMARY KEY (`IDAVANCEMENT`),
  KEY `FK_R_PERSO_AVANCEMENT` (`IDPERSONNEL`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avancement`
--

INSERT INTO `avancement` (`IDAVANCEMENT`, `IDPERSONNEL`, `NUMAVANCEMENT`, `DATEAVANCEMENT`, `DATEALERTAVANCEMENT`, `STATUTAVANCEMENT`) VALUES
(28, 13, 1, '2018-09-21', '2018-03-17', 'fait'),
(25, 11, 1, '2015-09-04', '2015-03-04', 'fait'),
(27, 12, 1, '2012-10-01', '2012-04-01', 'fait'),
(47, 14, 2, '2009-05-04', '2008-11-04', 'fait'),
(45, 12, 2, '2014-10-01', '2014-04-01', 'fait'),
(36, 17, 1, '2013-10-02', '2013-04-02', 'fait'),
(38, 18, 1, '2013-02-10', '2012-08-10', 'fait'),
(40, 19, 1, '2012-10-03', '2012-04-03', 'fait'),
(42, 20, 1, '2007-03-12', '2006-09-12', 'fait'),
(58, 12, 4, '2018-10-01', '2018-04-01', 'fait'),
(59, 14, 4, '2013-05-04', '2012-11-04', 'fait'),
(34, 16, 1, '2012-05-12', '2011-11-12', 'fait'),
(29, 14, 1, '2007-05-04', '2006-11-04', 'fait'),
(24, 10, 1, '2012-05-10', '2011-11-10', 'fait'),
(32, 15, 1, '2016-03-12', '2015-09-12', 'fait'),
(43, 10, 2, '2014-05-10', '2013-11-10', 'fait'),
(48, 15, 2, '2018-03-12', '2017-09-12', 'fait'),
(44, 11, 2, '2017-09-04', '2017-03-04', 'fait'),
(55, 13, 2, '2020-09-21', '2020-03-21', 'fait'),
(54, 14, 3, '2011-05-04', '2010-11-04', 'fait'),
(51, 12, 3, '2016-10-01', '2016-04-01', 'fait'),
(64, 16, 2, '2014-05-12', '2013-11-12', 'fait'),
(49, 10, 3, '2016-05-10', '2015-11-10', 'fait'),
(50, 11, 3, '2019-09-04', '2019-03-04', 'fait'),
(53, 15, 3, '2020-03-12', '2019-09-12', 'expiré'),
(63, 14, 5, '2015-05-04', '2014-11-04', 'expiré'),
(56, 10, 4, '2018-05-10', '2017-11-10', 'fait'),
(57, 11, 4, '2021-09-04', '2021-03-04', 'à jours'),
(62, 12, 5, '2020-10-01', '2020-04-01', 'à préparer'),
(61, 10, 5, '2020-05-10', '2019-11-10', 'expiré'),
(65, 17, 2, '2015-10-02', '2015-04-02', 'fait'),
(66, 18, 2, '2015-02-10', '2014-08-10', 'fait'),
(67, 19, 2, '2014-10-03', '2014-04-03', 'fait'),
(68, 20, 2, '2009-03-12', '2008-09-12', 'fait'),
(69, 16, 3, '2016-05-12', '2015-11-12', 'fait'),
(70, 17, 3, '2017-10-02', '2017-04-02', 'fait'),
(71, 18, 3, '2017-02-10', '2016-08-10', 'fait'),
(72, 19, 3, '2016-10-03', '2016-04-03', 'fait'),
(73, 20, 3, '2011-03-12', '2010-09-12', 'fait'),
(74, 16, 4, '2018-05-12', '2017-11-12', 'fait'),
(75, 17, 4, '2019-10-02', '2019-04-02', 'fait'),
(76, 18, 4, '2019-02-10', '2018-08-10', 'fait'),
(77, 19, 4, '2018-10-03', '2018-04-03', 'fait'),
(78, 20, 4, '2013-03-12', '2012-09-12', 'expiré'),
(79, 16, 5, '2020-05-12', '2019-11-12', 'fait'),
(80, 17, 5, '2021-10-02', '2021-04-02', 'à jours'),
(81, 18, 5, '2021-02-10', '2020-08-10', 'à préparer'),
(82, 19, 5, '2020-10-03', '2020-04-03', 'fait'),
(85, 19, 6, '2022-10-03', '2022-04-03', 'à jours'),
(83, 13, 3, '2022-09-21', '2022-03-21', 'à jours'),
(84, 16, 6, '2022-05-12', '2021-11-12', 'à jours');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `IDCATEGORIE` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORIE` text NOT NULL,
  PRIMARY KEY (`IDCATEGORIE`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`IDCATEGORIE`, `CATEGORIE`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII'),
(8, 'VIII'),
(9, 'IX'),
(10, 'X');

-- --------------------------------------------------------

--
-- Structure de la table `conge`
--

DROP TABLE IF EXISTS `conge`;
CREATE TABLE IF NOT EXISTS `conge` (
  `IDCONGE` int(11) NOT NULL AUTO_INCREMENT,
  `TYPECONGE` text NOT NULL,
  `JOURCONGE` int(11) NOT NULL,
  PRIMARY KEY (`IDCONGE`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `conge`
--

INSERT INTO `conge` (`IDCONGE`, `TYPECONGE`, `JOURCONGE`) VALUES
(1, 'Permission', 1),
(2, 'Congé annuel', 31),
(3, 'Congé de maternité', 6),
(4, 'Congé de paternité', 3);

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `IDCONTRAT` int(11) NOT NULL AUTO_INCREMENT,
  `IDPERSONNEL` int(11) NOT NULL,
  `NUMCONTRAT` int(11) NOT NULL,
  `DATECONTRAT` date NOT NULL,
  `DATEEXPIRATION` date NOT NULL,
  `DATEALERTCONTRAT` date NOT NULL,
  `STATUTCONTRAT` text NOT NULL COMMENT 'à jours, à prépare, expiré, renouvelé',
  PRIMARY KEY (`IDCONTRAT`),
  KEY `FK_R_PERSO_CONTRAT` (`IDPERSONNEL`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`IDCONTRAT`, `IDPERSONNEL`, `NUMCONTRAT`, `DATECONTRAT`, `DATEEXPIRATION`, `DATEALERTCONTRAT`, `STATUTCONTRAT`) VALUES
(1, 1, 1, '2015-04-04', '2016-04-04', '2015-10-04', 'expiré'),
(2, 2, 1, '2015-04-04', '2016-04-04', '2015-10-04', 'expiré'),
(3, 3, 1, '2009-11-09', '2010-11-09', '2010-05-09', 'expiré'),
(4, 4, 1, '2015-04-01', '2016-04-01', '2015-10-01', 'expiré'),
(5, 5, 1, '2016-08-01', '2017-08-01', '2017-02-01', 'expiré'),
(6, 6, 1, '2017-01-02', '2018-01-02', '2017-07-02', 'expiré'),
(7, 7, 1, '2019-10-12', '2020-10-12', '2020-04-12', 'expiré'),
(8, 8, 1, '2019-10-02', '2020-10-02', '2020-04-02', 'à jours'),
(9, 9, 1, '2019-11-02', '2020-11-02', '2020-05-02', 'à jours'),
(25, 11, 2, '2016-09-04', '2018-09-04', '2018-03-04', 'renouvelé'),
(15, 10, 1, '2011-05-10', '2013-05-10', '2012-11-10', 'renouvelé'),
(16, 11, 1, '2014-09-04', '2016-09-04', '2016-03-04', 'renouvelé'),
(18, 12, 1, '2011-10-01', '2013-10-01', '2013-04-01', 'renouvelé'),
(19, 13, 1, '2017-09-21', '2019-09-21', '2019-03-21', 'renouvelé'),
(20, 14, 1, '2006-05-04', '2008-05-04', '2007-11-04', 'renouvelé'),
(26, 12, 2, '2013-10-01', '2015-10-01', '2015-04-01', 'renouvelé'),
(23, 15, 1, '2015-03-12', '2017-03-12', '2016-09-12', 'renouvelé'),
(28, 14, 2, '2008-05-04', '2010-05-04', '2009-11-04', 'renouvelé'),
(29, 15, 2, '2017-03-12', '2019-03-12', '2018-09-12', 'renouvelé'),
(24, 10, 2, '2013-05-10', '2015-05-10', '2014-11-10', 'renouvelé'),
(31, 13, 2, '2019-09-21', '2021-09-21', '2021-03-21', 'à jours'),
(33, 11, 3, '2018-09-04', '2020-09-04', '2020-03-04', 'à jours'),
(34, 12, 3, '2015-10-01', '2017-10-01', '2017-04-01', 'à jours'),
(32, 10, 3, '2015-05-10', '2017-05-10', '2016-11-10', 'à jours'),
(35, 15, 3, '2019-03-12', '2021-03-12', '2020-09-12', 'à jours'),
(36, 14, 3, '2010-05-04', '2012-05-04', '2011-11-04', 'à jours'),
(37, 21, 1, '2020-10-01', '2021-10-01', '2021-04-01', 'à jours');

-- --------------------------------------------------------

--
-- Structure de la table `corps`
--

DROP TABLE IF EXISTS `corps`;
CREATE TABLE IF NOT EXISTS `corps` (
  `IDCORPS` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLECORPS` text NOT NULL,
  PRIMARY KEY (`IDCORPS`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `corps`
--

INSERT INTO `corps` (`IDCORPS`, `LIBELLECORPS`) VALUES
(2, 'Sous-opérateur'),
(3, 'Opérateurs'),
(4, 'Encadreurs'),
(5, 'Techniciens supérieurs'),
(6, 'Réalisateurs adjoints'),
(7, 'Réalisateurs '),
(8, 'Fonctionnaire de la CAT 7'),
(9, 'Concepteurs'),
(10, 'Fonctionnaire de la CAT 9'),
(11, 'Fonctionnaire de la CAT 10');

-- --------------------------------------------------------

--
-- Structure de la table `directions`
--

DROP TABLE IF EXISTS `directions`;
CREATE TABLE IF NOT EXISTS `directions` (
  `IDDIRECTION` int(11) NOT NULL AUTO_INCREMENT,
  `DIRECTION` text,
  PRIMARY KEY (`IDDIRECTION`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `directions`
--

INSERT INTO `directions` (`IDDIRECTION`, `DIRECTION`) VALUES
(1, 'SG'),
(2, 'DAFP'),
(3, 'CBG'),
(4, 'DSISE'),
(5, 'DAJ'),
(6, 'DCP'),
(7, 'DRH'),
(8, 'UGPM'),
(9, 'CABINET'),
(10, 'DGT'),
(11, 'CRD'),
(12, 'DAE'),
(13, 'DAH'),
(14, 'ANDEA'),
(15, 'SDAUM'),
(16, 'AES'),
(17, 'DREAH');

-- --------------------------------------------------------

--
-- Structure de la table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `IDGRADE` int(11) NOT NULL AUTO_INCREMENT,
  `IDCATEGORIE` int(11) NOT NULL,
  `IDSTATUT` int(11) NOT NULL,
  `GRADE` text NOT NULL,
  `INDICE` int(11) NOT NULL,
  PRIMARY KEY (`IDGRADE`),
  KEY `IDCATEGORIE` (`IDCATEGORIE`) USING BTREE,
  KEY `IDSTATUT` (`IDSTATUT`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `grades`
--

INSERT INTO `grades` (`IDGRADE`, `IDCATEGORIE`, `IDSTATUT`, `GRADE`, `INDICE`) VALUES
(1, 1, 2, 'A11E', 275),
(2, 1, 2, 'A12E', 279),
(3, 1, 2, 'A13E', 283),
(4, 1, 2, 'A14E', 291),
(5, 1, 2, 'A15E', 299),
(6, 1, 2, 'A16E', 303),
(7, 1, 2, 'A17E', 307),
(8, 1, 2, 'A18E', 315),
(9, 2, 2, 'A21E', 291),
(10, 2, 2, 'A22E', 299),
(11, 2, 2, 'A23E', 307),
(12, 2, 2, 'A24E', 319),
(13, 2, 2, 'A25E', 331),
(14, 2, 2, 'A26E', 347),
(15, 2, 2, 'A27E', 363),
(16, 2, 2, 'A28E', 379),
(17, 3, 2, 'A31E', 371),
(18, 3, 2, 'A32E', 387),
(19, 3, 2, 'A33E', 403),
(20, 3, 2, 'A34E', 419),
(21, 3, 2, 'A35E', 435),
(22, 3, 2, 'A36E', 453),
(23, 3, 2, 'A37E', 470),
(24, 3, 2, 'A38E', 492),
(25, 4, 2, 'A41E', 435),
(26, 4, 2, 'A42E', 453),
(27, 4, 2, 'A43E', 470),
(28, 4, 2, 'A44E', 488),
(29, 4, 2, 'A45E', 514),
(30, 4, 2, 'A46E', 545),
(31, 4, 2, 'A47E', 575),
(32, 4, 2, 'A48E', 606),
(33, 5, 2, 'STOE', 605),
(34, 5, 2, '2C1E', 665),
(35, 5, 2, '2C2E', 730),
(36, 5, 2, '2C3E', 800),
(37, 5, 2, '1C1E', 880),
(38, 5, 2, '1C2E', 970),
(39, 5, 2, '1C3E', 1066),
(40, 6, 2, 'STOE', 650),
(41, 6, 2, '2C1E', 710),
(42, 6, 2, '2C2E', 780),
(43, 6, 2, '2C3E', 850),
(44, 6, 2, '1C1E', 930),
(45, 6, 2, '1C2E', 1020),
(46, 6, 2, '1C3E', 1115),
(47, 7, 2, 'STOE', 750),
(48, 7, 2, '2C1E', 815),
(49, 7, 2, '2C2E', 900),
(50, 7, 2, '2C3E', 970),
(51, 7, 2, '1C1E', 1055),
(52, 7, 2, '1C2E', 1145),
(53, 7, 2, '1C3E', 1250),
(54, 8, 2, 'STOE', 850),
(55, 8, 2, '2C1E', 920),
(56, 8, 2, '2C2E', 995),
(57, 8, 2, '2C3E', 1075),
(58, 8, 2, '1C1E', 1160),
(59, 8, 2, '1C2E', 1225),
(60, 8, 2, '1C3E', 1355),
(61, 9, 2, 'STOE', 950),
(62, 9, 2, '2C1E', 1035),
(63, 9, 2, '2C2E', 1125),
(64, 9, 2, '2C3E', 1225),
(65, 9, 2, '1C1E', 1355),
(66, 9, 2, '1C2E', 1455),
(67, 9, 2, '1C3E', 1585),
(68, 10, 2, 'STOE', 1100),
(69, 10, 2, '2C1E', 1183),
(70, 10, 2, '2C2E', 1280),
(71, 10, 2, '2C3E', 1380),
(72, 10, 2, '1C1E', 1485),
(73, 10, 2, '1C2E', 1600),
(74, 10, 2, '1C3E', 1725),
(75, 1, 3, 'STOE', 275),
(76, 1, 3, '2C1E', 295),
(77, 1, 3, '2C2E', 310),
(78, 1, 3, '2C3E', 350),
(79, 1, 3, '1C1E', 370),
(80, 1, 3, '1C2E', 395),
(81, 1, 3, '1C3E', 415),
(82, 1, 3, 'PR1E', 440),
(83, 1, 3, 'PR2E', 460),
(84, 1, 3, 'PR3E', 490),
(85, 1, 3, 'EXP 1E', 515),
(86, 1, 3, 'EXP2E', 675),
(87, 2, 3, 'STOE', 380),
(88, 2, 3, '2C1E', 415),
(89, 2, 3, '2C2E', 435),
(90, 2, 3, '2C3E', 455),
(91, 2, 3, '1C1E', 490),
(92, 2, 3, '1C2E', 515),
(93, 2, 3, '1C3E', 540),
(94, 2, 3, 'PR1E', 570),
(95, 2, 3, 'PR2E', 605),
(96, 2, 3, 'PR3E', 640),
(97, 2, 3, 'EXP 1E', 675),
(98, 2, 3, 'EXP2E', 1020),
(99, 3, 3, 'STOE', 500),
(100, 3, 3, '2C1E', 540),
(101, 3, 3, '2C2E', 580),
(102, 3, 3, '2C3E', 620),
(103, 3, 3, '1C1E', 665),
(104, 3, 3, '1C2E', 715),
(105, 3, 3, '1C3E', 765),
(106, 3, 3, 'PR1E', 825),
(107, 3, 3, 'PR2E', 885),
(108, 3, 3, 'PR3E', 950),
(109, 3, 3, 'EXP 1E', 1020),
(110, 3, 3, 'EXP2E', 1550),
(111, 4, 3, 'STOE', 605),
(112, 4, 3, '2C1E', 665),
(113, 4, 3, '2C2E', 730),
(114, 4, 3, '2C3E', 800),
(115, 4, 3, '1C1E', 880),
(116, 4, 3, '1C2E', 970),
(117, 4, 3, '1C3E', 1065),
(118, 4, 3, 'PR1E', 1170),
(119, 4, 3, 'PR2E', 1285),
(120, 4, 3, 'PR3E', 1410),
(121, 4, 3, 'EXP 1E', 1550),
(122, 4, 3, 'EXP2E', 1600),
(123, 5, 3, 'STOE', 560),
(124, 5, 3, '2C1E', 710),
(125, 5, 3, '2C2E', 780),
(126, 5, 3, '2C3E', 850),
(127, 5, 3, '1C1E', 930),
(128, 5, 3, '1C2E', 1020),
(129, 5, 3, '1C3E', 1115),
(130, 5, 3, 'PR1E', 1220),
(131, 5, 3, 'PR2E', 1335),
(132, 5, 3, 'PR3E', 1460),
(133, 5, 3, 'EXP 1E', 1600),
(134, 5, 3, 'EXP2E', 1750),
(135, 6, 3, 'STOE', 750),
(136, 6, 3, '2C1E', 815),
(137, 6, 3, '2C2E', 900),
(138, 6, 3, '2C3E', 970),
(139, 6, 3, '1C1E', 1055),
(140, 6, 3, '1C2E', 1145),
(141, 6, 3, '1C3E', 1250),
(142, 6, 3, 'PR1E', 1360),
(143, 6, 3, 'PR2E', 1480),
(144, 6, 3, 'PR3E', 1610),
(145, 6, 3, 'EXP 1E', 1750),
(146, 6, 3, 'EXP2E', 1850),
(147, 7, 3, 'STOE', 850),
(148, 7, 3, '2C1E', 920),
(149, 7, 3, '2C2E', 995),
(150, 7, 3, '2C3E', 1075),
(151, 7, 3, '1C1E', 1160),
(152, 7, 3, '1C2E', 1255),
(153, 7, 3, '1C3E', 1355),
(154, 7, 3, 'PR1E', 1465),
(155, 7, 3, 'PR2E', 1585),
(156, 7, 3, 'PR3E', 1710),
(157, 7, 3, 'EXP 1E', 1850),
(158, 7, 3, 'EXP2E', 2225),
(159, 8, 3, 'STOE', 950),
(160, 8, 3, '2C1E', 1035),
(161, 8, 3, '2C2E', 1125),
(162, 8, 3, '2C3E', 1225),
(163, 8, 3, '1C1E', 1335),
(164, 8, 3, '1C2E', 1455),
(165, 8, 3, '1C3E', 1585),
(166, 8, 3, 'PR1E', 1725),
(167, 8, 3, 'PR2E', 1880),
(168, 8, 3, 'PR3E', 2045),
(169, 8, 3, 'EXP 1E', 2225),
(170, 8, 3, 'EXP2E', 2325),
(171, 9, 3, 'STOE', 1100),
(172, 9, 3, '2C1E', 1185),
(173, 9, 3, '2C2E', 1280),
(174, 9, 3, '2C3E', 1380),
(175, 9, 3, '1C1E', 1485),
(176, 9, 3, '1C2E', 1600),
(177, 9, 3, '1C3E', 1725),
(178, 9, 3, 'PR1E', 1860),
(179, 9, 3, 'PR2E', 2000),
(180, 9, 3, 'PR3E', 2115),
(181, 9, 3, 'EXP 1E', 2325),
(182, 9, 3, 'EXP2E', 2520),
(183, 10, 3, '1C1E', 1920),
(184, 10, 3, '1C2E', 2120),
(185, 10, 3, '1C3E', 2220),
(186, 10, 3, 'PR1E', 2450),
(187, 10, 3, 'PR2E', 2520),
(188, 10, 3, 'PR3E', 2620);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `IDHISTORIQUE` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLEHISTORIQUE` text NOT NULL,
  PRIMARY KEY (`IDHISTORIQUE`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`IDHISTORIQUE`, `LIBELLEHISTORIQUE`) VALUES
(1, 'Ajout utilisateur'),
(2, 'Edit profil utilisateur'),
(3, 'Suppression utilisateur'),
(4, 'Ajout ECD'),
(5, 'Edit ECD'),
(6, 'Suppression ECD'),
(7, 'Ajout EFA'),
(8, 'Edit EFA'),
(9, 'Suppresion EFA'),
(10, 'Renouvellement contrat EFA'),
(11, 'Avenant EFA'),
(12, 'Reclassement EFA'),
(13, 'Affectation EFA'),
(14, 'Ajout Fonctionnaire'),
(15, 'Edit Fonctionnaire'),
(16, 'Suppression Fonctionnaire'),
(17, 'Avancement Fonctionnaire'),
(18, 'Reclassement Fonctionnaire'),
(19, 'Affectation Fonctionnaire'),
(20, 'intégration Fonctionnaire');

-- --------------------------------------------------------

--
-- Structure de la table `localites`
--

DROP TABLE IF EXISTS `localites`;
CREATE TABLE IF NOT EXISTS `localites` (
  `IDLOCALITE` int(11) NOT NULL AUTO_INCREMENT,
  `LOCALITE` text NOT NULL,
  PRIMARY KEY (`IDLOCALITE`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `localites`
--

INSERT INTO `localites` (`IDLOCALITE`, `LOCALITE`) VALUES
(1, 'Central'),
(2, 'Analamanga'),
(3, 'Vakinakaratra'),
(4, 'Itasy'),
(5, 'Bongolava'),
(6, 'Diana'),
(7, 'Sava'),
(8, 'Matsiatra Ambony'),
(9, 'Amoron\'i Mania'),
(10, 'Atsimo Atsinanana'),
(11, 'Vatovay Fitovinany'),
(12, 'Ihorombe'),
(13, 'Boeny'),
(14, 'Melaky'),
(15, 'Sofia'),
(16, 'Betsiboka'),
(17, 'Atsinanana'),
(18, 'Alaotra Mangoro'),
(19, 'Analanjorofo'),
(20, 'Atsimo Andrefana'),
(21, 'Anosy'),
(22, 'Androy'),
(23, 'Menabe');

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

DROP TABLE IF EXISTS `personnels`;
CREATE TABLE IF NOT EXISTS `personnels` (
  `IDPERSONNEL` int(11) NOT NULL AUTO_INCREMENT,
  `IDSTATUT` int(11) NOT NULL,
  `IDCATEGORIE` int(11) NOT NULL,
  `IDCORPS` int(11) DEFAULT NULL,
  `IDGRADE` int(11) DEFAULT NULL,
  `IDDIRECTION` int(11) DEFAULT NULL,
  `NOM` text NOT NULL,
  `PRENOM` text NOT NULL,
  `SEXE` text NOT NULL,
  `DDN` date NOT NULL,
  `MATRICULE` text,
  `CIN` text NOT NULL,
  `DATECIN` date NOT NULL,
  `LIEUCIN` text NOT NULL,
  `FONCTION` text NOT NULL,
  `DATEENTREE` date NOT NULL,
  `LIBELLEDIPLOME` text NOT NULL,
  `UPGRADE` int(11) NOT NULL COMMENT '0-7',
  PRIMARY KEY (`IDPERSONNEL`),
  KEY `FK_R_PERSO_CORPS` (`IDCORPS`),
  KEY `FK_R_PERSO_DIPLOME` (`IDCATEGORIE`),
  KEY `FK_R_PERSO_DIRECTION` (`IDDIRECTION`),
  KEY `FK_R_PERSO_GRADE` (`IDGRADE`),
  KEY `FK_R_PERSO_STATUT` (`IDSTATUT`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnels`
--

INSERT INTO `personnels` (`IDPERSONNEL`, `IDSTATUT`, `IDCATEGORIE`, `IDCORPS`, `IDGRADE`, `IDDIRECTION`, `NOM`, `PRENOM`, `SEXE`, `DDN`, `MATRICULE`, `CIN`, `DATECIN`, `LIEUCIN`, `FONCTION`, `DATEENTREE`, `LIBELLEDIPLOME`, `UPGRADE`) VALUES
(1, 1, 4, NULL, NULL, 9, 'Rakotoavao', 'Willy', 'Homme', '1988-06-22', NULL, '401235456565', '1998-06-17', 'Mahajanga', 'Chauffeur', '2015-04-04', 'Baccalauréat', 0),
(2, 1, 3, NULL, NULL, 9, 'Randriamantena', 'Jean', 'Homme', '1980-07-26', NULL, '101323235656', '1998-07-16', 'Antananarivo', 'Chauffeur', '2015-04-04', 'Bepc', 0),
(3, 1, 2, NULL, NULL, 9, 'Ramaherisoa', 'Andriniaina', 'Homme', '1993-09-18', NULL, '101235456565', '2015-08-24', 'Antananarivo', 'Coursier', '2009-11-09', 'Cepe', 0),
(4, 1, 6, NULL, NULL, 1, 'Ravelonirina', 'Christiane', 'Femme', '1992-06-26', NULL, '101235450005', '2013-07-19', 'Antananarivo', 'Secrétaire ', '2015-04-01', 'Licence en Informatique', 0),
(5, 1, 6, NULL, NULL, 2, 'Bototsakaoto', 'Nevina', 'Femme', '1987-05-22', NULL, '401200402565', '2008-05-21', 'Mahajanga', 'Comptable', '2016-08-01', 'Licence en gestion', 0),
(6, 1, 3, NULL, NULL, 7, 'Rajaomaniry', 'Alain', 'Homme', '1991-03-14', NULL, '401220018898', '2014-07-23', 'Mahajanga', 'Coursier', '2017-01-02', 'Bepc', 0),
(7, 1, 1, NULL, NULL, 2, 'Ravaoniary', ' Félicité', 'Femme', '1994-12-21', NULL, '101323220001', '2015-09-22', 'Antananarivo', 'Fille de salle', '2019-10-12', 'Sans diplôme ', 0),
(8, 1, 6, NULL, NULL, 7, 'Miranarimanana Nomenjanahary', 'Hanitriniaina', 'Femme', '1993-05-19', NULL, '101012340444', '2004-08-12', 'Antananarivo', 'Responsable ECD', '2018-01-02', 'Licence en administration', 0),
(9, 1, 7, NULL, NULL, 7, 'Raholijaona', 'Zoelisoa', 'Femme', '1987-02-04', NULL, '101336565446', '1999-06-24', 'Antananarivo', 'Chef de service', '2017-01-02', 'DEA en géographie', 0),
(10, 2, 7, 7, 53, 6, 'Andrianjaka', 'Rado', 'Homme', '1987-06-10', '334115', '101000000001', '2005-06-06', 'Antananarivo', 'Directeur', '2011-05-10', 'Master II droit', 6),
(11, 2, 5, 5, 38, 13, 'Randrianarisoa', 'Miora', 'Femme', '1988-06-15', '354300', '101000000002', '2006-06-08', 'Antananarivo', 'Assistant', '2014-09-04', 'Bacc +2  gestion', 5),
(12, 2, 4, 4, 31, 7, 'Ben Ahmed', 'Mariama', 'Femme', '1977-03-12', '336738', '101000000003', '1995-06-23', 'Antananarivo', 'Secrétaire', '2011-10-01', 'Bacc', 6),
(13, 2, 6, 4, 40, 6, 'Razafindranaivo', 'Hajanirina', 'Homme', '1989-07-12', '409262', '101000000004', '2007-08-12', 'Antananarivo', 'Comptable', '2017-09-21', 'licence en gestion', 0),
(14, 3, 7, 5, 53, 5, 'Andriamamonjy', 'Mahavonjiniaina', 'Homme', '1974-08-30', '301331', '101000000015', '1992-10-22', 'Antananarivo', 'Responsable technique', '2020-09-22', 'DEA hydrogeologie', 6),
(15, 2, 7, 7, 51, 6, 'Randriamahefa', 'Haingo', 'Femme', '1977-03-12', '372081', '101000000006', '1995-05-12', 'Antananarivo', 'Chimiste', '2015-03-12', 'DEA chimie organique', 4),
(16, 3, 7, 8, 152, 1, 'Randriamanampisoa', 'Marcelin', 'Homme', '1982-06-12', '330915', '401000000001', '2001-07-12', 'Mahajanga', 'Assistant technique', '2010-05-12', 'Ingenieur btp', 5),
(17, 3, 7, 8, 151, 4, 'Raveloarimisa', 'Oliviah', 'Femme', '1982-04-20', '336274', '401000000002', '2000-06-02', 'Mahajanga', 'Collaborateur technique', '2011-10-02', 'Ingénieur hydrogéologie', 4),
(18, 3, 7, 8, 151, 1, 'Andrianony', 'Fidelish', 'Homme', '1978-12-25', '334662', '401000000003', '1998-01-22', 'Mahajanga', 'Chef de service', '2011-02-10', 'Ingénieur en informatique', 4),
(19, 3, 6, 6, 140, 9, 'Raharimalala', 'Voangy', 'Femme', '1970-04-12', '331088', '401000000004', '1990-04-10', 'Mahajanga', 'Collaborateur financier', '2010-10-03', 'Licence en économie', 5),
(20, 3, 3, 3, 102, 1, 'Ravo', 'Hélène', 'Femme', '1964-04-12', '262659', '401000000005', '1983-05-20', 'Mahajanga', 'Réceptionniste', '2005-03-12', 'Bepc', 3),
(21, 1, 4, NULL, NULL, 1, 'Ravao', 'Marie', 'Femme', '1990-10-17', NULL, '401000000012', '2008-07-19', 'Mahajanga', 'Secrétaire', '2020-10-01', 'Bacc', 0);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `IDPROFIL` int(11) NOT NULL AUTO_INCREMENT,
  `STATUTPROFIL` text NOT NULL,
  PRIMARY KEY (`IDPROFIL`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`IDPROFIL`, `STATUTPROFIL`) VALUES
(1, 'Super admin'),
(2, 'Administrateur'),
(3, 'Gestionnaire ECD'),
(4, 'Gestionnaire EFA'),
(5, 'Gestionnaire fonctionnaire'),
(6, 'Gestionnaire d\'absence');

-- --------------------------------------------------------

--
-- Structure de la table `reclassement`
--

DROP TABLE IF EXISTS `reclassement`;
CREATE TABLE IF NOT EXISTS `reclassement` (
  `IDRECLASSEMENT` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORIERECLASSEMENT` int(11) NOT NULL,
  PRIMARY KEY (`IDRECLASSEMENT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_perso_conge`
--

DROP TABLE IF EXISTS `r_perso_conge`;
CREATE TABLE IF NOT EXISTS `r_perso_conge` (
  `IDCONGE` int(11) NOT NULL,
  `IDPERSONNEL` int(11) NOT NULL,
  `DATEDEBCONGE` date NOT NULL,
  `DATEFINCONGE` date NOT NULL,
  `JOURSPRIS` int(11) NOT NULL,
  `MOTIF` text NOT NULL,
  KEY `IDCONGE` (`IDCONGE`,`IDPERSONNEL`) USING BTREE,
  KEY `IDPERSONNEL` (`IDPERSONNEL`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `r_perso_conge`
--

INSERT INTO `r_perso_conge` (`IDCONGE`, `IDPERSONNEL`, `DATEDEBCONGE`, `DATEFINCONGE`, `JOURSPRIS`, `MOTIF`) VALUES
(2, 10, '2020-09-25', '2020-10-09', 14, 'Repos');

-- --------------------------------------------------------

--
-- Structure de la table `r_perso_localites`
--

DROP TABLE IF EXISTS `r_perso_localites`;
CREATE TABLE IF NOT EXISTS `r_perso_localites` (
  `IDLOCALITE` int(11) NOT NULL,
  `IDPERSONNEL` int(11) NOT NULL,
  `DATEAFFECTATION` date DEFAULT NULL,
  KEY `IDLOCALITE` (`IDLOCALITE`,`IDPERSONNEL`) USING BTREE,
  KEY `IDPERSONNEL` (`IDPERSONNEL`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `r_perso_localites`
--

INSERT INTO `r_perso_localites` (`IDLOCALITE`, `IDPERSONNEL`, `DATEAFFECTATION`) VALUES
(1, 1, '2020-09-16'),
(2, 2, '2020-09-16'),
(1, 3, '2020-09-16'),
(1, 4, '2020-09-16'),
(4, 5, '2020-09-16'),
(21, 6, '2020-09-17'),
(1, 7, '2020-09-17'),
(1, 8, '2020-09-17'),
(2, 9, '2020-09-17'),
(14, 13, '2020-10-01'),
(4, 11, '2020-09-22'),
(1, 12, '2020-09-22'),
(1, 21, '2020-09-22'),
(1, 16, '2020-09-22'),
(2, 17, '2020-09-22'),
(1, 18, '2020-09-22'),
(2, 19, '2020-09-22'),
(1, 20, '2020-09-22'),
(1, 21, '2020-09-18'),
(5, 22, '2020-09-22'),
(3, 15, '2020-09-22'),
(5, 14, '2020-09-22'),
(1, 10, '2020-09-22');

-- --------------------------------------------------------

--
-- Structure de la table `r_perso_reclassement`
--

DROP TABLE IF EXISTS `r_perso_reclassement`;
CREATE TABLE IF NOT EXISTS `r_perso_reclassement` (
  `IDRECLASSEMENT` int(11) NOT NULL,
  `IDPERSONNEL` int(11) NOT NULL,
  `DIPLOMERECLASSE` text NOT NULL,
  `DATERECLASSE` date NOT NULL,
  KEY `IDRECLASSEMENT` (`IDRECLASSEMENT`,`IDPERSONNEL`) USING BTREE,
  KEY `IDPERSONNEL` (`IDPERSONNEL`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `r_perso_reclassement`
--

INSERT INTO `r_perso_reclassement` (`IDRECLASSEMENT`, `IDPERSONNEL`, `DIPLOMERECLASSE`, `DATERECLASSE`) VALUES
(6, 13, 'licence en gestion', '2020-09-22');

-- --------------------------------------------------------

--
-- Structure de la table `r_user_historique`
--

DROP TABLE IF EXISTS `r_user_historique`;
CREATE TABLE IF NOT EXISTS `r_user_historique` (
  `IDUSER` int(11) NOT NULL,
  `IDHISTORIQUE` int(11) NOT NULL,
  `DATEHISTORIQUE` datetime NOT NULL,
  KEY `IDUSER` (`IDUSER`,`IDHISTORIQUE`) USING BTREE,
  KEY `IDHISTORIQUE` (`IDHISTORIQUE`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `r_user_historique`
--

INSERT INTO `r_user_historique` (`IDUSER`, `IDHISTORIQUE`, `DATEHISTORIQUE`) VALUES
(1, 1, '2020-09-22 04:15:14'),
(2, 4, '2020-09-22 04:36:16'),
(2, 7, '2020-09-22 04:38:29'),
(2, 8, '2020-09-22 04:43:09'),
(2, 11, '2020-09-22 04:46:48'),
(2, 12, '2020-09-22 04:49:12'),
(2, 13, '2020-09-22 04:50:08'),
(2, 20, '2020-09-22 04:58:53'),
(2, 17, '2020-09-22 05:00:05'),
(2, 17, '2020-09-22 05:00:50'),
(1, 15, '2020-10-06 08:26:52'),
(1, 15, '2020-10-06 08:27:18');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `IDSTATUT` int(11) NOT NULL AUTO_INCREMENT,
  `TYPESTATUT` text NOT NULL,
  PRIMARY KEY (`IDSTATUT`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`IDSTATUT`, `TYPESTATUT`) VALUES
(1, 'ecd'),
(2, 'efa'),
(3, 'fonctionnaire');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `IDUSER` int(11) NOT NULL AUTO_INCREMENT,
  `IDPROFIL` int(11) NOT NULL,
  `NOMUSER` text NOT NULL,
  `PRENOMUSER` text NOT NULL,
  `MDP` text NOT NULL,
  `EMAIL` text NOT NULL,
  `TELUSER` text NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `DATEPROFIL` datetime NOT NULL,
  `VERIFICATION_KEY` varchar(250) NOT NULL,
  PRIMARY KEY (`IDUSER`),
  KEY `FK_R_USER_PROFIL` (`IDPROFIL`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`IDUSER`, `IDPROFIL`, `NOMUSER`, `PRENOMUSER`, `MDP`, `EMAIL`, `TELUSER`, `ACTIVE`, `DATEPROFIL`, `VERIFICATION_KEY`) VALUES
(1, 1, 'Rakotomalala', 'Johary', 'f+xNS6DBuWvqAocqJuQf+ivXXxmSTHGkw9TNSEm2vC9F0KlnpMAsHMrfw9rzOSquvo/V3nRpR0BLrJUylBzREQ==', 'admin@admin.mg', '0347933405', 1, '2020-09-13 08:15:50', '0bf28731c890f78031df29d4be2d85e5'),
(2, 2, 'Ranaivo', 'Daniel', 'SGkEEVpHfyCNlY2xuH8nNcWG8CAQtYDHG+un0a62UShYOLXNVwp7CEkYr957mmJuccqUIDijgePQyyEQhbORlw==', 'joharyrktml@gmail.com', '0325951124', 1, '2020-09-22 04:15:14', 'fc7079c59bf3610c28028522c22f6ef8');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
