-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for spark
CREATE DATABASE IF NOT EXISTS `spark` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `spark`;

-- Dumping structure for table spark.contact_type
CREATE TABLE IF NOT EXISTS `contact_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_type` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table spark.contact_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `contact_type` DISABLE KEYS */;
INSERT INTO `contact_type` (`id`, `contact_type`) VALUES
	(1, 'Email'),
	(2, 'Phone No'),
	(3, 'number');
/*!40000 ALTER TABLE `contact_type` ENABLE KEYS */;

-- Dumping structure for table spark.district
CREATE TABLE IF NOT EXISTS `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT 0,
  `district_en` varchar(50) DEFAULT '',
  `district_np` varchar(50) DEFAULT '',
  `hq` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table spark.district: ~77 rows (approximately)
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` (`id`, `province_id`, `district_en`, `district_np`, `hq`) VALUES
	(1, 1, 'Taplejung', 'ताप्लेजुङ्ग', ' ताप्लेजुङ'),
	(2, 1, 'Panchthar', 'पाँचथर', ' फिदिम'),
	(3, 1, 'Ilam', 'इलाम', ' इलाम'),
	(4, 1, 'Jhapa', 'झापा', ' भद्रपुर'),
	(5, 1, 'Morang', 'मोरङ्ग', ' विराटनगर'),
	(6, 1, 'Sunsari', 'सुनसरी', ' ईनरुवा'),
	(7, 1, 'Dhankuta', 'धनकुटा', ' धनकुटाबजार'),
	(8, 1, 'Terhathum', 'तेह्रथुम', ' म्याङलुङ'),
	(9, 1, 'Sankhuwasabha', 'संखुवासभा', ' खाँदबारी'),
	(10, 1, 'Bhojpur', 'भोजपुर', ' भोजपुरबजार'),
	(11, 1, 'Solukhumbu', 'सोलुखुम्बु', ' सल्लेरी'),
	(12, 1, 'Khotang', 'खोटाङ्ग', ' दिक्तेलबजार'),
	(13, 1, 'Okhaldhunga', 'ओखलढुंङ्गा', ' ओखलढुंगा बजार'),
	(14, 1, 'Udayapur', 'उदयपुर', ' त्रियुगा गाईघाट'),
	(15, 2, 'Saptari', 'सप्तरी', ' राजविराज'),
	(16, 2, 'Siraha', 'सिराहा', ' सिरहा'),
	(17, 2, 'Dhanusha', 'धनुषा', ' जनकपुर'),
	(18, 2, 'Mahottari', 'महोत्तरी', ' जलेस्वर'),
	(19, 2, 'Sarlahi', 'सर्लाही', ' मलंगवा'),
	(20, 3, 'Sindhuli', 'सिन्धुली', ' कमलामाइ (सिन्धुलीमाढी)'),
	(21, 3, 'Ramechhap', 'रामेछाप', ' मन्थली'),
	(22, 3, 'Dolakha', 'दोलखा', ' चरीकोट'),
	(23, 3, 'Sindhupalchok', 'सिन्धुपाल्चोक', ' चौतारा'),
	(24, 3, 'Kavrepalanchok', 'काभ्रेपलान्चोक', ' धुलीखेल'),
	(25, 3, 'Lalitpur', 'ललितपुर', ' पाटन'),
	(26, 3, 'Bhaktapur', 'भक्तपुर', ' भक्तपुर'),
	(27, 3, 'Kathmandu', 'काठमाण्डौं', ' काठमाण्डौ'),
	(28, 3, 'Nuwakot', 'नुवाकोट', ' बिदुर'),
	(29, 3, 'Rasuwa', 'रसुवा', ' धुन्छे'),
	(30, 3, 'Dhading', 'धादिङ्ग', ' धादीङ बेसी'),
	(31, 3, 'Makwanpur', 'मकवानपुर', ' हेटौडा'),
	(32, 2, 'Rautahat', 'रौतहट', ' गौर'),
	(33, 2, 'Bara', 'बारा', ' कलैया'),
	(34, 2, 'Parsa', 'पर्सा', ' विरगंज'),
	(35, 3, 'Chitawan', 'चितवन', ' भरतपुर'),
	(36, 4, 'Gorkha', 'गोरखा', ' गोरखा (पृथ्वीनारायण नगरपालीका)'),
	(37, 4, 'Lamjung', 'लम्जुङ्ग', ' बेंसी सहर'),
	(38, 4, 'Manang', 'मनाङ्ग', ' चामे'),
	(39, 4, 'Kaski', 'कास्की', ' पोखरा'),
	(40, 4, 'Tanahu', 'तनहुँ', ' ब्यास'),
	(41, 4, 'Syangja', 'स्याङ्गजा', ' पुतलीबजार'),
	(42, 4, 'Parbat', 'पर्वत', ' कुस्मा'),
	(43, 4, 'Baglung', 'बाग्लुङ्ग', ' बाग्लुङ्ग'),
	(44, 4, 'Myagdi', 'म्याग्दी', ' बेनी'),
	(45, 4, 'Mustang', 'मुस्ताङ्ग', ' जोमसोम'),
	(46, 5, 'Palpa', 'पाल्पा', ' तानसेन'),
	(47, 4, 'Nawalpur', 'नवलपुर ', ' कावासोती'),
	(48, 5, 'Rupandehi', 'रुपन्देही', ' सिदार्थनगर (भैरहवा)'),
	(49, 5, 'Kapilvastu', 'कपिलवस्तु', ' तौलीहवा'),
	(50, 5, 'Arghakhanchi', 'अर्घाखाँची', ' सन्धीर्खक'),
	(51, 5, 'Gulmi', 'गुल्मी', ' तम्घांस'),
	(52, 5, 'Rukum_E', 'पूर्वी रूकुम ', ' रूकुमकोट'),
	(53, 6, 'Salyan', 'सल्यान', ' सल्यान'),
	(54, 5, 'Rolpa', 'रोल्पा', ' लिवाङ'),
	(55, 5, 'Pyuthan', 'प्युठान', ' प्युठान खलंगा'),
	(56, 5, 'Dang', 'दाङ्ग', ' त्रिभुवननगर'),
	(57, 5, 'Banke', 'बाँके', ' नेपालगंज'),
	(58, 5, 'Bardiya', 'बर्दिया', ' गुलेरीया'),
	(59, 6, 'Surkhet', 'सुर्खेत', ' वीरेन्द्रनगर'),
	(60, 6, 'Jajarkot', 'जाजरकोट', ' जाजरकोट खलंगा'),
	(61, 6, 'Dailekh', 'दैलेख', ' नारायणनगरपालीका'),
	(62, 6, 'Dolpa', 'डोल्पा', ' दुनै'),
	(63, 6, 'Jumla', 'जुम्ला', ' खलंगा'),
	(64, 6, 'Kalikot', 'कालिकोट', ' मान्मा'),
	(65, 6, 'Mugu', 'मुगु', ' गमगढी'),
	(66, 6, 'Humla', 'हुम्ला', ' सिमकोट'),
	(67, 7, 'Bajhang', 'बझाङ्ग', ' बझाङ्ग'),
	(68, 7, 'Bajura', 'बाजुरा', ' मार्तडी'),
	(69, 7, 'Achham', 'अछाम', ' मंगलसेन'),
	(70, 7, 'Doti', 'डोटी', ' दिपायल (सिलगढी)'),
	(71, 7, 'Kailali', 'कैलाली', ' धनगढी'),
	(72, 7, 'Kanchanpur', 'कञ्चनपुर', ' महेन्द्रनगर'),
	(73, 7, 'Dadeldhura', 'डडेल्धुरा ', ' अमरगढी'),
	(74, 7, 'Baitadi', 'बैतडी', ' दसरथचन्द नगरपालीका'),
	(75, 7, 'Darchula', 'दार्चुला', ' दार्चुला'),
	(76, 5, 'Parasi', 'परासी ', ' रामग्राम'),
	(77, 6, 'Rukum_W', 'पश्चिमी रूकुम ', ' मुसिकोट');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;

