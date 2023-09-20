-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema crowdfunding
--

CREATE DATABASE IF NOT EXISTS crowdfunding;
USE crowdfunding;

--
-- Definition of table `ngodata`
--

DROP TABLE IF EXISTS `ngodata`;
CREATE TABLE `ngodata` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ngoid` varchar(45) NOT NULL,
  `ngoname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `lat` varchar(45) NOT NULL,
  `longt` varchar(45) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngodata`
--

/*!40000 ALTER TABLE `ngodata` DISABLE KEYS */;
INSERT INTO `ngodata` (`nid`,`ngoid`,`ngoname`,`location`,`lat`,`longt`) VALUES 
 (1,'1','Parvatinandan','Chinchwad','18.619400','73.729970'),
 (2,'2','GuruNanak','Pune','18.445089','73.868980');
/*!40000 ALTER TABLE `ngodata` ENABLE KEYS */;


--
-- Definition of table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tuserid` varchar(45) NOT NULL,
  `ttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tbal` varchar(45) NOT NULL DEFAULT '0.0',
  `tamt` varchar(45) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` (`tid`,`tuserid`,`ttime`,`tbal`,`tamt`) VALUES 
 (1,'2','2023-08-24 13:32:26','100.0','100'),
 (2,'4','2023-08-24 14:04:26','100.0','100'),
 (3,'2','2023-08-24 14:35:36','200.0','200');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;


--
-- Definition of table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE `userdata` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ngo` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phoneno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` longtext NOT NULL,
  `pancardno` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `roleid` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` (`userid`,`ngo`,`name`,`phoneno`,`email`,`address`,`pancardno`,`username`,`password`,`roleid`) VALUES 
 (1,'Parvatinandan',NULL,'8866899285','test123@gmail.com','DND, Punawle','','bala','123','1'),
 (2,NULL,'Bala Smare','7558596306','balkishnasamare@gmail.com','1st floor sarvadnya maharudra colony a walhkarwadi chinchwad pune','','user','user','2'),
 (3,NULL,'Administrator','8585964512','admin@gmail.com','chinchwad pune',NULL,'admin','admin','3'),
 (4,NULL,'atul baviskar','8585964512','latasambare93@gmail.com','chinchwad pune','GBFHP2285M','atul','123456','2');
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
