use test;

CREATE TABLE mytable12(
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL

);

SELECT * FROM mytable12;
INSERT INTO mytable12 (col1, col2) VALUES('abc' , 'def');
INSERT INTO mytable12 (col2) VALUES('def');
INSERT INTO mytable12 (col1) VALUES('asd');
INSERT INTO mytable12 (col2) VALUES('123');

CREATE TABLE mytable13(
	col1 VARCHAR(255),
    col2 VARCHAR(255) UNIQUE
);

SELECT * FROM mytable13;
INSERT INTO mytable13 (col1, col2) VALUES('123', '1234');
INSERT INTO mytable13 (col1, col2) VALUES('123', '1234');
INSERT INTO mytable13 (col1, col2) VALUES('1234', '123');
INSERT INTO mytable13 (col1, col2) VALUES('123', '122');
INSERT INTO mytable13 (col1) VALUES('123');
-- null은 아예 값으로 취급 안함. 보장은 못함
INSERT INTO mytable13 (col1, col2) VALUES('123', '1234');
-- not null  unique는 같이 사용 가능

CREATE TABLE mytable14 (
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL UNIQUE
    );
CREATE TABLE mytable15(
	col1 VARCHAR(255),
    col2 VARCHAR(255) UNIQUE
);    

DROP TABLE mytable15;
SELECT * FROM mytable14;
SELECT * FROM mytable15;

CREATE TABLE mytable16(
	col1 INT,
    col2 INT CHECK(col2>100 AND col2<=200)
);

INSERT INTO mytable16 (col1, col2) VALUES(100,150);
INSERT INTO mytable16 (col1, col2) VALUES(100,201);
SELECT * FROM mytable16;
INSERT INTO mytable16 (col1, col2) VALUES(100,99);

CREATE TABLE mytable18(
	col1 INT DEFAULT 0,
    col2 VARCHAR(255) DEFAULT 'a',
    -- 현재시간을 나타낼 때에 DATE를 쓰면 warning이 뜨니
    -- DATE 대신 DATETIME을 사용할것.
    col3 DATETIME DEFAULT NOW()
    );
    
INSERT INTO mytable17 VALUES();
SELECT * FROM mytable17;

INSERT INTO mytable17 (col3) VALUES('2021-11-21');
INSERT INTO mytable17 (col1) VALUES(21);

DESC mytable17;

DESC mytable14;


INSERT INTO mytable18 VALUES();
SELECT * FROM mytable18;