-- Dumping structure for table spark.province
CREATE TABLE IF NOT EXISTS `province` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_en` varchar(255) NOT NULL DEFAULT '',
  `province_np` varchar(255) NOT NULL DEFAULT '',
  `capital_en` varchar(255) NOT NULL DEFAULT '',
  `capital_np` varchar(255) NOT NULL DEFAULT '',
  `remarks` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table spark.province: ~8 rows (approximately)
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` (`id`, `province_en`, `province_np`, `capital_en`, `capital_np`, `remarks`) VALUES
	(1, 'Province No. 1', 'प्रदेश नं.  १', 'Biratnagar', 'बिराटनगर', ''),
	(2, 'Province No. 2', 'प्रदेश नं.  २', 'Janakpur', 'जनकपुर', ''),
	(3, 'Bagmati Pradesh', 'वाग्मती प्रदेश', 'Hetauda', 'हेटौडा', ''),
	(4, 'Gandaki Pradesh', 'गण्डकी प्रदेश', 'Pokhara', 'पोखरा', ''),
	(5, 'Lumbini Pradesh', 'लुम्बिनी प्रदेश', 'Butwal', 'बुटवल', ''),
	(6, 'Karnali Pradesh', 'कर्णाली प्रदेश', 'Birendranagar', 'वीरेन्द्रनगर', ''),
	(7, 'Sudurpashchim Pradesh', 'सुदूर-पश्चिम प्रदेश', 'Godawari', 'गोदावरी', ''),
	(8, 'Kathmandu Valley', 'काठमाण्डौं उपत्यका', 'Kathmandu', 'Kathmandu', '');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;

