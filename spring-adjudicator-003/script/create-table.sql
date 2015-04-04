DROP DATABASE IF EXISTS spring_test;
CREATE DATABASE spring_test;
CREATE USER 'adminuser'@'mydbinstance.cuxgzk20bbjg.us-west-2.rds.amazonaws.com' IDENTIFIED BY 'adm1nUser';
GRANT ALL ON spring_test.* TO 'adminuser'@'mydbinstance.cuxgzk20bbjg.us-west-2.rds.amazonaws.com';
FLUSH PRIVILEGES;
USE spring_test;


CREATE TABLE `spring_test`.`userdetail` (
  `tempid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tempusername` VARCHAR(15) NOT NULL,
  `temppassword` VARCHAR(40) NOT NULL,
  `tempauthority` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`tempid`));

INSERT INTO `spring_test`.`userdetail` (`tempusername`, `temppassword`, `tempauthority`) VALUES ('admin', 'admin', 'ROLE_ADMIN');
INSERT INTO `spring_test`.`userdetail` (`tempusername`, `temppassword`, `tempauthority`) VALUES ('user', 'user', 'ROLE_USER');
INSERT INTO `spring_test`.`userdetail` (`tempusername`, `temppassword`, `tempauthority`) VALUES ('super', 'super', 'ROLE_SUPER');
INSERT INTO `spring_test`.`userdetail` (`tempusername`, `temppassword`, `tempauthority`) VALUES ('test', 'test', 'ROLE_ADMIN');