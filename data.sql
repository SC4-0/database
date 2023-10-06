use order_planning;

insert into customer_site_groups values
(0, 1.31996, 103.712),
(1, 1.35086, 103.838),
(2, 1.35472, 103.933);

insert into factories values
(0, 1.27791, 103.623, 10),
(1, 1.42011, 103.84, 10),
(2, 1.37418, 104.001, 10);

insert into distances values
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(2, 1, 2),
(2, 2, 1),
(2, 3, 2),
(3, 1, 3),
(3, 2, 2),
(3, 3, 1);

insert into customers values
('Benjamin Tan',1),
('Amanda Lim',2),
('Desmond Wong',3),
('Chloe Ng',1),
('Joshua Lee',2),
('Jasmine Teo',3),
('Isaac Goh',1),
('Sophia Lim',2),
('Alexander Tan',3),
('Emily Choo',1),
('Lucas Koh',2),
('Isabella Ng',3),
('Ethan Ng',1),
('Samantha Tan',2),
('Nicholas Lee',3),
('Grace Lim',1),
('Aaron Tan',2),
('Victoria Tan',3),
('Evan Lim',1),
('Alyssa Wong',2),
('Caleb Ong',3),
('Natalie Lim',1),
('Nathan Lim',2),
('Ava Chong',3),
('Ethan Seah',1),
('Hannah Yeo',2),
('Gabriel Tan',3),
('Sarah Ng',1),
('Ryan Tan',2),
('Audrey Lim',3),
('Daniel Ng',1),
('Kayla Tan',2),
('Benjamin Goh',3),
('Ashley Tan',1),
('Matthew Lim',2),
('Isabelle Tan',3),
('Jonathan Lee',1),
('Elyse Lim',2),
('Dylan Tan',3),
('Hannah Goh',1),
('Alexander Goh',2),
('Chloe Lee',3),
('Joshua Lim',1),
('Emma Tan',2),
('Lucas Tan',3),
('Jessica Lim',1),
('Samuel Tan',2),
('Amelia Ng',3),
('Ethan Lim',1),
('Lauren Tan',2),
('Nathan Goh',3),
('Mia Lim',1),
('Ryan Goh',2),
('Grace Tan',3),
('Aaron Lim',1),
('Rachel Ng',2),
('Isaac Tan',3),
('Sophia Goh',1),
('Adam Lim',2),
('Olivia Tan',3),
('Caleb Ng',1),
('Emily Tan',2),
('Lucas Goh',3),
('Charlotte Lim',1),
('Jayden Tan',2),
('Zoey Lim',3),
('Ethan Ong',1),
('Audrey Goh',2),
('Daniel Tan',3),
('Hannah Lim',1),
('Nicholas Tan',2),
('Isabella Tan',3),
('Dylan Goh',1),
('Alyssa Lim',2),
('Benjamin Ong',3),
('Victoria Goh',1),
('Evan Tan',2),
('Natalie Tan',3),
('Nathan Ong',1),
('Ava Lim',2),
('Ryan Lee',3),
('Amelia Tan',1),
('Ethan Lee',2),
('Chloe Ong',3),
('Joshua Tan',1),
('Emma Goh',2),
('Samuel Lim',3),
('Sarah Tan',1),
('Gabriel Goh',2),
('Ashley Goh',3),
('Matthew Tan',1),
('Isabelle Lim',2),
('Jonathan Goh',3),
('Elyse Goh',1),
('Dylan Lee',2),
('Hannah Ong',3),
('Hannah Lim',1),
('Nicholas Tan',2),
('Isabella Tan',3),
('Dylan Goh',1),
('Alyssa Lim',2),
('Benjamin Ong',3),
('Victoria Goh',1),
('Evan Tan',2),
('Natalie Tan',3),
('Nathan Ong',1),
('Ava Lim',2),
('Ryan Lee',3),
('Amelia Tan',1),
('Ethan Lee',2),
('Chloe Ong',3),
('Joshua Tan',1),
('Emma Goh',2),
('Samuel Lim',3),
('Sarah Tan',1),
('Gabriel Goh',2),
('Ashley Goh',3),
('Matthew Tan',1),
('Isabelle Lim',2),
('Jonathan Goh',3),
('Elyse Goh',1),
('Dylan Lee',2),
('Hannah Ong',3),
('Alexander Lee',1),
('Kayla Goh',2),
('Benjamin Lee',3),
('Olivia Goh',1),
('Caleb Tan',2),
('Emily Goh',3),
('Lucas Lee',1),
('Jessica Goh',2),
('Samuel Goh',3),
('Amelia Lee',1),
('Ethan Goh',2),
('Lauren Goh',3),
('Nathan Lee',1),
('Mia Goh',2),
('Ryan Lee',3),
('Grace Goh',1),
('Aaron Lee',2),
('Rachel Goh',3),
('Isaac Lee',1),
('Sophia Lee',2),
('Adam Goh',3),
('Charlotte Goh',1),
('Jayden Goh',2),
('Zoey Goh',3),
('Ethan Lee',1),
('Audrey Lee',2),
('Daniel Goh',3),
('Hannah Lee',1),
('Nicholas Goh',2),
('Isabella Lee',3),
('Dylan Lee',1),
('Alyssa Lee',2),
('Benjamin Lee',3),
('Victoria Lee',1),
('Evan Lee',2),
('Natalie Goh',3),
('Nathan Lee',1),
('Ava Lee',2),
('Ryan Lee',3),
('Amelia Lee',1),
('Ethan Lee',2),
('Chloe Lee',3),
('Joshua Lee',1),
('Emma Lee',2),
('Samuel Lee',3),
('Sarah Lee',1),
('Gabriel Lee',2),
('Ashley Lee',3),
('Matthew Lee',1),
('Isabelle Lee',2),
('Jonathan Lee',3),
('Elyse Lee',1),
('Dylan Lee',2),
('Hannah Lee',3);

insert into products values
('Product A', 'A small, highly valuable and sought after object.', 100),
('Product B', 'A worthless, next to useless object.', 1);

