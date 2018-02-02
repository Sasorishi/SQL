-- MySQL dump 10.10
--
-- Host: localhost    Database: veto
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Création de la table `veto`
--

DROP database IF EXISTS `veto`;
Create database veto;
use veto;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal` (
  `NUMA` int(11) NOT NULL default '0',
  `NUMP` int(11) NOT NULL default '0',
  `NUMR` int(11) NOT NULL default '0',
  `NOMA` char(32) default NULL,
  `DATENAISSA` date default NULL,
  `TATOUAGE` char(32) default NULL,
  PRIMARY KEY  (`NUMA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal`
--


/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/* TABLES `animal` WRITE;*/
INSERT INTO `animal` VALUES (2,3,3,'Elan','1980-10-02','ERT502'),(3,3,3,'D‚mon','1985-06-05',NULL),(4,3,3,'Zo‚','2000-12-09','Zen245'),(5,1,2,'Nina','1996-01-14','DFG001'),(6,1,15,'Niok','2000-08-01','OIU115'),(7,2,14,'Jeune alf',NULL,NULL),(8,2,4,'Pollen',NULL,NULL),(9,4,5,'Jafna','1996-05-23','BNJ145'),(10,4,5,'Fabel','1995-10-24','BNA485'),(11,4,5,'Tanis','1994-06-30','BUI416'),(12,4,5,'Rio','1994-06-30','KIU521'),(13,5,8,'Bipsie','1985-04-06','DZE445'),(14,5,6,'Bouboule','1995-01-01','MPO444'),(15,6,9,'Nouki',NULL,NULL);
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;

--
-- Table structure for table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
CREATE TABLE `consultation` (
  `NUMC` int(11) NOT NULL default '0',
  `NUMV` int(11) NOT NULL default '0',
  `NUMA` int(11) NOT NULL default '0',
  `DATEC` date default NULL,
  `HEUREC` time default NULL,
  `PRIXC` decimal(13,2) default NULL,
  PRIMARY KEY  (`NUMC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consultation`
--


/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
/* TABLES `consultation` WRITE;*/
INSERT INTO `consultation` VALUES (2,2,6,'2000-12-07','12:00:00','341.25'),(3,1,2,'2001-09-05','09:15:00','425.00'),(4,2,7,'1995-06-24','18:00:00','446.00'),(5,3,10,'1998-05-10','12:30:00','275.00'),(6,3,11,'1996-10-03','15:00:00','436.00'),(7,3,10,'2003-06-22','09:15:00','215.00'),(8,1,14,'1998-05-10','08:30:00','285.00'),(9,2,4,'2000-11-02','14:30:00','393.00'),(10,3,9,'1999-02-12','10:00:00','381.00'),(11,1,15,'2000-11-07','13:15:00','268.80'),(12,1,2,'1995-05-04','15:30:00','403.00'),(13,3,15,'1996-08-26','09:30:00','341.25'),(14,1,12,'1996-08-26','09:30:00','325.00'),(15,3,5,'1995-05-04','15:30:00','423.15'),(16,1,5,'1995-07-06','12:15:00','239.40'),(17,2,15,'2004-10-18','11:00:00','295.05'),(18,2,12,'2002-01-29','09:15:00','413.00');
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;

--
-- Table structure for table `medicament`
--

DROP TABLE IF EXISTS `medicament`;
CREATE TABLE `medicament` (
  `NUMM` int(11) NOT NULL default '0',
  `NOMM` char(32) default NULL,
  `PRIXM` decimal(13,2) default NULL,
  PRIMARY KEY  (`NUMM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicament`
--


/*!40000 ALTER TABLE `medicament` DISABLE KEYS */;
/* TABLES `medicament` WRITE;*/
INSERT INTO `medicament` VALUES (1,'Vermifuge pate','35.00'),(2,'Vermifuge cachet','40.00'),(3,'Vaccin rage','86.00'),(4,'Vaccin Leucose','119.00'),(5,'Diuretique','45.00'),(6,'Croquettes 10 Kg','350.00');
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `medicament` ENABLE KEYS */;

--
-- Table structure for table `pratiquer`
--

DROP TABLE IF EXISTS `pratiquer`;
CREATE TABLE `pratiquer` (
  `NUMS` int(11) NOT NULL default '0',
  `NUMC` int(11) NOT NULL default '0',
  PRIMARY KEY  (`NUMS`,`NUMC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pratiquer`
--


/*!40000 ALTER TABLE `pratiquer` DISABLE KEYS */;
/* TABLES `pratiquer` WRITE;*/
INSERT INTO `pratiquer` VALUES (1,3),(1,4),(1,15),(1,16),(1,17),(1,18),(2,13),(3,4),(4,2),(4,5),(4,10),(4,11),(5,7),(5,12),(5,18),(6,7),(6,13),(6,14),(7,6),(7,11),(7,14),(8,7),(8,9),(8,14),(8,18);
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `pratiquer` ENABLE KEYS */;

--
-- Table structure for table `prescrire`
--

DROP TABLE IF EXISTS `prescrire`;
CREATE TABLE `prescrire` (
  `NUMM` int(11) NOT NULL default '0',
  `NUMC` int(11) NOT NULL default '0',
  `POSOLOGIE` char(32) default NULL,
  `DUREE` int(11) default NULL,
  PRIMARY KEY  (`NUMM`,`NUMC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescrire`
--


/*!40000 ALTER TABLE `prescrire` DISABLE KEYS */;
/* TABLES `prescrire` WRITE;*/
INSERT INTO `prescrire` VALUES (1,2,'10',15),(1,5,'10/i',3),(2,15,'1 fois par',10),(3,5,'3/repas',10),(3,11,'1/crise',NULL),(6,15,'2/jour',5),(5,2,'2 fois par',5),(5,5,'1 matin a',15),(6,6,'1/repas',7),(6,8,'1/repas',7);
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `prescrire` ENABLE KEYS */;

--
-- Table structure for table `proprietaire`
--

DROP TABLE IF EXISTS `proprietaire`;
CREATE TABLE `proprietaire` (
  `NUMP` int(11) NOT NULL default '0',
  `NOMP` char(32) default NULL,
  `PRENOMP` char(32) default NULL,
  `ADRP` char(32) default NULL,
  `CODEP` int(11) default NULL,
  `VILLEP` char(32) default NULL,
  `TELP` int(11) default NULL,
  PRIMARY KEY  (`NUMP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proprietaire`
--


/*!40000 ALTER TABLE `proprietaire` DISABLE KEYS */;
/* TABLES `proprietaire` WRITE;*/
INSERT INTO `proprietaire` VALUES (1,'Fevrier','Jean-Yves','13, rue de la republique',21000,'Dijon',328785965),(2,'Fevrier','Frederique','19, rue de la gare',98765,'Cnedville',145855844),(3,'Mars','Josette','4, rue des arbres',54000,'Nancy',478965877),(4,'Javelas','Henri','29, avenue de la lib‚ration',45000,'Orleans',269854789),(5,'Loriette','Sylvain','4, avenue fleurie',95000,'Cergy',125697842),(6,'Fevrier','Jean-Yves','87, square des amis',14000,'Caen',257845454);
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `proprietaire` ENABLE KEYS */;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
CREATE TABLE `race` (
  `NUMR` int(11) NOT NULL default '0',
  `NOMR` char(32) default NULL,
  `POIDS` int(11) default NULL,
  PRIMARY KEY  (`NUMR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `race`
