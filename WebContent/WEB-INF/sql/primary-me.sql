use test;

-- 기본키, 주키, primary key
-- not null + unique

CREATE TABLE mytable19 (
	col1 INT NOT NULL UNIQUE,
    col2 INT
    );
    
    DESC mytable19;
    
CREATE TABLE mytable20 (
	col1 INT PRIMARY KEY,
    col2 INT
    );
    DESC mytable20;
    
-- table 19와 table20은 같다.
-- 모든 테이블에 기본키는 들어갈 것.
-- 어떤 테이블을 수정할때, 하나의 레코드를 지우는 방법이 기본키
-- update, delete 할때 사용
-- table을 만들때 어떤 column을 기본키로 설정할지 잘 결정

CREATE TABLE mytable21Student(
	-- primary key를 사용할 컬럼이 없을 때???
    -- 임의의 컬럼을 넣어주면 된다.
    -- 보통 id, 타입은 integer를 넣는다
    -- auto_increment를 같이 넣어주면 순차로 늘어나면서 부여된다.
    id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
    birth DATE NOT NULL,
    address VARCHAR(255) NOT NULL
);

DESC mytable21Student;

INSERT INTO mytable21Student (name, birth, address) VALUES ('kin' , '2000-10-10', 'kiki');
SELECT * FROM mytable21Student;

DESC Customers;
DESC Suppliers;
DESC Employees;