insert into orders values
(1,'2023-09-01T12:00:00',NULL,NULL,NULL,1),
(2,'2023-09-01T12:00:00',NULL,NULL,NULL,2),
(3,'2023-09-01T12:00:00',NULL,NULL,NULL,3),
(4,'2023-09-02T12:00:00',NULL,NULL,NULL,1),
(5,'2023-09-02T12:00:00',NULL,NULL,NULL,1),
(6,'2023-09-02T12:00:00',NULL,NULL,NULL,3),
(7,'2023-09-03T12:00:00',NULL,NULL,NULL,1),
(8,'2023-09-03T12:00:00',NULL,NULL,NULL,2),
(9,'2023-09-03T12:00:00',NULL,NULL,NULL,3),
(10,'2023-09-04T12:00:00',NULL,NULL,NULL,1),
(11,'2023-09-04T12:00:00',NULL,NULL,NULL,2),
(12,'2023-09-04T12:00:00',NULL,NULL,NULL,3),
(13,'2023-09-05T12:00:00',NULL,NULL,NULL,1),
(14,'2023-09-05T12:00:00',NULL,NULL,NULL,2),
(15,'2023-09-05T12:00:00',NULL,NULL,NULL,3),
(16,'2023-09-06T12:00:00',NULL,NULL,NULL,1),
(17,'2023-09-06T12:00:00',NULL,NULL,NULL,2),
(18,'2023-09-06T12:00:00',NULL,NULL,NULL,3),
(19,'2023-09-07T12:00:00',NULL,NULL,NULL,1),
(20,'2023-09-07T12:00:00',NULL,NULL,NULL,2),
(21,'2023-09-07T12:00:00',NULL,NULL,NULL,3),
(22,'2023-09-08T12:00:00',NULL,NULL,NULL,1),
(23,'2023-09-08T12:00:00',NULL,NULL,NULL,2),
(24,'2023-09-08T12:00:00',NULL,NULL,NULL,3),
(25,'2023-09-09T12:00:00',NULL,NULL,NULL,1),
(26,'2023-09-09T12:00:00',NULL,NULL,NULL,2),
(27,'2023-09-09T12:00:00',NULL,NULL,NULL,3),
(28,'2023-09-10T12:00:00',NULL,NULL,NULL,1),
(29,'2023-09-10T12:00:00',NULL,NULL,NULL,2),
(30,'2023-09-10T12:00:00',NULL,NULL,NULL,3),
(31,'2023-09-11T12:00:00',NULL,NULL,NULL,1),
(32,'2023-09-11T12:00:00',NULL,NULL,NULL,2),
(33,'2023-09-11T12:00:00',NULL,NULL,NULL,3),
(34,'2023-09-12T12:00:00',NULL,NULL,NULL,1),
(35,'2023-09-12T12:00:00',NULL,NULL,NULL,2),
(36,'2023-09-12T12:00:00',NULL,NULL,NULL,3),
(37,'2023-09-13T12:00:00',NULL,NULL,NULL,1),
(38,'2023-09-13T12:00:00',NULL,NULL,NULL,2),
(39,'2023-09-13T12:00:00',NULL,NULL,NULL,3),
(40,'2023-09-14T12:00:00',NULL,NULL,NULL,1),
(41,'2023-09-14T12:00:00',NULL,NULL,NULL,2),
(42,'2023-09-14T12:00:00',NULL,NULL,NULL,3),
(43,'2023-09-15T12:00:00',NULL,NULL,NULL,1),
(44,'2023-09-15T12:00:00',NULL,NULL,NULL,2),
(45,'2023-09-15T12:00:00',NULL,NULL,NULL,3),
(46,'2023-09-16T12:00:00',NULL,NULL,NULL,1),
(47,'2023-09-16T12:00:00',NULL,NULL,NULL,2),
(48,'2023-09-16T12:00:00',NULL,NULL,NULL,3),
(49,'2023-09-17T12:00:00',NULL,NULL,NULL,1),
(50,'2023-09-17T12:00:00',NULL,NULL,NULL,2),
(51,'2023-09-17T12:00:00',NULL,NULL,NULL,3),
(52,'2023-09-18T12:00:00',NULL,NULL,NULL,1),
(53,'2023-09-18T12:00:00',NULL,NULL,NULL,2),
(54,'2023-09-18T12:00:00',NULL,NULL,NULL,3),
(55,'2023-09-19T12:00:00',NULL,NULL,NULL,1),
(56,'2023-09-19T12:00:00',NULL,NULL,NULL,2),
(57,'2023-09-19T12:00:00',NULL,NULL,NULL,3),
(58,'2023-09-20T12:00:00',NULL,NULL,NULL,1),
(59,'2023-09-20T12:00:00',NULL,NULL,NULL,2),
(60,'2023-09-20T12:00:00',NULL,NULL,NULL,3),
(61,'2023-09-21T12:00:00',NULL,NULL,NULL,1),
(62,'2023-09-21T12:00:00',NULL,NULL,NULL,1),
(63,'2023-09-21T12:00:00',NULL,NULL,NULL,3),
(64,'2023-09-22T12:00:00',NULL,NULL,NULL,1),
(65,'2023-09-22T12:00:00',NULL,NULL,NULL,2),
(66,'2023-09-22T12:00:00',NULL,NULL,NULL,3),
(67,'2023-09-23T12:00:00',NULL,NULL,NULL,1),
(68,'2023-09-23T12:00:00',NULL,NULL,NULL,2),
(69,'2023-09-23T12:00:00',NULL,NULL,NULL,3),
(70,'2023-09-24T12:00:00',NULL,NULL,NULL,1),
(71,'2023-09-24T12:00:00',NULL,NULL,NULL,2),
(72,'2023-09-24T12:00:00',NULL,NULL,NULL,3),
(73,'2023-09-25T12:00:00',NULL,NULL,NULL,1),
(74,'2023-09-25T12:00:00',NULL,NULL,NULL,2),
(75,'2023-09-25T12:00:00',NULL,NULL,NULL,3),
(76,'2023-09-26T12:00:00',NULL,NULL,NULL,1),
(77,'2023-09-26T12:00:00',NULL,NULL,NULL,2),
(78,'2023-09-26T12:00:00',NULL,NULL,NULL,3),
(79,'2023-09-27T12:00:00',NULL,NULL,NULL,1),
(80,'2023-09-27T12:00:00',NULL,NULL,NULL,2),
(81,'2023-09-27T12:00:00',NULL,NULL,NULL,3),
(82,'2023-09-28T12:00:00',NULL,NULL,NULL,1),
(83,'2023-09-28T12:00:00',NULL,NULL,NULL,2),
(84,'2023-09-28T12:00:00',NULL,NULL,NULL,3),
(85,'2023-09-29T12:00:00',NULL,NULL,NULL,1),
(86,'2023-09-29T12:00:00',NULL,NULL,NULL,2),
(87,'2023-09-29T12:00:00',NULL,NULL,NULL,3),
(88,'2023-09-30T12:00:00',NULL,NULL,NULL,1),
(89,'2023-09-30T12:00:00',NULL,NULL,NULL,2),
(90,'2023-09-30T12:00:00',NULL,NULL,NULL,3),
(91,'2023-10-01T12:00:00',NULL,NULL,NULL,1),
(92,'2023-10-01T12:00:00',NULL,NULL,NULL,2),
(93,'2023-10-01T12:00:00',NULL,NULL,NULL,3),
(94,'2023-10-02T12:00:00',NULL,NULL,NULL,1),
(95,'2023-10-02T12:00:00',NULL,NULL,NULL,2),
(96,'2023-10-02T12:00:00',NULL,NULL,NULL,3),
(97,'2023-10-03T12:00:00',NULL,NULL,NULL,1),
(98,'2023-10-03T12:00:00',NULL,NULL,NULL,2),
(99,'2023-10-03T12:00:00',NULL,NULL,NULL,3),
(100,'2023-10-04T12:00:00',NULL,NULL,NULL,1),
(101,'2023-10-04T12:00:00',NULL,NULL,NULL,3),
(102,'2023-10-04T12:00:00',NULL,NULL,NULL,3),
(103,'2023-10-05T12:00:00',NULL,NULL,NULL,1),
(104,'2023-10-05T12:00:00',NULL,NULL,NULL,2),
(105,'2023-10-05T12:00:00',NULL,NULL,NULL,3),
(106,'2023-10-06T12:00:00',NULL,NULL,NULL,1),
(107,'2023-10-06T12:00:00',NULL,NULL,NULL,2),
(108,'2023-10-06T12:00:00',NULL,NULL,NULL,2),
(109,'2023-10-07T12:00:00',NULL,NULL,NULL,1),
(110,'2023-10-07T12:00:00',NULL,NULL,NULL,2),
(111,'2023-10-07T12:00:00',NULL,NULL,NULL,2),
(112,'2023-10-08T12:00:00',NULL,NULL,NULL,1),
(113,'2023-10-08T12:00:00',NULL,NULL,NULL,1),
(114,'2023-10-08T12:00:00',NULL,NULL,NULL,3),
(115,'2023-10-09T12:00:00',NULL,NULL,NULL,1),
(116,'2023-10-09T12:00:00',NULL,NULL,NULL,1),
(117,'2023-10-09T12:00:00',NULL,NULL,NULL,2),
(118,'2023-10-10T12:00:00',NULL,NULL,NULL,1),
(119,'2023-10-10T12:00:00',NULL,NULL,NULL,2),
(120,'2023-10-10T12:00:00',NULL,NULL,NULL,2),
(121,'2023-10-11T12:00:00',NULL,NULL,NULL,1),
(122,'2023-10-11T12:00:00',NULL,NULL,NULL,3),
(123,'2023-10-11T12:00:00',NULL,NULL,NULL,3),
(124,'2023-10-12T12:00:00',NULL,NULL,NULL,1),
(125,'2023-10-12T12:00:00',NULL,NULL,NULL,2),
(126,'2023-10-12T12:00:00',NULL,NULL,NULL,3),
(127,'2023-10-13T12:00:00',NULL,NULL,NULL,1),
(128,'2023-10-13T12:00:00',NULL,NULL,NULL,2),
(129,'2023-10-13T12:00:00',NULL,NULL,NULL,3),
(130,'2023-10-14T12:00:00',NULL,NULL,NULL,1),
(131,'2023-10-14T12:00:00',NULL,NULL,NULL,2),
(132,'2023-10-14T12:00:00',NULL,NULL,NULL,3),
(133,'2023-10-15T12:00:00',NULL,NULL,NULL,1),
(134,'2023-10-15T12:00:00',NULL,NULL,NULL,2),
(135,'2023-10-15T12:00:00',NULL,NULL,NULL,3),
(136,'2023-10-16T12:00:00',NULL,NULL,NULL,1),
(137,'2023-10-16T12:00:00',NULL,NULL,NULL,2),
(138,'2023-10-16T12:00:00',NULL,NULL,NULL,3),
(139,'2023-10-17T12:00:00',NULL,NULL,NULL,1),
(140,'2023-10-17T12:00:00',NULL,NULL,NULL,2),
(141,'2023-10-17T12:00:00',NULL,NULL,NULL,3),
(142,'2023-10-18T12:00:00',NULL,NULL,NULL,3),
(143,'2023-10-18T12:00:00',NULL,NULL,NULL,1),
(144,'2023-10-18T12:00:00',NULL,NULL,NULL,3),
(145,'2023-10-19T12:00:00',NULL,NULL,NULL,1),
(146,'2023-10-19T12:00:00',NULL,NULL,NULL,1),
(147,'2023-10-19T12:00:00',NULL,NULL,NULL,3),
(148,'2023-10-20T12:00:00',NULL,NULL,NULL,3),
(149,'2023-10-20T12:00:00',NULL,NULL,NULL,1),
(150,'2023-10-20T12:00:00',NULL,NULL,NULL,3),
(151,'2023-10-21T12:00:00',NULL,NULL,NULL,1),
(152,'2023-10-21T12:00:00',NULL,NULL,NULL,2),
(153,'2023-10-21T12:00:00',NULL,NULL,NULL,3),
(154,'2023-10-22T12:00:00',NULL,NULL,NULL,1),
(155,'2023-10-22T12:00:00',NULL,NULL,NULL,2),
(156,'2023-10-22T12:00:00',NULL,NULL,NULL,3),
(157,'2023-10-23T12:00:00',NULL,NULL,NULL,1),
(158,'2023-10-23T12:00:00',NULL,NULL,NULL,2),
(159,'2023-10-23T12:00:00',NULL,NULL,NULL,3),
(160,'2023-10-24T12:00:00',NULL,NULL,NULL,1),
(161,'2023-10-24T12:00:00',NULL,NULL,NULL,2),
(162,'2023-10-24T12:00:00',NULL,NULL,NULL,3),
(163,'2023-10-25T12:00:00',NULL,NULL,NULL,1),
(164,'2023-10-25T12:00:00',NULL,NULL,NULL,2),
(165,'2023-10-25T12:00:00',NULL,NULL,NULL,3),
(166,'2023-10-26T12:00:00',NULL,NULL,NULL,1),
(167,'2023-10-26T12:00:00',NULL,NULL,NULL,1),
(168,'2023-10-26T12:00:00',NULL,NULL,NULL,2),
(169,'2023-10-27T12:00:00',NULL,NULL,NULL,3),
(170,'2023-10-27T12:00:00',NULL,NULL,NULL,2),
(171,'2023-10-27T12:00:00',NULL,NULL,NULL,3),
(172,'2023-10-28T12:00:00',NULL,NULL,NULL,1),
(173,'2023-10-28T12:00:00',NULL,NULL,NULL,2),
(174,'2023-10-28T12:00:00',NULL,NULL,NULL,2),
(175,'2023-10-29T12:00:00',NULL,NULL,NULL,1),
(176,'2023-10-29T12:00:00',NULL,NULL,NULL,2),
(177,'2023-10-29T12:00:00',NULL,NULL,NULL,3);

