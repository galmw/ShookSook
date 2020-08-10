use testdb;

DROP TABLE IF EXISTS `testdb`.`stores`;
CREATE TABLE  `testdb`.`stores` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `creator` varchar(45) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(1024) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;