--


/*!40000 ALTER TABLE `race` DISABLE KEYS */;
/* TABLES `race` WRITE;*/
INSERT INTO `race` VALUES (2,'Teckel sympa',7),(3,'Yorkshire',2),(4,'Chat gouttiere',5),(5,'Saluki',20),(6,'Caniche royal',25),(8,'Caniche nain',5),(14,'Lapin b‚lier nain',6),(15,'Chat sphinx',3),(16,'Persan',3);
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `race` ENABLE KEYS */;

--
-- Table structure for table `soin`
--

DROP TABLE IF EXISTS `soin`;
CREATE TABLE `soin` (
  `NUMS` int(11) NOT NULL default '0',
  `NOMS` char(32) default NULL,
  `DUREES` int(11) default NULL,
  `NATURES` char(32) default NULL,
  `TARIFS` decimal(13,2) default NULL,
  PRIMARY KEY  (`NUMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soin`
--


/*!40000 ALTER TABLE `soin` DISABLE KEYS */;
/* TABLES `soin` WRITE;*/
INSERT INTO `soin` VALUES (1,'Visite de controle',15,'externe','150.00'),(2,'Vaccin',6,'externe','50.00'),(3,'Operation calcul',120,'chirurgie','500.00'),(4,'Sterilisation male',25,'chirugie','250.00'),(5,'Sterilisation femelle',45,'chirurgie','350.00'),(6,'Radiographie',15,'externe','120.00'),(7,'Detartrage',35,'petite intervention','180.00'),(8,'Taille griffes',5,'petite intervention','30.00');
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `soin` ENABLE KEYS */;

--
-- Temporary table structure for view `soinanimal`
--

DROP TABLE IF EXISTS `soinanimal`;
/*!50001 DROP VIEW IF EXISTS `soinanimal`*/;
/*!50001 CREATE TABLE `soinanimal` (
  `NomA` char(32)
) */;

--
-- Temporary table structure for view `soinpratiquer`
--

DROP TABLE IF EXISTS `soinpratiquer`;
/*!50001 DROP VIEW IF EXISTS `soinpratiquer`*/;
/*!50001 CREATE TABLE `soinpratiquer` (
  `NomA` char(32)
) */;

--
-- Table structure for table `veterinaire`
--

DROP TABLE IF EXISTS `veterinaire`;
CREATE TABLE `veterinaire` (
  `NUMV` int(11) NOT NULL default '0',
  `NOMV` char(32) default NULL,
  `PRENOMV` char(32) default NULL,
  `numtel` varchar(10) NOT NULL,
  PRIMARY KEY  (`NUMV`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `veterinaire`
--


/*!40000 ALTER TABLE `veterinaire` DISABLE KEYS */;
/* TABLES `veterinaire` WRITE;*/
INSERT INTO `veterinaire` VALUES (1,'Carre','Paul',''),(2,'Carre','Violette',''),(3,'Rhin','Michel','');
/*UNLOCK TABLES;*/
/*!40000 ALTER TABLE `veterinaire` ENABLE KEYS */;

--
-- Final view structure for view `soinanimal`
--

/*!50001 DROP TABLE IF EXISTS `soinanimal`*/;
/*!50001 DROP VIEW IF EXISTS `soinanimal`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `soinanimal` AS select `a`.`NOMA` AS `NomA` from (`animal` `A` join `consultation` `C`) where ((`a`.`NUMA` = `c`.`NUMA`) and `c`.`NUMC` in (select `prescrire`.`NUMC` AS `NumC` from `prescrire`)) */;

--
-- Final view structure for view `soinpratiquer`
--

/*!50001 DROP TABLE IF EXISTS `soinpratiquer`*/;
/*!50001 DROP VIEW IF EXISTS `soinpratiquer`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `soinpratiquer` AS select `a`.`NOMA` AS `NomA` from (`animal` `A` join `consultation` `C`) where ((`a`.`NUMA` = `c`.`NUMA`) and `c`.`NUMC` in (select `pratiquer`.`NUMC` AS `NumC` from `pratiquer`)) */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