insert into order_items values
(1,1,76),
(2,1,22),
(3,1,27),
(4,1,64),
(5,1,9),
(6,1,37),
(7,1,66),
(8,1,18),
(9,1,31),
(10,1,18),
(11,1,20),
(12,1,28),
(13,1,40),
(14,1,23),
(15,1,29),
(16,1,70),
(17,1,26),
(18,1,21),
(19,1,77),
(20,1,19),
(21,1,31),
(22,1,42),
(23,1,26),
(24,1,35),
(25,1,69),
(26,1,14),
(27,1,18),
(28,1,67),
(29,1,17),
(30,1,19),
(31,1,66),
(32,1,17),
(33,1,37),
(34,1,51),
(35,1,20),
(36,1,36),
(37,1,46),
(38,1,22),
(39,1,26),
(40,1,45),
(41,1,21),
(42,1,39),
(43,1,37),
(44,1,25),
(45,1,35),
(46,1,64),
(47,1,16),
(48,1,22),
(49,1,59),
(50,1,28),
(51,1,34),
(52,1,88),
(53,1,21),
(54,1,35),
(55,1,79),
(56,1,23),
(57,1,28),
(58,1,67),
(59,1,14),
(60,1,33),
(61,1,57),
(62,1,20),
(63,1,32),
(64,1,3),
(65,1,19),
(66,1,27),
(67,1,80),
(68,1,17),
(69,1,40),
(70,1,84),
(71,1,18),
(72,1,29),
(73,1,56),
(74,1,16),
(75,1,19),
(76,1,58),
(77,1,18),
(78,1,29),
(79,1,58),
(80,1,19),
(81,1,39),
(82,1,88),
(83,1,22),
(84,1,24),
(85,1,62),
(86,1,23),
(87,1,29),
(88,1,23),
(89,1,22),
(90,1,42),
(91,1,44),
(92,1,20),
(93,1,30),
(94,1,40),
(95,1,24),
(96,1,23),
(97,1,84),
(98,1,18),
(99,1,29),
(100,1,56),
(101,1,16),
(102,1,19),
(103,1,58),
(104,1,18),
(105,1,29),
(106,1,58),
(107,1,19),
(108,1,39),
(109,1,88),
(110,1,22),
(111,1,24),
(112,1,62),
(113,1,23),
(114,1,29),
(115,1,23),
(116,1,22),
(117,1,42),
(118,1,44),
(119,1,20),
(120,1,30),
(121,1,40),
(122,1,24),
(123,1,23),
(124,1,77),
(125,1,21),
(126,1,21),
(127,1,97),
(128,1,23),
(129,1,27),
(130,1,43),
(131,1,18),
(132,1,35),
(133,1,31),
(134,1,26),
(135,1,32),
(136,1,69),
(137,1,18),
(138,1,35),
(139,1,32),
(140,1,25),
(141,1,41),
(142,1,66),
(143,1,16),
(144,1,32),
(145,1,40),
(146,1,12),
(147,1,31),
(148,1,54),
(149,1,24),
(150,1,32),
(151,1,66),
(152,1,19),
(153,1,33),
(154,1,49),
(155,1,14),
(156,1,23),
(157,1,88),
(158,1,14),
(159,1,24),
(160,1,72),
(161,1,13),
(162,1,30),
(163,1,71),
(164,1,13),
(165,1,34),
(166,1,68),
(167,1,16),
(168,1,41),
(169,1,84),
(170,1,22),
(171,1,23),
(172,1,82),
(173,1,16),
(174,1,36),
(175,1,84),
(176,1,23),
(177,1,34),
(1,2,42),
(2,2,34),
(3,2,11),
(4,2,40),
(5,2,45),
(6,2,11),
(7,2,32),
(8,2,40),
(9,2,12),
(10,2,41),
(11,2,43),
(12,2,10),
(13,2,47),
(14,2,42),
(15,2,9),
(16,2,39),
(17,2,45),
(18,2,9),
(19,2,42),
(20,2,39),
(21,2,9),
(22,2,37),
(23,2,47),
(24,2,9),
(25,2,45),
(26,2,45),
(27,2,11),
(28,2,43),
(29,2,39),
(30,2,9),
(31,2,43),
(32,2,30),
(33,2,10),
(34,2,39),
(35,2,38),
(36,2,9),
(37,2,41),
(38,2,42),
(39,2,8),
(40,2,45),
(41,2,39),
(42,2,11),
(43,2,41),
(44,2,36),
(45,2,11),
(46,2,40),
(47,2,42),
(48,2,8),
(49,2,40),
(50,2,37),
(51,2,10),
(52,2,30),
(53,2,46),
(54,2,11),
(55,2,47),
(56,2,38),
(57,2,10),
(58,2,39),
(59,2,45),
(60,2,11),
(61,2,44),
(62,2,40),
(63,2,9),
(64,2,34),
(65,2,34),
(66,2,12),
(67,2,46),
(68,2,38),
(69,2,9),
(70,2,41),
(71,2,38),
(72,2,10),
(73,2,42),
(74,2,43),
(75,2,10),
(76,2,42),
(77,2,33),
(78,2,9),
(79,2,38),
(80,2,43),
(81,2,10),
(82,2,46),
(83,2,40),
(84,2,11),
(85,2,48),
(86,2,36),
(87,2,10),
(88,2,38),
(89,2,41),
(90,2,9),
(91,2,40),
(92,2,38),
(93,2,10),
(94,2,42),
(95,2,42),
(96,2,10),
(97,2,41),
(98,2,38),
(99,2,10),
(100,2,42),
(101,2,43),
(102,2,10),
(103,2,42),
(104,2,33),
(105,2,9),
(106,2,38),
(107,2,43),
(108,2,10),
(109,2,46),
(110,2,40),
(111,2,11),
(112,2,48),
(113,2,36),
(114,2,10),
(115,2,38),
(116,2,41),
(117,2,9),
(118,2,40),
(119,2,38),
(120,2,10),
(121,2,42),
(122,2,42),
(123,2,10),
(124,2,45),
(125,2,40),
(126,2,10),
(127,2,35),
(128,2,39),
(129,2,10),
(130,2,40),
(131,2,36),
(132,2,10),
(133,2,44),
(134,2,44),
(135,2,10),
(136,2,37),
(137,2,41),
(138,2,9),
(139,2,37),
(140,2,40),
(141,2,10),
(142,2,44),
(143,2,38),
(144,2,9),
(145,2,40),
(146,2,42),
(147,2,10),
(148,2,34),
(149,2,37),
(150,2,9),
(151,2,39),
(152,2,36),
(153,2,11),
(154,2,43),
(155,2,37),
(156,2,11),
(157,2,40),
(158,2,36),
(159,2,11),
(160,2,39),
(161,2,45),
(162,2,10),
(163,2,36),
(164,2,41),
(165,2,10),
(166,2,34),
(167,2,40),
(168,2,10),
(169,2,37),
(170,2,41),
(171,2,10),
(172,2,40),
(173,2,41),
(174,2,10),
(175,2,39),
(176,2,46),
(177,2,10);