-- Dumping structure for table spark.student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_no` int(11) DEFAULT 0,
  `fname` varchar(50) DEFAULT '',
  `mname` varchar(50) DEFAULT '',
  `lname` varchar(50) DEFAULT '',
  `dob` varchar(25) DEFAULT '',
  `permanent_address` varchar(100) DEFAULT '',
  `permanent_district_id` int(11) DEFAULT 0,
  `temporary_address` varchar(100) DEFAULT '',
  `temporary_district_id` int(11) DEFAULT 0,
  `remarks` varchar(255) DEFAULT '',
  `Gender` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table spark.student: ~12 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `roll_no`, `fname`, `mname`, `lname`, `dob`, `permanent_address`, `permanent_district_id`, `temporary_address`, `temporary_district_id`, `remarks`, `Gender`) VALUES
	(1, 1, 'Bhim', 'Prakash', 'Sunuwar', '', '', 12, '', 25, '', 'Male'),
	(2, 2, 'Gobinda', 'Prasad', 'Jamakatel', '2002-03-03', 'Galchhi-1,Kalleritar', 25, 'Ekantakuna, Lalitpur', 0, 'This is me govinda jamkatel.', 'Male'),
	(3, 3, 'Junu', '', 'Darnal', '', '', 6, '', 27, '', 'Female'),
	(4, 4, 'Karan', 'Kumar', 'Katuwal', '', '', 18, '', 27, '', 'Male'),
	(5, 5, 'Lokesh', '', 'Gurung', '', '', 11, '', 25, '', 'Male'),
	(6, 6, 'Manas', '', 'Neupane', '', '', 35, '', 25, '', 'Male'),
	(7, 7, 'Manisha', '', 'Shrestha', '', '', 25, '', 25, '', 'Female'),
	(8, 8, 'Nitesh', 'Jung', 'Mahat', '', '', 24, '', 27, '', 'Male'),
	(9, 9, 'Raju', '', 'Neupane', '', '', 27, '', 25, '', 'Male'),
	(10, 10, 'Riya', '', 'Dhaubanzar', '', '', 26, '', 26, '', 'Female'),
	(11, 11, 'Rohit', '', 'KC', '', '', 24, '', 25, '', 'Male'),
	(12, 12, 'Sangay', 'Dorje', 'Tamang', '', '', 22, '', 25, '', 'Male');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping structure for table spark.student_class
CREATE TABLE IF NOT EXISTS `student_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT 0,
  `class` varchar(50) DEFAULT '',
  `remarks` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table spark.student_class: ~0 rows (approximately)
/*!40000 ALTER TABLE `student_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_class` ENABLE KEYS */;

-- Dumping structure for table spark.student_contact
CREATE TABLE IF NOT EXISTS `student_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT 0,
  `contact_type_id` int(11) DEFAULT 0,
  `details` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table spark.student_contact: ~0 rows (approximately)
/*!40000 ALTER TABLE `student_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_contact` ENABLE KEYS */;

-- Dumping structure for table spark.student_level
CREATE TABLE IF NOT EXISTS `student_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(11) DEFAULT 0,
  `level` varchar(20) DEFAULT '',
  `remarks` varchar(100) DEFAULT '',
  `student_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_level_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table spark.student_level: ~0 rows (approximately)
/*!40000 ALTER TABLE `student_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_level` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
