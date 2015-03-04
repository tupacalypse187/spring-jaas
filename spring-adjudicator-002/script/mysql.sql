
DROP DATABASE IF EXISTS spring-test;
CREATE DATABASE spring-test;
USE spring-test;


CREATE TABLE `spring-test`.`userdetail` (
  `tempid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tempusername` VARCHAR(15) NOT NULL,
  `temppassword` VARCHAR(40) NOT NULL,
  `tempauthority` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`tempid`));

INSERT INTO `spring-test`.`userdetail` (`tempusername`, `temppassword`, `tempauthority`) VALUES ('admin', 'admin', 'ROLE_ADMIN');
INSERT INTO `spring-test`.`userdetail` (`tempusername`, `temppassword`, `tempauthority`) VALUES ('user', 'user', 'ROLE_USER');
INSERT INTO `spring-test`.`userdetail` (`tempusername`, `temppassword`, `tempauthority`) VALUES ('test', 'test', 'ROLE_ADMIN');