insert into factory_production values
(1,1,15.6),
(1,2,10.4),
(2,1,5.2),
(2,2,10.4),
(3,1,15.6),
(3,2,5.2);

insert into plans values
(2.51886264,0.162640337,'2023-09-01T12:00:00',1,0,0,0,NULL),
(2.53267086,0.160721184,'2023-09-01T12:00:00',1,0.05263158,0,0,NULL),
(2.63182581,0.140431455,'2023-09-01T12:00:00',1,0.10526316,0,0,NULL),
(2.68504322,0.125603511,'2023-09-01T12:00:00',1,0.15789474,0,0,NULL),
(2.6912869,0.120743425,'2023-09-01T12:00:00',1,0.21052632,1,1,'2023-09-01T12:00:00'),
(2.73075528,0.106614745,'2023-09-01T12:00:00',2,0.26315789,0,0,NULL),
(2.77307674,0.097484538,'2023-09-01T12:00:00',2,0.31578947,0,0,NULL),
(2.82045738,0.093647033,'2023-09-01T12:00:00',2,0.36842105,0,0,NULL),
(2.89561998,0.085337597,'2023-09-01T12:00:00',2,0.42105263,0,0,NULL),
(2.95075205,0.078229136,'2023-09-01T12:00:00',2,0.47368421,0,0,NULL),
(3.07945644,0.069588996,'2023-09-01T12:00:00',3,0.52631579,0,0,NULL),
(3.10675229,0.049443012,'2023-09-01T12:00:00',3,0.57894737,0,0,NULL),
(3.2165265,0.041139478,'2023-09-01T12:00:00',3,0.63157895,0,0,NULL),
(3.22664484,0.031287529,'2023-09-01T12:00:00',3,0.68421053,0,0,NULL),
(3.32697901,0.030907824,'2023-09-01T12:00:00',3,0.73684211,1,1,'2023-10-02T12:00:00'),
(3.35685407,0.013858795,'2023-09-01T12:00:00',4,0.78947368,0,0,NULL),
(3.40406243,0.003255796,'2023-09-01T12:00:00',4,0.84210526,0,0,NULL),
(3.49230943,0.00093684,'2023-09-01T12:00:00',4,0.89473684,0,0,NULL),
(3.97285116,6.35E-05,'2023-09-01T12:00:00',4,0.94736842,0,0,NULL),
(4.00149317,0,'2023-09-01T12:00:00',4,1,0,0,NULL);

