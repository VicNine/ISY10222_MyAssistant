--
-- Database: `CP2_myAssitant_db`
-- For CP2 of Ze,Gong,Yuyuan, Mengyuan. This Sql code will be modified by Gong.
--

SET FOREIGN_KEY_CHECKS = 0;
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS  `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(128) NOT NULL DEFAULT 'defaults user',
  `email` varchar(40) NOT NULL,
  `avatarpath` varchar(40) DEFAULT 'photos/default.jpg',
  `password` varchar(10) NOT NULL DEFAULT '',
  `join_date` date NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
--
-- Dumping data for table `user`
--
insert into `user`(`user_id`,`nickname`,`email`,`avatarpath`,`password`,`join_date`) values
('1','Hisai','Gong132@scu.edu.au','','admin','2014-06-21'),
('2','Test','Test@scu.edu.au','','Test','2013-06-21'),
('3','defaults user','viccc.z.wang@gmail.com','photos/default.jpg','123123123','2019-09-12'),
('5','神','123@qq.com','photos/user5.jpg','123','2019-09-12'),
('20','defaults user','12345678@qq.com','photos/default.jpg','Feiyuyuan','2019-09-18'),
('25','defaults user','A3Testing@gmail.com','photos/default.jpg','Testing','2019-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS  `note`;
CREATE TABLE `note` (
  `note_id` int(10) NOT NULL AUTO_INCREMENT,
  `UID` int(10) unsigned NOT NULL,
  `title` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `pages` int(10) NOT NULL DEFAULT '0',
  `content` varchar(500) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`note_id`),
  KEY `UID` (`UID`),
  KEY `title` (`title`) USING BTREE,
  CONSTRAINT `note_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
--
-- Dumping data for table `note`
--

insert into `note`(`note_id`,`UID`,`title`,`author`,`pages`,`content`,`create_date`) values
('1','1','Yowani Haku','Gong','1','Yowane Haku (弱音ハク) is an officially recognized derivative. ... Haku was originally made as a representation of songs that use Hatsune Miku but ended up sounding awful. ... Haku became popular and her creator Caffein later established other characters following the same procedures, each ','2013-06-21'),
('2','1','Miku','Crypton','1','Hatsune Miku is the name of a Vocaloid software voicebank   ','2013-06-21');
SET FOREIGN_KEY_CHECKS = 1;

