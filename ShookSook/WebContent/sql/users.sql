use testdb;

DROP TABLE IF EXISTS `testdb`.`users`;
CREATE TABLE  `testdb`.`users` (
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