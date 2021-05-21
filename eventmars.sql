SET FOREIGN_KEY_CHECKS = 0;
DROP DATABASE IF EXISTS eventmars;
CREATE DATABASE eventmars;
USE eventmars;

SET FOREIGN_KEY_CHECKS = 1;

-- Create Tables
CREATE TABLE `festival` (
                            `id` int  NOT NULL PRIMARY KEY AUTO_INCREMENT,
                            `name` VARCHAR(255),
                            `coordinate_X` smallint,
                            `coordinate_Y` smallint,
                            `city` VARCHAR(10),
                            `date` DATETIME,
                            `description` TEXT,
                            `url` VARCHAR(255)
);

CREATE TABLE `mark` (
                        `id` int  NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        `name` VARCHAR(255),
                        `coordinate_X` smallint,
                        `coordinate_Y` smallint,
                        `description` TEXT,
                        `url` VARCHAR(255),
                        `filter` bool
);

INSERT INTO `mark` (`name`, `description`, `coordinate_X`, `coordinate_Y`, `url`, `filter`) VALUES ("ALBA MONS", "The most vertiginous mountain! Hang on!", "230", "80", "/assets/images/mars1.jpg", 0),
                                                                                                   ("TERRA SIRENUM", "Was there water?", "180","160", "/assets/images/mars2.jpg", 1),
                                                                                                   ("LUNAE PLANUM", "A beautiful non-green plain!", "120","100", "/assets/images/mars3.jpg", 1),
                                                                                                   ("HELLAS PLANITIA", "A beautiful mountain!", "70","10", "/assets/images/mars4.jpeg", 0),
                                                                                                   ("AGYRE PLANITIA", "The lost river?", "300","180", "/assets/images/mars5.JPG", 0),
                                                                                                   ("GUSEY CRATER", "A gigantic hole!", "190","20", "/assets/images/mars6.jpg", 0),
                                                                                                   ("ARCADIA PLANITIA", "The plain of Arcadia.", "50","60", "/assets/images/mars7.jpg", 1),
                                                                                                   ("ELYSIUM MONS", "The mountain that leads to the heavens!", "350","70", "/assets/images/mars8.jpg", 0),
                                                                                                   ("UTOPIA PLANITIA", "Magnificent plain!", "400","120", "/assets/images/mars9.jpg", 1);