insert into planned_factory_targets values
(1,1,2.80204394,0.079853327,'2023-09-01T16:00:00',0.646895875),
(1,2,2.80630843,0.079355964,'2023-09-01T16:00:00',0.647654355),
(1,3,2.61128392,0.108240571,'2023-09-01T16:00:00',0.653886957),
(1,4,2.3205529,0.172720757,'2023-09-01T16:00:00',0.479523425),
(1,5,2.83125273,0.056015272,'2023-09-01T16:00:00',0.742271913),
(1,6,2.70998782,0.077987656,'2023-09-01T16:00:00',0.716266404),
(1,7,2.63642982,0.091454553,'2023-09-01T16:00:00',0.690522267),
(1,8,2.71525656,0.08177585,'2023-09-01T16:00:00',0.704476234),
(1,9,2.6889383,0.091319841,'2023-09-01T16:00:00',0.686448417),
(1,10,2.70774737,0.088654982,'2023-09-01T16:00:00',0.685966493),
(1,11,2.77298617,0.097128512,'2023-09-01T16:00:00',0.604250603),
(1,12,2.92797338,0.049968258,'2023-09-01T16:00:00',0.732457274),
(1,13,3.1053637,0.024416816,'2023-09-01T16:00:00',0.784288892),
(1,14,3.0297059,0.041717606,'2023-09-01T16:00:00',0.738364636),
(1,15,3.19584189,0.015969322,'2023-09-01T16:00:00',0.81782308),
(1,16,3.38758262,5.67E-05,'2023-09-01T16:00:00',0.986564747),
(1,17,3.18910819,0.000108364,'2023-09-01T16:00:00',0.980004611),
(1,18,3.24387792,2.14E-05,'2023-09-01T16:00:00',0.99074035),
(1,19,3.56276195,3.56E-05,'2023-09-01T16:00:00',0.987116601),
(1,20,3.60153552,0,'2023-09-01T16:00:00',0.985615194),
(2,1,2.0125,0.233026228,'2023-09-01T16:00:00',0.511803472),
(2,2,2.05661765,0.227741301,'2023-09-01T16:00:00',0.515333502),
(2,3,2.58071049,0.145764195,'2023-09-01T16:00:00',0.622427981),
(2,4,3.01609275,0.03344806,'2023-09-01T16:00:00',0.793438926),
(2,5,2.6417186,0.13518377,'2023-09-01T16:00:00',0.605076259),
(2,6,2.91015028,0.077254551,'2023-09-01T16:00:00',0.71407566),
(2,7,3.04788208,0.031300397,'2023-09-01T16:00:00',0.775558503),
(2,8,2.9362593,0.074506046,'2023-09-01T16:00:00',0.71779303),
(2,9,3.30751867,0.021148137,'2023-09-01T16:00:00',0.788789345),
(2,10,3.35338066,0.0156698,'2023-09-01T16:00:00',0.792163814),
(2,11,3.60006005,4.98E-18,'2023-09-01T16:00:00',0.99529721),
(2,12,3.36304579,0.005122364,'2023-09-01T16:00:00',0.897011284),
(2,13,3.62386768,0.005245465,'2023-09-01T16:00:00',0.89366043),
(2,14,3.38539762,0.003621854,'2023-09-01T16:00:00',0.909308027),
(2,15,3.67635643,0.003657739,'2023-09-01T16:00:00',0.918792121),
(2,16,3.23971891,0.022012371,'2023-09-01T16:00:00',0.801203009),
(2,17,3.25923994,0.011156872,'2023-09-01T16:00:00',0.881612382),
(2,18,3.5920645,0.00288429,'2023-09-01T16:00:00',0.904449542),
(2,19,4.5965727,0.000174825,'2023-09-01T16:00:00',0.971017899),
(2,20,4.77317541,0,'2023-09-01T16:00:00',1),
(3,1,2.58907529,0.209679002,'2023-09-01T16:00:00',0.565317755),
(3,2,2.58907529,0.209679002,'2023-09-01T16:00:00',0.566865073),
(3,3,2.65906605,0.194381394,'2023-09-01T16:00:00',0.653904769),
(3,4,2.7404383,0.172466044,'2023-09-01T16:00:00',0.666299606),
(3,5,2.56805556,0.206837607,'2023-09-01T16:00:00',0.694233332),
(3,6,2.53976608,0.215192308,'2023-09-01T16:00:00',0.685378067),
(3,7,2.64686489,0.202166413,'2023-09-01T16:00:00',0.474828719),
(3,8,2.78584473,0.157760989,'2023-09-01T16:00:00',0.727253673),
(3,9,2.64442945,0.195105057,'2023-09-01T16:00:00',0.69827646),
(3,10,2.72525637,0.1832192,'2023-09-01T16:00:00',0.692823207),
(3,11,2.973367,0.128649522,'2023-09-01T16:00:00',0.733113934),
(3,12,3.08812704,0.09971114,'2023-09-01T16:00:00',0.715948914),
(3,13,3.0175888,0.113582416,'2023-09-01T16:00:00',0.689800946),
(3,14,3.30001002,0.050769186,'2023-09-01T16:00:00',0.765289501),
(3,15,3.19387629,0.090580669,'2023-09-01T16:00:00',0.700181916),
(3,16,3.41638282,0.019379939,'2023-09-01T16:00:00',0.813931418),
(3,17,3.65930906,0.00014326,'2023-09-01T16:00:00',0.987053651),
(3,18,3.63318646,0.000226189,'2023-09-01T16:00:00',0.978644416),
(3,19,4.14462119,0,'2023-09-01T16:00:00',0.994362507),
(3,20,4.10046103,0,'2023-09-01T16:00:00',1);

