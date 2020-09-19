-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema project
--

CREATE DATABASE IF NOT EXISTS project;
USE project;

--
-- Definition of table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL auto_increment,
  `Pbd` double NOT NULL,
  `Discount` double NOT NULL,
  `Pad` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`,`Pbd`,`Discount`,`Pad`) VALUES 
 (1,28,0,28),
 (2,12,0,12),
 (3,12,0,12),
 (4,12,0,12),
 (5,12,0,12),
 (6,12,0,12);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


--
-- Definition of table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`item_id`,`NAME`) VALUES 
 (1,'افوكادو'),
 (2,'برتقال'),
 (3,'برتقال سكر '),
 (4,'ليمون '),
 (5,'ليمون نعناع '),
 (6,'ليمون باللبن'),
 (7,'بطيخ'),
 (8,'كيوى'),
 (9,'يوسفي'),
 (10,'عنب'),
 (11,'رمان'),
 (12,'رمان حب'),
 (13,'بلح باللبن'),
 (14,'تفاح'),
 (15,'كنتالوب'),
 (16,'جوافة'),
 (17,'برقوق'),
 (18,'خوخ'),
 (19,'اناناس'),
 (20,'اناناس Toskanini'),
 (21,'موز باللبن'),
 (22,'موز Toskanini'),
 (23,'فراولة'),
 (24,'فراولة باللبن'),
 (25,'فراولة Toskanini'),
 (26,'تين شوكى'),
 (27,'تين برشومى'),
 (28,'سوبر افوكادوا'),
 (29,'فياجرا'),
 (30,'سوبر فياجرا'),
 (31,'فيفا'),
 (32,'ميكاتو'),
 (33,'فلوريدا'),
 (34,'كلورتس'),
 (35,'ليمونيتا'),
 (36,'بطوط'),
 (37,'فرافيرو'),
 (38,'ميكا'),
 (39,'لاس فيجاس'),
 (40,'تروبيكال'),
 (41,'بلح');
INSERT INTO `item` (`item_id`,`NAME`) VALUES 
 (42,'فخفاخينا ملوكى'),
 (43,'فخفاخينا آيس كريم'),
 (44,'فخفاخينا كريمة'),
 (45,'فخفاخينا اسبيشيال'),
 (46,'فخفاخينا فروت سالاد'),
 (47,'فخفاخينا Toskanini'),
 (48,'قنبلة'),
 (49,'آيس كريم 1 بولة'),
 (50,'آيس كريم 2 بولة'),
 (51,'آيس كريم  سادة'),
 (52,' آيس كريم Toskanini'),
 (53,'موز شوكليت'),
 (54,'بانانا هوم'),
 (55,'بوريو'),
 (56,'سوبر بوريو'),
 (57,'باور بوريو'),
 (58,'فتة بوريو'),
 (59,'ميلك شيك فانيليا'),
 (60,'ميلك شيك مانجو'),
 (61,'ميلك شيك شيكولاته'),
 (62,' ميلك شيك فراولة'),
 (63,'سنيكرز'),
 (64,'هوهوز'),
 (65,'تويكس'),
 (66,'موكا'),
 (67,'فرابتشينو'),
 (68,' سموزى  فراولة'),
 (69,'سموزى  مانجو'),
 (70,'سموزى موز شيكولاته'),
 (71,'سموزى كيوى'),
 (72,'سموزى بطيخ');
INSERT INTO `item` (`item_id`,`NAME`) VALUES 
 (73,'سموزى ليمون'),
 (74,'مانجو'),
 (75,'مانجو لاس'),
 (76,'شوربة عدس'),
 (77,'هواى'),
 (78,'قطر الندى'),
 (79,'ميريت'),
 (80,'زبادى ساده '),
 (81,'زبادى بالعسل'),
 (82,'زبادى فواكة (قطع)'),
 (83,'زبادى فواكة (اختيار)'),
 (84,' فيتامين سي'),
 (85,'فيتامين سي مركز'),
 (86,'منعش '),
 (87,'منعش باشا مصر'),
 (88,'فول سودانى '),
 (89,'جوز هند'),
 (90,'سودانى شيكولاته'),
 (91,'سودانى بلح شيكولاته'),
 (92,'موخيتو'),
 (93,'آيس صودا'),
 (94,'ليمون اسكواش'),
 (95,'صن شاين'),
 (96,'صن رايز'),
 (97,'بلو Toskanini'),
 (98,'ماونتن ديو'),
 (99,'اورانج'),
 (100,'لوليتا توت '),
 (101,'لوليتا اناناس'),
 (102,'لوليتا تفاح'),
 (103,'لوليتا كولا'),
 (104,'لوليتا مكس بيرى'),
 (105,'وافل نوتيلا'),
 (106,'وافل كراميل');
INSERT INTO `item` (`item_id`,`NAME`) VALUES 
 (107,'وافل شيكولاته'),
 (108,'وافل آيس كريم'),
 (109,'فته وافل'),
 (110,'سوبر فتة وافل'),
 (111,' اضافة  صوص'),
 (112,'كريم شانتية'),
 (113,'آيس كريم'),
 (114,'لبن'),
 (115,'اضافة عسل'),
 (116,'مكسرات '),
 (117,'نوتيلا'),
 (118,'فواكة '),
 (119,'بيبسي'),
 (120,'شاى'),
 (121,'شاى نكهات'),
 (122,'شاي بحليب'),
 (123,'ينسون'),
 (124,'نعناع'),
 (125,'كركدية'),
 (126,'قهوة تركى '),
 (127,'قهوة تركى دوبل'),
 (128,'قهوة فرنساوى '),
 (129,'قهوة بندق'),
 (130,'قهوة فانيلا'),
 (131,'قهوة نوتيلا'),
 (132,'ليلة الخميس');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


--
-- Definition of table `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `price_id` int(11) NOT NULL,
  `cost` float default '0',
  `size_id` int(11) default NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY  (`price_id`),
  KEY `size_id` (`size_id`),
  CONSTRAINT `price_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price`
