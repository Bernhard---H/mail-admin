
create database mailadmin default character set = 'utf8mb4' default collate = 'utf8mb4_unicode_ci';

CREATE USER 'mailadmin'@'%' IDENTIFIED BY 'mailadmin' ;
GRANT ALL ON `mailadmin`.* TO 'mailadmin'@'%';
