DROP DATABASE IF EXISTS market_db; 
CREATE DATABASE market_db;

USE market_db;
CREATE TABLE member 
( mem_id  		CHAR(8) NOT NULL PRIMARY KEY,
  mem_name    	VARCHAR(10) NOT NULL, 
  mem_number    INT NOT NULL,  
  addr	  		CHAR(2) NOT NULL,
  phone1		CHAR(3), 
  phone2		CHAR(8), 
  height    	SMALLINT,  
  debut_date	DATE  
);
CREATE TABLE buy 
(  num 		INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
   mem_id  	CHAR(8) NOT NULL,
   prod_name 	CHAR(6) NOT NULL, 
   group_name 	CHAR(4)  , 
   price     	INT  NOT NULL, 
   amount    	SMALLINT  NOT NULL, 
   FOREIGN KEY (mem_id) REFERENCES member(mem_id)
);

INSERT INTO member VALUES('TWC', 'Twice', 9, 'S', '02', '11111111', 167, '2015-10-19');
INSERT INTO member VALUES('BLK', 'Black', 4, 'KN', '055', '22222222', 163, '2016-08-08');
INSERT INTO member VALUES('WMN', 'Girl', 6, 'KK', '031', '33333333', 166, '2015-01-15');
INSERT INTO member VALUES('OMY', 'Ohmy', 7, 'S', NULL, NULL, 160, '2015-04-21');
INSERT INTO member VALUES('GRL', 'Girl', 8, 'S', '02', '44444444', 168, '2007-08-02');
INSERT INTO member VALUES('ITZ', 'Itzy', 5, 'KN', NULL, NULL, 167, '2019-02-12');
INSERT INTO member VALUES('RED', 'Redv', 4, 'KB', '054', '55555555', 161, '2014-08-01');
INSERT INTO member VALUES('APN', 'Apink', 6, 'KK', '031', '77777777', 164, '2011-02-10');
INSERT INTO member VALUES('SPC', 'Space', 13, 'S', '02', '88888888', 162, '2016-02-25');
INSERT INTO member VALUES('MMU', 'Mama', 4, 'JN', '061', '99999999', 165, '2014-06-19');

INSERT INTO buy VALUES(NULL, 'BLK', 'wl', NULL, 30, 2);
INSERT INTO buy VALUES(NULL, 'BLK', 'mcp', 'dg', 1000, 1);
INSERT INTO buy VALUES(NULL, 'APN', 'ipo', 'dg', 200, 1);
INSERT INTO buy VALUES(NULL, 'MMU', 'ipo', 'dg', 200, 5);
INSERT INTO buy VALUES(NULL, 'BLK', 'jn', 'fs', 50, 3);
INSERT INTO buy VALUES(NULL, 'MMU', 'ap', 'dg', 80, 10);
INSERT INTO buy VALUES(NULL, 'GRL', 'SQL', 'bk', 15, 5);
INSERT INTO buy VALUES(NULL, 'APN', 'SQL', 'bk', 15, 2);
INSERT INTO buy VALUES(NULL, 'APN', 'jn', 'fs', 50, 1);
INSERT INTO buy VALUES(NULL, 'MMU', 'jn', NULL, 30, 1);
INSERT INTO buy VALUES(NULL, 'APN', 'SQL', 'bk', 15, 1);
INSERT INTO buy VALUES(NULL, 'MMU', 'wl', NULL, 30, 4);

select * from member ;

select mem_name, addr, phone1 from member;

select * from buy;
select num, mem_id, prod_name from buy
limit 5;

select * from member;

select *
	from member
		where addr = "kk";

select *
	from member
		where mem_name = 'black';
 
select *
	from member
		where mem_number >= 6;
    
select * from member
	where mem_number >= 5
    and height >= 165;
    
select * from member
	where mem_number >= 5
    or height >= 165;
    
select * from member
	where height between 162 and 165;

select * from member
	where height > 162 and height <= 165;