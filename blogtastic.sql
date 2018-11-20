CREATE TABLE categories (
	id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cat VARCHAR(20)
) DEFAULT CHARACTER SET utf8 Engine=InnoDB;

CREATE TABLE entries (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cat_id TINYINT,
	dateposted DATETIME,
	subject VARCHAR(100),
	body TEXT
) DEFAULT CHARACTER SET utf8 Engine=InnoDB;

CREATE TABLE comments (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	blog_id INT,
	dateposted DATETIME,
	name VARCHAR(50),
	comment TEXT
) DEFAULT CHARACTER SET utf8 Engine=InnoDB;

CREATE TABLE logins (
	id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(10),
	password VARCHAR(10)
) DEFAULT CHARACTER SET utf8 Engine=InnoDB;

INSERT INTO categories (id, cat) VALUES
(1, 'Life'),
(2, 'Work'),
(3, 'Music'),
(4, 'Food');

INSERT INTO entries (id, cat_id, dateposted, subject, body) VALUES
(1, 1, '2018-11-05 23:45:54', 'Welcome to my blog!', 'This is my very first entry in my brand new blog.'),
(2, 1, '2018-11-05 23:45:54', 'Great blog!', 'I have decided this blog is: Really cool!'),
(3, 1, '2018-11-05 23:45:54', 'Unde mi-ar place sa lucrez', 'Pe moment oriunde, numai sa fie cool si nu foarte stresant.'),
(4, 3, '2018-11-05 23:45:54', 'Ce ascult acum', 'In special Ishq, iar la munca deep house.'),
(5, 3, '2018-11-05 23:45:54', 'Trance', 'Obisnuiam sa fiu foarte pe Trance, not really lately.'),
(6, 4, '2018-11-05 23:45:54', 'Reteta: Salata de fasole', 'Cand o sa am timp o sa introduc aici reteta pentru salata de fasole. Because I can.'),
(7, 4, '2018-11-05 23:45:54', 'Mancarea preferata', 'Mai multe, dar momentan: paste carbonara, ciorba de burta sau perisoare, ceafa de porc, inghetata.');

INSERT INTO comments (id, blog_id, dateposted, name, comment) VALUES
(1, 1, '2018-11-05 23:45:54', 'Bob', 'Welcome!'),
(2, 1, '2018-11-05 23:35:54', 'Jim', 'I hope you have lots of fun!'),
(3, 5, '2018-11-05 23:45:54', 'Cip', 'Really?'),
(4, 7, '2018-11-05 23:45:54', 'Cip', 'N-am tenisi.');


INSERT INTO logins (id, username, password) VALUES
(1, 'Admin', 'secret');