insert into planned_allocations values
(1,1,1,0,0.988338194),
(2,1,1,0,0.987716585),
(3,1,1,0,0.949858444),
(4,1,1,0,0.937855473),
(5,1,1,0,0.955056272),
(6,1,1,0,0.953938368),
(7,1,1,0,0.946315431),
(8,1,1,0,0.953688243),
(9,1,1,0,0.935777184),
(10,1,1,0,0.924807874),
(11,1,1,0,0.949379053),
(12,1,1,0,0.855570695),
(13,1,1,0,0.937706704),
(14,1,1,0,0.869341797),
(15,1,1,0,0.938800396),
(16,1,1,0,0.90366297),
(17,1,1,0,0.999843271),
(18,1,1,0,0.974083124),
(19,1,1,0,0.934690046),
(20,1,1,0,0.935932284),
(1,2,1,0.988338194,0.992762951),
(2,2,1,0.987716585,0.992303394),
(3,2,1,0.949858444,0.984451062),
(4,2,1,0.937855473,0.952812513),
(5,2,1,0.955056272,1),
(6,2,1,0.953938368,1),
(7,2,1,0.946315431,0.961537772),
(8,2,1,0.953688243,0.999880314),
(9,2,1,0.935777184,0.988834507),
(10,2,1,0.924807874,0.977536304),
(11,2,1,0.949379053,0.983172095),
(12,2,1,0.855570695,0.878321188),
(13,2,1,0.937706704,0.95604125),
(14,2,1,0.869341797,0.890168525),
(15,2,1,0.938800396,0.957529236),
(16,2,1,0.90366297,0.94972319),
(17,2,1,0.999843271,0.999843271),
(18,2,1,0.974083124,0.997990087),
(19,2,1,0.934690046,0.991593144),
(20,2,1,0.935932284,0.998915089),
(1,3,1,0.992762951,1),
(2,3,1,0.992303394,1),
(3,3,1,0.984451062,1),
(4,3,1,0.952812513,1),
(5,3,1,1,1),
(6,3,1,1,1),
(7,3,1,0.961537772,1),
(8,3,1,0.999880314,1),
(9,3,1,0.988834507,1),
(10,3,1,0.977536304,1),
(11,3,1,0.983172095,1),
(12,3,1,0.878321188,1),
(13,3,1,0.95604125,1),
(14,3,1,0.890168525,1),
(15,3,1,0.957529236,1),
(16,3,1,0.94972319,1),
(17,3,1,0.999843271,1),
(18,3,1,0.997990087,1),
(19,3,1,0.991593144,1),
(20,3,1,0.998915089,1),
(1,1,2,0,0.158846685),
(2,1,2,0,0.15901421),
(3,1,2,0,0.046156622),
(4,1,2,0,0.092824497),
(5,1,2,0,0.042543865),
(6,1,2,0,0.038818992),
(7,1,2,0,0.070888687),
(8,1,2,0,0.025447543),
(9,1,2,0,0.019568653),
(10,1,2,0,0.025421953),
(11,1,2,0,0.141052047),
(12,1,2,0,0.200228242),
(13,1,2,0,0.208374102),
(14,1,2,0,0.20601083),
(15,1,2,0,0.226743328),
(16,1,2,0,0),
(17,1,2,0,0),
(18,1,2,0,0.005443132),
(19,1,2,0,0.404944586),
(20,1,2,0,0.417393524),
(1,2,2,0.158846685,1),
(2,2,2,0.15901421,1),
(3,2,2,0.046156622,0.989226304),
(4,2,2,0.092824497,1),
(5,2,2,0.042543865,1),
(6,2,2,0.038818992,1),
(7,2,2,0.070888687,1),
(8,2,2,0.025447543,0.999997694),
(9,2,2,0.019568653,0.999698336),
(10,2,2,0.025421953,0.999702392),
(11,2,2,0.141052047,1),
(12,2,2,0.200228242,1),
(13,2,2,0.208374102,0.898058556),
(14,2,2,0.20601083,1),
(15,2,2,0.226743328,0.862384365),
(16,2,2,0,0.772051909),
(17,2,2,0,0.703528754),
(18,2,2,0.005443132,0.680565976),
(19,2,2,0.404944586,0.686684652),
(20,2,2,0.417393524,0.686661797),
(1,3,2,1,1),
(2,3,2,1,1),
(3,3,2,0.989226304,1),
(4,3,2,1,1),
(5,3,2,1,1),
(6,3,2,1,1),
(7,3,2,1,1),
(8,3,2,0.999997694,1),
(9,3,2,0.999698336,1),
(10,3,2,0.999702392,1),
(11,3,2,1,1),
(12,3,2,1,1),
(13,3,2,0.898058556,1),
(14,3,2,1,1),
(15,3,2,0.862384365,1),
(16,3,2,0.772051909,1),
(17,3,2,0.703528754,1),
(18,3,2,0.680565976,1),
(19,3,2,0.686684652,1),
(20,3,2,0.686661797,1),
(1,1,3,0,0.07332378),
(2,1,3,0,0.073270151),
(3,1,3,0,0.072951922),
(4,1,3,0,0.011548141),
(5,1,3,0,0.034535346),
(6,1,3,0,0.036044422),
(7,1,3,0,0.011817218),
(8,1,3,0,0.049265188),
(9,1,3,0,0.054534672),
(10,1,3,0,0.051505663),
(11,1,3,0,0.091847415),
(12,1,3,0,0.015322837),
(13,1,3,0,0.022314284),
(14,1,3,0,0.010887721),
(15,1,3,0,0.020903211),
(16,1,3,0,0.02174349),
(17,1,3,0,0.01265026),
(18,1,3,0,0.010451228),
(19,1,3,0,0),
(20,1,3,0,0),
(1,2,3,0.07332378,0.076993581),
(2,2,3,0.073270151,0.077042015),
(3,2,3,0.072951922,0.079767581),
(4,2,3,0.011548141,0.011548141),
(5,2,3,0.034535346,0.034535346),
(6,2,3,0.036044422,0.036044422),
(7,2,3,0.011817218,0.011817218),
(8,2,3,0.049265188,0.049265188),
(9,2,3,0.054534672,0.054534672),
(10,2,3,0.051505663,0.09579024),
(11,2,3,0.091847415,0.126615435),
(12,2,3,0.015322837,0.01533753),
(13,2,3,0.022314284,0.147807873),
(14,2,3,0.010887721,0.010887721),
(15,2,3,0.020903211,0.181724192),
(16,2,3,0.02174349,0.021859908),
(17,2,3,0.01265026,0.017812879),
(18,2,3,0.010451228,0.015873415),
(19,2,3,0,0.389472938),
(20,2,3,0,0.373612447),
(1,3,3,0.076993581,1),
(2,3,3,0.077042015,1),
(3,3,3,0.079767581,1),
(4,3,3,0.011548141,1),
(5,3,3,0.034535346,1),
(6,3,3,0.036044422,1),
(7,3,3,0.011817218,1),
(8,3,3,0.049265188,1),
(9,3,3,0.054534672,1),
(10,3,3,0.09579024,1),
(11,3,3,0.126615435,1),
(12,3,3,0.01533753,1),
(13,3,3,0.147807873,1),
(14,3,3,0.010887721,1),
(15,3,3,0.181724192,1),
(16,3,3,0.021859908,1),
(17,3,3,0.017812879,1),
(18,3,3,0.015873415,1),
(19,3,3,0.389472938,1),
(20,3,3,0.373612447,1);

