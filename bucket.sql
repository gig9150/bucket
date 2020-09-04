SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS bucket_like;
DROP TABLE IF EXISTS bucket;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS follow;
DROP TABLE IF EXISTS free_board_comment;
DROP TABLE IF EXISTS free_board;
DROP TABLE IF EXISTS member;




/* Create Tables */

CREATE TABLE bucket
(
	bucket_id int(11) NOT NULL AUTO_INCREMENT,
	category_id int(11) NOT NULL,
	member_id varchar(30) NOT NULL,
	title varchar(100),
	content text,
	PRIMARY KEY (bucket_id)
);


CREATE TABLE bucket_like
(
	like_id int(11) NOT NULL AUTO_INCREMENT,
	member_id varchar(30) NOT NULL,
	bucket_id int(11) NOT NULL,
	PRIMARY KEY (like_id)
);


CREATE TABLE category
(
	category_id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(30) NOT NULL,
	PRIMARY KEY (category_id)
);


CREATE TABLE follow
(
	follow_id int(1) NOT NULL AUTO_INCREMENT,
	member_id varchar(30) NOT NULL,
	to_member_id varchar(30),
	date date,
	PRIMARY KEY (follow_id)
);


CREATE TABLE free_board
(
	free_board_id int(11) NOT NULL,
	title varchar(100),
	content text,
	image varchar(100),
	regdate date,
	member_id varchar(30) NOT NULL,
	PRIMARY KEY (free_board_id)
);


CREATE TABLE free_board_comment
(
	comment_id int(11) NOT NULL AUTO_INCREMENT,
	free_board_id int(11) NOT NULL,
	member_id varchar(30) NOT NULL,
	content  varchar(100),
	PRIMARY KEY (comment_id)
);


CREATE TABLE member
(
	member_id varchar(30) NOT NULL,
	pwd varchar(30),
	email varchar(50),
	phone varchar(30),
	image varchar(100),
	status int(11) NOT NULL,
	regdate date,
	PRIMARY KEY (member_id)
);



/* Create Foreign Keys */

ALTER TABLE bucket_like
	ADD FOREIGN KEY (bucket_id)
	REFERENCES bucket (bucket_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE bucket
	ADD FOREIGN KEY (category_id)
	REFERENCES category (category_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE free_board_comment
	ADD FOREIGN KEY (free_board_id)
	REFERENCES free_board (free_board_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE bucket
	ADD FOREIGN KEY (member_id)
	REFERENCES member (member_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE bucket_like
	ADD FOREIGN KEY (member_id)
	REFERENCES member (member_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE follow
	ADD FOREIGN KEY (member_id)
	REFERENCES member (member_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE free_board
	ADD FOREIGN KEY (member_id)
	REFERENCES member (member_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE free_board_comment
	ADD FOREIGN KEY (member_id)
	REFERENCES member (member_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



