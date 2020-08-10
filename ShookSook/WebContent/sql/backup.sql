-- MySQL dump 10.10
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	5.0.27-community-nt

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
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `creator` varchar(45) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(1024) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (2,'Gal Wiernik','Fun Falafel','Good Food','21 Jump St.','Amazing local Falafel, made with a lot of hummus, oil and love.\r\nA visit in the Old City is never complete without stopping by for some Falafel and Fun.\r\nrecommended for everyone!\r\nCome Again, we have fresh falafel all the time :)','http://2.bp.blogspot.com/_kijI9hj5WxM/TD59WBHJkpI/AAAAAAAABzE/05P2Fn_7Fp8/s1600/Kuumba+De+Falafel+Falafel+Zoom.JPG'),(4,'Omri Doron','Vintage Man','Clothing','13 Abbey Road St.','Looking for some traditional middle-eastern clothes? Or maybe just clothes that look like your grandparents would wear? Then you have come to the right place! We have all sorts of clothes- old, new, and just about anything you can imagine: and it is all genuine vintage clothing! Only on 13 Abbey Road St.','http://www.eurocheapo.com/blog/wp-content/uploads/2012/03/Rome-vintage.jpg'),(5,'Daniel Wiernik','Cheese Bar Paris','Food','45 Yaffo St.','The best cheese offered in town.\r\nA unique experience for everyone who loves cheese.\r\nCome and try it!','http://harryscheeseandcoldcuts.com/yahoo_site_admin/assets/images/cheese2.231104333_std.jpg'),(6,'Steve Jobs','Oldies and More','Antiques','4 Santos St.','Lots of antiques of all sorts-\r\nwatches, silverware, furniture and a whole lot more.\r\nCome for fun!','http://4.bp.blogspot.com/-MB7DphrzHcI/TjKUlKPRnJI/AAAAAAAAAGM/2g5tuGtHYAw/s1600/antiques+shop1.JPG'),(9,'Yaakov Yaakov','DVDs By Yaakov','Multimedia','40 Tech St.','I, Yaakov Yaakov, sell a lot of DVDs.\r\nMusic, movies, anything you like. I have original DVDs at very low prices!','http://farm9.staticflickr.com/8333/8124747859_139cc2eb14_o.jpg'),(10,'Michal Wiernik','Mamas Hummus','Food','40 Via Dolorosa ','Tasty hummus.\r\nFresh with lots of lemon, olive oil and love just like at home. Enjoy!','http://cdn1.bostonmagazine.com/wp-content/uploads/2014/01/healthy-hummus-recipes.jpg'),(11,'Roni London','Chocolaterie De Amor','Sweets','31 Milk St.','Looking for a hot cup of chocolate? maybe something fancy or just a bit of sweets?\r\nChocolaterie De Amor has it all?','http://www.lulas.com/images/slides/gift-sets.jpg'),(15,'Steve Jobs','King David Hotel','Hotels','56 David St.','Welcome to the King David Five Star Hotel, where you will find good service all around you.\r\nStay at one of our rooms right here in the Old City.','http://2.bp.blogspot.com/-qw5oOu1slAE/TXO1LFwM52I/AAAAAAAABU4/051AxF_O_8U/s1600/February%2B24th%2BMini%2BIsrael%252C%2BKing%2BDavid%2Bhotel%2Bfront.jpg'),(16,'John Smith','Jewelry Inc.','Jewelry','1 Gold St.','Fine jewelry- rings, necklaces, bracelets and more- all available here.\r\nGold, silver and diamonds all here with traditional designs fitting the local atmosphere.','http://www.marketsofnewyork.com/wp-content/uploads/2013/04/Indian-Jewelry.jpg'),(17,'Gal Wiernik','Shawarma King','Delicious Fast Food','34 High St.','Looking for a quick and delicious yet satisfying meal? Look no further!\r\nShawarma King has the best shawarma you can find anywhere around- not only the most tasty, but also the cheapest!','http://www.crookedbough.com/wp-content/uploads/2014/02/shawarma.jpg');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birth` date NOT NULL,
  `manager` bit(1) NOT NULL default '\0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'GalW','123456','galwiernik@gmail.com','Gal','Wiernik','male','1997-05-09',''),(2,'user','password','user@password.com','John','Smith','male','2000-01-01','\0'),(3,'admin','manager','admin@manager.com','Steve','Jobs','female','2000-01-01',''),(4,'AvivTheBoss','qwerty','aviv@kaplan.com','Aviv','Kaplan','male','1997-01-01','\0'),(5,'Caspi','123454321','omri.d@gmail.com','Omri','Doron','male','2000-11-30',''),(6,'URAQT','yoloswag','roni.roni@royalfamily.co.uk','Roni','London','female','1997-12-09',''),(7,'Edited','success','newmail@gmail.com','NewFName','NewLName','male','2000-01-01','\0'),(8,'Dani','123456','daniwl@wiernik.com','Daniel','Wiernik','male','1963-12-14','\0'),(9,'Muffin','yaakov','yaakov@yaakov.com','Yaakov','Yaakov','male','2000-01-01','\0'),(11,'DeleteMe','123456','delete@me.com','Please','Delete','male','2000-01-01','\0'),(13,'Mama','qwerty','michal@mate.yehuda','Michal','Wiernik','female','1967-10-21','\0'),(14,'xbdwru','qwerty','xbdrwu@gmail.com','Yiftach','Sangero','male','1997-01-01','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-22 17:59:46
