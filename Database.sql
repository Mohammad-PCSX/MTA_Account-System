-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for server
CREATE DATABASE IF NOT EXISTS `server` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci */;
USE `server`;

-- Dumping structure for table server.account
CREATE TABLE IF NOT EXISTS `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Money` int(11) DEFAULT 100000,
  `Skin` int(11) DEFAULT 1,
  `Wanted` int(11) DEFAULT 0,
  `X` float DEFAULT 1126.15,
  `Y` float DEFAULT -2036.94,
  `Z` float DEFAULT 69.8837,
  `R` float DEFAULT 0,
  `Serial` text DEFAULT NULL,
  `Online` int(11) DEFAULT 0,
  `Remember` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- Dumping data for table server.account: ~2 rows (approximately)
REPLACE INTO `account` (`ID`, `UserName`, `Password`, `Money`, `Skin`, `Wanted`, `X`, `Y`, `Z`, `R`, `Serial`, `Online`, `Remember`) VALUES
	(1, 'Ali', '4151616', 10, 15, 0, 1172.71, -2031.18, 69.0078, 311.289, NULL, 0, NULL),
	(2, 'Mohammad', '12345678', 100, 258, 0, 246.001, 67.6582, 1003.64, 3.02951, '2639A6F0E8B77991114BAF15A9F974E3', 0, 'Mohammad,12345678');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