insert into factory_metrics values
(1,'2023-09-01T12:00:00',2,0.108974359),
(1,'2023-09-02T12:00:00',2,0),
(1,'2023-09-03T12:00:00',4,0),
(1,'2023-09-04T12:00:00',0,0),
(1,'2023-09-05T12:00:00',3.5,0),
(1,'2023-09-06T12:00:00',3,0),
(1,'2023-09-07T12:00:00',2.5,0.044871795),
(1,'2023-09-08T12:00:00',0,0),
(1,'2023-09-09T12:00:00',3,0),
(1,'2023-09-10T12:00:00',3,0),
(1,'2023-09-11T12:00:00',3,0),
(1,'2023-09-12T12:00:00',2.5,0.118589744),
(1,'2023-09-13T12:00:00',0,0),
(1,'2023-09-14T12:00:00',3,0),
(1,'2023-09-15T12:00:00',3,0),
(1,'2023-09-16T12:00:00',2.5,0.163461538),
(1,'2023-09-17T12:00:00',2,0.237179487),
(1,'2023-09-18T12:00:00',2,0.147435897),
(1,'2023-09-19T12:00:00',2,0.041666667),
(1,'2023-09-20T12:00:00',2,0.195512821),
(1,'2023-09-21T12:00:00',2,0),
(1,'2023-09-22T12:00:00',0,0),
(1,'2023-09-23T12:00:00',4,0),
(1,'2023-09-24T12:00:00',3,0),
(1,'2023-09-25T12:00:00',3,0),
(1,'2023-09-26T12:00:00',3,0),
(1,'2023-09-27T12:00:00',2.5,0.189102564),
(1,'2023-09-28T12:00:00',0,0),
(1,'2023-09-29T12:00:00',2.5,0.134615385),
(1,'2023-09-30T12:00:00',0,0),
(1,'2023-10-01T12:00:00',3,0),
(1,'2023-10-02T12:00:00',2.5,0.16025641),
(2,'2023-09-01T12:00:00',2,0.25),
(2,'2023-09-02T12:00:00',0,0),
(2,'2023-09-03T12:00:00',2,0.269230769),
(2,'2023-09-04T12:00:00',2,0.201923077),
(2,'2023-09-05T12:00:00',2,0.153846154),
(2,'2023-09-06T12:00:00',2,0.067307692),
(2,'2023-09-07T12:00:00',2,0.259615385),
(2,'2023-09-08T12:00:00',2,0.048076923),
(2,'2023-09-09T12:00:00',2,0.298076923),
(2,'2023-09-10T12:00:00',2,0.298076923),
(2,'2023-09-11T12:00:00',2,0.384615385),
(2,'2023-09-12T12:00:00',2,0.25),
(2,'2023-09-13T12:00:00',2,0.173076923),
(2,'2023-09-14T12:00:00',2,0.221153846),
(2,'2023-09-15T12:00:00',2,0.173076923),
(2,'2023-09-16T12:00:00',2,0.288461538),
(2,'2023-09-17T12:00:00',2,0.105769231),
(2,'2023-09-18T12:00:00',2,0.153846154),
(2,'2023-09-19T12:00:00',2,0.192307692),
(2,'2023-09-20T12:00:00',2,0.298076923),
(2,'2023-09-21T12:00:00',0,0),
(2,'2023-09-22T12:00:00',2,0.307692308),
(2,'2023-09-23T12:00:00',2,0.307692308),
(2,'2023-09-24T12:00:00',2,0.288461538),
(2,'2023-09-25T12:00:00',2,0.278846154),
(2,'2023-09-26T12:00:00',2,0.336538462),
(2,'2023-09-27T12:00:00',2,0.221153846),
(2,'2023-09-28T12:00:00',2,0.192307692),
(2,'2023-09-29T12:00:00',2,0.211538462),
(2,'2023-09-30T12:00:00',2,0.182692308),
(2,'2023-10-01T12:00:00',2,0.25),
(2,'2023-10-02T12:00:00',2,0.134615385),
(3,'2023-09-01T12:00:00',0,0),
(3,'2023-09-02T12:00:00',2.5,0.166666667),
(3,'2023-09-03T12:00:00',0,0),
(3,'2023-09-04T12:00:00',2.5,0.198717949),
(3,'2023-09-05T12:00:00',0,0),
(3,'2023-09-06T12:00:00',0,0),
(3,'2023-09-07T12:00:00',3.5,0),
(3,'2023-09-08T12:00:00',0,0),
(3,'2023-09-09T12:00:00',3,0.237179487),
(3,'2023-09-10T12:00:00',0,0),
(3,'2023-09-11T12:00:00',2.5,0.275641026),
(3,'2023-09-12T12:00:00',0,0),
(3,'2023-09-13T12:00:00',2.5,0.275641026),
(3,'2023-09-14T12:00:00',0,0),
(3,'2023-09-15T12:00:00',2.5,0.102564103),
(3,'2023-09-16T12:00:00',0,0),
(3,'2023-09-17T12:00:00',2.5,0.294871795),
(3,'2023-09-18T12:00:00',0,0),
(3,'2023-09-19T12:00:00',2.5,0.192307692),
(3,'2023-09-20T12:00:00',0,0),
(3,'2023-09-21T12:00:00',2.5,0.198717949),
(3,'2023-09-22T12:00:00',0,0),
(3,'2023-09-23T12:00:00',2.5,0.166666667),
(3,'2023-09-24T12:00:00',0,0),
(3,'2023-09-25T12:00:00',0,0),
(3,'2023-09-26T12:00:00',3.5,0),
(3,'2023-09-27T12:00:00',0,0),
(3,'2023-09-28T12:00:00',3,0.141025641),
(3,'2023-09-29T12:00:00',0,0),
(3,'2023-09-30T12:00:00',2.5,0.179487179),
(3,'2023-10-01T12:00:00',0,0),
(3,'2023-10-02T12:00:00',2.5,0.275641026),
(1,'2023-10-03T12:00:00',2,0.067307692),
(1,'2023-10-04T12:00:00',0,0),
(1,'2023-10-05T12:00:00',3,0),
(1,'2023-10-06T12:00:00',3,0),
(1,'2023-10-07T12:00:00',3,0),
(1,'2023-10-08T12:00:00',3,0),
(1,'2023-10-09T12:00:00',3.5,0),
(1,'2023-10-10T12:00:00',3.5,0),
(1,'2023-10-11T12:00:00',3,0),
(1,'2023-10-12T12:00:00',2.5,0.064102564),
(1,'2023-10-13T12:00:00',2,0.041666667),
(1,'2023-10-14T12:00:00',0,0),
(1,'2023-10-15T12:00:00',3,0),
(1,'2023-10-16T12:00:00',3,0),
(1,'2023-10-17T12:00:00',0,0),
(1,'2023-10-18T12:00:00',3.5,0),
(1,'2023-10-19T12:00:00',3,0),
(1,'2023-10-20T12:00:00',0,0),
(1,'2023-10-21T12:00:00',4.5,0),
(1,'2023-10-22T12:00:00',3,0),
(1,'2023-10-23T12:00:00',3,0),
(1,'2023-10-24T12:00:00',3,0),
(1,'2023-10-25T12:00:00',2.5,0.147435897),
(1,'2023-10-26T12:00:00',2,0),
(1,'2023-10-27T12:00:00',0,0),
(1,'2023-10-28T12:00:00',5,0),
(1,'2023-10-29T12:00:00',3,0),
(2,'2023-10-03T12:00:00',0,0),
(2,'2023-10-04T12:00:00',0,0),
(2,'2023-10-05T12:00:00',4,0),
(2,'2023-10-06T12:00:00',3,0),
(2,'2023-10-07T12:00:00',3.5,0),
(2,'2023-10-08T12:00:00',3,0),
(2,'2023-10-09T12:00:00',5,0),
(2,'2023-10-10T12:00:00',4,0),
(2,'2023-10-11T12:00:00',0,0),
(2,'2023-10-12T12:00:00',4.5,0),
(2,'2023-10-13T12:00:00',3,0),
(2,'2023-10-14T12:00:00',2.5,0.009615385),
(2,'2023-10-15T12:00:00',2,0.076923077),
(2,'2023-10-16T12:00:00',0,0),
(2,'2023-10-17T12:00:00',3,0),
(2,'2023-10-18T12:00:00',0,0),
(2,'2023-10-19T12:00:00',0,0),
(2,'2023-10-20T12:00:00',0,0),
(2,'2023-10-21T12:00:00',6,0),
(2,'2023-10-22T12:00:00',2.5,0.057692308),
(2,'2023-10-23T12:00:00',0,0),
(2,'2023-10-24T12:00:00',3,0),
(2,'2023-10-25T12:00:00',2.5,0.057692308),
(2,'2023-10-26T12:00:00',0,0),
(2,'2023-10-27T12:00:00',4,0),
(2,'2023-10-28T12:00:00',3,0),
(2,'2023-10-29T12:00:00',3,0),
(3,'2023-10-03T12:00:00',0,0),
(3,'2023-10-04T12:00:00',3,0),
(3,'2023-10-05T12:00:00',3,0.019230769),
(3,'2023-10-06T12:00:00',0,0),
(3,'2023-10-07T12:00:00',0,0),
(3,'2023-10-08T12:00:00',0,0),
(3,'2023-10-09T12:00:00',0,0),
(3,'2023-10-10T12:00:00',0,0),
(3,'2023-10-11T12:00:00',5,0),
(3,'2023-10-12T12:00:00',3.5,0),
(3,'2023-10-13T12:00:00',0,0),
(3,'2023-10-14T12:00:00',3,0.211538462),
(3,'2023-10-15T12:00:00',0,0),
(3,'2023-10-16T12:00:00',2.5,0.205128205),
(3,'2023-10-17T12:00:00',0,0),
(3,'2023-10-18T12:00:00',3,0),
(3,'2023-10-19T12:00:00',5,0),
(3,'2023-10-20T12:00:00',3.5,0),
(3,'2023-10-21T12:00:00',4,0),
(3,'2023-10-22T12:00:00',0,0),
(3,'2023-10-23T12:00:00',3.5,0),
(3,'2023-10-24T12:00:00',0,0),
(3,'2023-10-25T12:00:00',3,0.185897436),
(3,'2023-10-26T12:00:00',0,0),
(3,'2023-10-27T12:00:00',0,0),
(3,'2023-10-28T12:00:00',0,0),
(3,'2023-10-29T12:00:00',4,0);
