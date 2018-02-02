create database transair;
use transair;
-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Lundi 05 Février 2007 à 15:41
-- Version du serveur: 5.0.21
-- Version de PHP: 4.3.10
-- 
-- Base de données: `TRANSAIRV2`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `affectation`
-- 

DROP TABLE IF EXISTS `affectation`;
CREATE TABLE IF NOT EXISTS `affectation` (
  `NOVOL` varchar(6) NOT NULL,
  `DATE_VOL` date NOT NULL,
  `NBPASS` bigint(4) default '0',
  `NOPILOTE` bigint(4) default '0',
  `NOAVION` bigint(4) default '0',
  PRIMARY KEY  (`NOVOL`,`DATE_VOL`),
  KEY `FK_AFFECTATION` (`NOAVION`),
  KEY `FK_AFFECTATION_1` (`NOPILOTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `affectation`
-- 

INSERT DELAYED IGNORE INTO `affectation` (`NOVOL`, `DATE_VOL`, `NBPASS`, `NOPILOTE`, `NOAVION`) VALUES ('AF3218', '1994-06-12', 83, 6723, 7693),
('AF3218', '1994-09-01', 98, 8843, 7693),
('AF3530', '1994-11-12', 178, 6723, 8432),
('AF3530', '1994-11-13', 156, 6723, 8432),
('AF3538', '1994-12-21', 110, 6723, 8118),
('AF3570', '1994-09-12', 56, 1243, 7693),
('AF8810', '1994-03-02', 160, 7100, 8556),
('AF8810', '1994-05-02', 88, 6589, 7693),
('IT319 ', '1994-03-02', 105, 3452, 8432),
('IW201 ', '1994-03-01', 310, 6723, 8567),
('IW201 ', '1994-03-02', 265, 6723, 8832),
('IW201 ', '1994-03-03', 211, 1333, 8567),
('IW201 ', '1994-03-12', 160, 6589, 8467),
('IW201 ', '1994-05-01', 156, 6548, 8432),
('IW433 ', '1994-03-22', 178, 3421, 8556),
('IW655 ', '1994-01-18', 398, 5643, 8467),
('IW655 ', '1994-03-23', 118, 6548, 8118),
('IW655 ', '1994-12-20', 402, 1243, 8467),
('IW924 ', '1994-04-30', 412, 8843, 8832);

-- --------------------------------------------------------

-- 
-- Structure de la table `appareil`
-- 

DROP TABLE IF EXISTS `appareil`;
CREATE TABLE IF NOT EXISTS `appareil` (
  `CODETYPE` varchar(3) NOT NULL,
  `NBPLACE` bigint(4) default '0',
  `DESIGN` varchar(30) default NULL,
  PRIMARY KEY  (`CODETYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `appareil`
-- 

INSERT DELAYED IGNORE INTO `appareil` (`CODETYPE`, `NBPLACE`, `DESIGN`) VALUES ('320', 110, 'AIRBUS A320'),
('734', 450, 'BOEING 737-400'),
('741', 100, 'BOEING 747-100'),
('74E', 150, 'BOEING 747-400 COMBI'),
('AB3', 180, 'AIRBUS A300'),
('SSC', 80, 'CONCORDE');

-- --------------------------------------------------------

-- 
-- Structure de la table `avion`
-- 

DROP TABLE IF EXISTS `avion`;
CREATE TABLE IF NOT EXISTS `avion` (
  `NUAVION` bigint(4) NOT NULL default '0',
  `ANNSERV` bigint(4) default '0',
  `NOM_AV` varchar(50) default NULL,
  `NBHVOL` bigint(4) default '0',
  `CODETYPE` varchar(3) default NULL,
  PRIMARY KEY  (`NUAVION`),
  KEY `FK_AVION` (`CODETYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `avion`
-- 

INSERT DELAYED IGNORE INTO `avion` (`NUAVION`, `ANNSERV`, `NOM_AV`, `NBHVOL`, `CODETYPE`) VALUES (7693, 1988, 'Pacifique', 34000, '741'),
(8118, 1992, '', 11800, '74E'),
(8432, 1991, 'Malte', 10600, 'AB3'),
(8467, 1995, 'Le Sud', 600, '734'),
(8556, 1989, '', 12000, 'AB3'),
(8567, 1988, 'Ville de Reims', 8000, '734'),
(8832, 1988, 'Ville de Paris', 16000, '734');

-- --------------------------------------------------------

-- 
-- Structure de la table `pilote`
-- 

DROP TABLE IF EXISTS `pilote`;
CREATE TABLE IF NOT EXISTS `pilote` (
  `NOPILOTE` bigint(4) NOT NULL default '0',
  `NOMPIL` varchar(30) default NULL,
  `ADRESSE` varchar(50) default NULL,
  `SALAIRE` double(4,0) default '0',
  `COMM` double(4,0) default NULL,
  `EMBAUCHE` date default NULL,
  PRIMARY KEY  (`NOPILOTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `pilote`
-- 

INSERT DELAYED IGNORE INTO `pilote` (`NOPILOTE`, `NOMPIL`, `ADRESSE`, `SALAIRE`, `COMM`, `EMBAUCHE`) VALUES (1243, 'COLLET', 'PARIS', 9999, 0, '1990-02-01'),
(1333, 'FEDOI', 'NANTES', 9999, 0, '1992-03-01'),
(3421, 'BERGER', 'REIMS', 9999, 0, '1998-12-28'),
(3452, 'ANDRE', 'NICE', 9999, 0, '1992-12-12'),
(3465, 'PIC', 'TOURS', 9999, 0, '1993-07-15'),
(5643, 'DELORME', 'PARIS', 9999, 9850, '1992-02-01'),
(6548, 'BARRE', 'LYON', 9999, 8600, '1992-12-01'),
(6589, 'DUVAL', 'PARIS', 9999, 5800, '1992-03-12'),
(6723, 'MARTIN', 'ORSAY', 9999, 0, '1992-05-15'),
(7100, 'MARTIN', 'LYON', 9999, 9999, '1993-04-01'),
(8843, 'GAUCHER', 'CACHAN', 9999, 0, '1992-11-20');

-- --------------------------------------------------------

-- 
-- Structure de la table `vol`
-- 

DROP TABLE IF EXISTS `vol`;
CREATE TABLE IF NOT EXISTS `vol` (
  `NOVOL` varchar(6) NOT NULL,
  `VILDEP` varchar(30) default NULL,
  `VILARR` varchar(30) default NULL,
  `DEP_H` int(2) default '0',
  `DEP_MN` int(2) default '0',
  `AR_H` int(2) default '0',
  `AR_MN` int(2) default '0',
  PRIMARY KEY  (`NOVOL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `vol`
-- 

INSERT DELAYED IGNORE INTO `vol` (`NOVOL`, `VILDEP`, `VILARR`, `DEP_H`, `DEP_MN`, `AR_H`, `AR_MN`) VALUES ('AF3218', 'MARSEILLE', 'FRANCFORT', 16, 45, 19, 10),
('AF3530', 'LYON', 'LONDRES', 8, 0, 8, 40),
('AF3538', 'LYON', 'LONDRES', 18, 35, 19, 15),
('AF3570', 'MARSEILLE', 'LONDRES', 9, 35, 10, 20),
('AF8809', 'DJERBA', 'PARIS', 12, 45, 15, 40),
('AF8810', 'PARIS', 'DJERBA', 9, 0, 11, 45),
('IT319 ', 'BORDEAUX', 'NICE', 10, 35, 11, 45),
('IW201 ', 'LYON', 'FORT DE France', 9, 45, 15, 25),
('IW433 ', 'PARIS', 'ST-MARTIN', 17, 0, 8, 20),
('IW655 ', 'LA HAVANE', 'PARIS', 19, 55, 12, 35),
('IW924 ', 'SYDNEY', 'COLOMBO', 17, 25, 22, 30);
        