--

/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` (`price_id`,`cost`,`size_id`,`item_id`) VALUES 
 (1,18,2,1),
 (2,22,1,1),
 (3,7,2,2),
 (4,10,1,2),
 (5,8,2,3),
 (6,12,1,3),
 (7,8,2,4),
 (8,10,1,4),
 (9,10,2,5),
 (10,12,1,5),
 (11,12,2,6),
 (12,14,1,6),
 (13,10,2,7),
 (14,12,1,7),
 (15,14,2,8),
 (16,16,1,8),
 (17,10,2,9),
 (18,12,1,9),
 (19,10,2,10),
 (20,12,1,10),
 (21,10,2,11),
 (22,12,1,11),
 (23,12,2,12),
 (24,15,1,12),
 (25,10,2,13),
 (26,12,1,13),
 (27,8,2,14),
 (28,10,1,14),
 (29,8,2,15),
 (30,10,1,15),
 (31,10,2,16),
 (32,12,1,16),
 (33,10,2,17),
 (34,12,1,17),
 (35,10,2,18),
 (36,12,1,18),
 (37,13,2,19),
 (38,15,1,19),
 (39,16,2,20),
 (40,18,1,20),
 (41,10,2,21),
 (42,12,1,21),
 (43,12,2,22),
 (44,14,1,22),
 (45,10,2,23),
 (46,12,1,23),
 (47,12,2,24),
 (48,14,1,24),
 (49,14,2,25),
 (50,16,1,25),
 (51,12,2,26),
 (52,14,1,26),
 (53,10,2,27),
 (54,12,1,27),
 (55,22,2,28),
 (56,24,1,28),
 (57,10,2,29),
 (58,12,1,29),
 (59,14,2,30),
 (60,16,1,30),
 (61,14,2,31),
 (62,16,1,31),
 (63,14,2,32),
 (64,16,1,32),
 (65,15,2,33),
 (66,17,1,33);
INSERT INTO `price` (`price_id`,`cost`,`size_id`,`item_id`) VALUES 
 (67,14,2,34),
 (68,16,1,34),
 (69,14,2,35),
 (70,16,1,35),
 (71,12,2,36),
 (72,14,1,36),
 (73,12,2,37),
 (74,14,1,37),
 (75,12,2,38),
 (76,14,1,38),
 (77,12,2,39),
 (78,14,1,39),
 (79,12,2,40),
 (80,14,1,40),
 (81,12,2,41),
 (82,14,1,41),
 (83,20,1,42),
 (84,15,1,43),
 (85,18,1,44),
 (86,18,1,45),
 (87,20,1,46),
 (88,23,1,47),
 (89,25,1,48),
 (90,8,1,49),
 (91,12,1,50),
 (92,15,1,51),
 (93,18,1,52),
 (94,18,1,53),
 (95,20,1,54),
 (96,12,2,55),
 (97,14,1,55),
 (98,13,2,56),
 (99,15,1,56),
 (100,13,2,57),
 (101,15,1,57),
 (102,18,1,58),
 (103,12,2,59),
 (104,14,1,59),
 (105,12,2,60),
 (106,14,1,60),
 (107,12,2,61),
 (108,14,1,61),
 (109,12,2,62),
 (110,14,1,62),
 (111,16,2,63),
 (112,18,1,63),
 (113,16,2,64),
 (114,18,1,64),
 (115,16,2,65),
 (116,18,1,65),
 (117,16,2,66),
 (118,18,1,66),
 (119,16,2,67),
 (120,18,1,67),
 (121,15,1,68),
 (122,15,1,69),
 (123,15,1,70),
 (124,15,1,71),
 (125,15,1,72),
 (126,15,1,73),
 (127,10,2,74),
 (128,12,1,74);
INSERT INTO `price` (`price_id`,`cost`,`size_id`,`item_id`) VALUES 
 (129,12,2,75),
 (130,14,1,75),
 (131,12,2,76),
 (132,14,1,76),
 (133,12,2,77),
 (135,15,1,78),
 (136,12,2,79),
 (137,14,1,79),
 (138,10,2,80),
 (139,12,1,80),
 (140,12,2,81),
 (141,14,1,81),
 (142,14,2,82),
 (143,16,1,82),
 (144,12,2,83),
 (145,14,1,83),
 (146,12,2,84),
 (147,14,1,84),
 (148,13,2,85),
 (149,16,1,85),
 (150,12,2,86),
 (151,16,1,86),
 (152,14,2,87),
 (153,16,1,87),
 (154,12,2,88),
 (155,14,1,88),
 (156,10,2,89),
 (157,12,1,89),
 (158,14,2,90),
 (159,16,1,90),
 (160,15,2,91),
 (161,17,1,91),
 (162,20,1,92),
 (163,20,1,93),
 (164,20,1,94),
 (165,20,1,95),
 (166,20,1,96),
 (167,20,1,97),
 (168,20,1,98),
 (169,20,1,99),
 (170,15,1,100),
 (171,15,1,101),
 (172,15,1,102),
 (173,15,1,103),
 (174,15,1,104),
 (175,18,1,105),
 (176,17,1,106),
 (177,17,1,107),
 (178,15,1,108),
 (179,22,1,109),
 (180,25,1,110),
 (181,5,1,111),
 (182,6,1,112),
 (183,6,1,113),
 (184,2,1,114),
 (185,5,1,115),
 (186,8,1,116),
 (187,8,1,117),
 (188,8,1,118);
INSERT INTO `price` (`price_id`,`cost`,`size_id`,`item_id`) VALUES 
 (189,6,1,119),
 (190,5,1,120),
 (191,7,1,121),
 (192,7,1,122),
 (193,5,1,123),
 (194,5,1,124),
 (195,5,1,125),
 (196,7,1,126),
 (197,10,1,127),
 (198,12,1,128),
 (199,12,1,129),
 (200,12,1,130),
 (201,15,1,131),
 (202,22,1,132),
 (203,14,1,77);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;


--
-- Definition of table `reviewrepo`
--

DROP TABLE IF EXISTS `reviewrepo`;
CREATE TABLE `reviewrepo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `total` double NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviewrepo`
--

/*!40000 ALTER TABLE `reviewrepo` DISABLE KEYS */;
INSERT INTO `reviewrepo` (`id`,`total`,`date`) VALUES 
 (1,12,'project.Data@7faf4810'),
 (2,12,'Fri Jul 10 15:22:04 EET 2020');
/*!40000 ALTER TABLE `reviewrepo` ENABLE KEYS */;


--
-- Definition of table `size`
--

DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size`
--

/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` (`size_id`,`size_name`) VALUES 
 (1,'Large'),
 (2,'Medium');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;


--
-- Definition of table `sold_items`
--

DROP TABLE IF EXISTS `sold_items`;
CREATE TABLE `sold_items` (
  `id` int(11) NOT NULL auto_increment,
  `Item_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Invoice_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sold_items`
--

/*!40000 ALTER TABLE `sold_items` DISABLE KEYS */;
INSERT INTO `sold_items` (`id`,`Item_id`,`size_id`,`Quantity`,`Invoice_id`) VALUES 
 (1,84,2,1,3),
 (2,84,2,1,4),
 (3,84,2,1,5),
 (4,84,2,1,6);
/*!40000 ALTER TABLE `sold_items` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
