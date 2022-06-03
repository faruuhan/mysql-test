-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mysql_test_aitindo
DROP DATABASE IF EXISTS `mysql_test_aitindo`;
CREATE DATABASE IF NOT EXISTS `mysql_test_aitindo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mysql_test_aitindo`;

-- Dumping structure for table mysql_test_aitindo.invoice
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('PAY','NOPAY') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table mysql_test_aitindo.invoice: ~6 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`, `date`, `user_id`, `status`) VALUES
	(1, '2018-03-02', 1, 'PAY'),
	(2, '2018-03-04', 2, 'PAY'),
	(3, '2018-03-05', 3, 'PAY'),
	(4, '2018-08-12', 2, 'PAY'),
	(5, '2022-06-02', 4, 'PAY'),
	(6, '2022-06-02', 5, 'PAY');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table mysql_test_aitindo.invoice_detail
DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE IF NOT EXISTS `invoice_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table mysql_test_aitindo.invoice_detail: ~8 rows (approximately)
/*!40000 ALTER TABLE `invoice_detail` DISABLE KEYS */;
INSERT INTO `invoice_detail` (`id`, `invoice_id`, `product_id`, `quantity`) VALUES
	(1, 1, 1, 3),
	(2, 1, 4, 1),
	(3, 2, 1, 1),
	(4, 3, 2, 2),
	(5, 3, 5, 1),
	(6, 4, 1, 2),
	(7, 5, 4, 2),
	(8, 6, 3, 1);
/*!40000 ALTER TABLE `invoice_detail` ENABLE KEYS */;

-- Dumping structure for table mysql_test_aitindo.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mysql_test_aitindo.product: ~6 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `price`) VALUES
	(1, 'VGA NVDIA RTX 3050', 6000000),
	(2, 'MONITOR LG 24 IN', 2100000),
	(3, 'VGA RADEON RX 550', 2000000),
	(4, 'KURSI GAMING', 1900000),
	(5, 'MEJA', 700000),
	(6, 'KEYBOARD MECHANICAL', 1000000),
	(7, 'MONITOR 27 INCH 144hz', 2700000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table mysql_test_aitindo.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table mysql_test_aitindo.users: ~8 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `address`) VALUES
	(1, 'Imam', 'Jakarta'),
	(2, 'Radit', 'Bogor'),
	(3, 'Andi', 'Bandung'),
	(4, 'Rendy', 'Jakarta'),
	(5, 'Nahmad', 'Bekasi'),
	(6, 'Fendy', 'Tanggerang'),
	(7, 'Izack', 'Purwokerto'),
	(8, 'Hendy', 'Jakarta');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
