USE test;
CREATE TABLE mymy(col1 int);
ALTER TABLE mymy RENAME mymy2;
SELECT * FROM mymy2;


CREATE TABLE mytabel10(
	col1 int,
    col2 double,
    col3 DEC(10,3),
    col4 CHAR(3),
    col5 VARCHAR(255),
    col6 DATE,
    col7 DATETIME
);

SELECT * FROM mytabel10;

CREATE TABLE mytable10(
	col1 int,
    col2 double,
    col3 DEC(10,3),
    col4 CHAR(3),
    col5 VARCHAR(255),
    col6 DATE,
    col7 DATETIME
);

SELECT * FROM mytable10;

-- JDBC37Servlet, JDBC38Servlet

DROP TABLE mytable11;

CREATE TABLE mytable11(
	col1 VARCHAR(255),
    col2 INT,
    col3 DATE
    );
    
SELECT * FROM mytable11;
ALTER TABLE mytable11 ADD col4 VARCHAR(255);
ALTER TABLE mytable11 ADD col5 VARCHAR(255), ADD col6 VARCHAR(255);
ALTER TABLE mytable11 ADD col7 VARCHAR(255);
ALTER TABLE mytable11 DROP col7;