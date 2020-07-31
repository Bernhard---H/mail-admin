
create database if not exists mailadmin;

CREATE USER 'mailadmin'@'%' IDENTIFIED BY 'mailadmin' ;
GRANT ALL ON `mailadmin`.* TO 'mailadmin'@'%';
