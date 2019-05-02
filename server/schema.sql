CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  `id` INTEGER AUTO_INCREMENT NOT NULL,
  `text` MEDIUMTEXT DEFAULT NULL,
  `id_username` INTEGER NULL DEFAULT NULL,
  `id_room` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

/* Create other tables and define schemas for them here! */
DROP TABLE IF EXISTS `username`;
		
CREATE TABLE `username` (
  `id` INTEGER AUTO_INCREMENT NOT NULL,
  `name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `room`;
		
CREATE TABLE `room` (
  `id` INTEGER AUTO_INCREMENT NOT NULL,
  `name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

