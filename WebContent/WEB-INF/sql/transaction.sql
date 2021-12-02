use test;

-- tracsaction : 하나의 업무 단위

-- 예 :  돈을 송금
-- 1. 하나의 계좌에서 출금
-- 2. 또 다른 계좌에 입금
-- 두 작업은 하나의 업무로 취급
-- ex) 하나의 작업만 이루어지고 다음 파일이 이루어지지 않았으면
-- 작업하기 전의 상태로 되돌려야함

CREATE TABLE mytable29Bank (
	id INT PRIMARY KEY AUTO_INCREMENT,
    money INT not NULL
);

INSERT INTO mytable29Bank(money) VALUES (10000),(20000);

SELECT * FROM mytable29Bank;

-- 1번 계좌에서 2번 계좌로 5000원 송금업무

-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
-- 2) 2번 계좌에 입금
UPDATE mytable29Bank SET money = 25000 WHERE id = 2;

-- 초기값 세팅
UPDATE mytable29Bank SET money = 10000 WHERE id = 1;
UPDATE mytable29Bank SET money = 20000 WHERE id = 2;

-- 중간에 돌릴 수 있어야 한다. 마리아디비는 자동반영 상태기 때문에,
-- 자동 반영을 해제해야한다.
-- auto COMMIT disable
SET autocommit = 0;

-- 다시 5000원 송금

-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
SELECT * FROM mytable29Bank;
-- 중간에 번개를 맞음(문제가 생김 => 이전 상태로 돌려야 함=> rollback 명령어를 사용.)
ROLLBACK;
SELECT * FROM mytable29Bank;

-- 2) 2번 계좌에 입금(원복 되었으니 실행이 되면 안된다)
-- UPDATE mytable29Bank SET money = 25000 WHERE id = 2;

-- 다시 5000원 송금

-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
SELECT * FROM mytable29Bank;
-- 중간에 번개를 맞음(문제가 생김 => 이전 상태로 돌려야 함=> rollback 명령어를 사용.)

-- 2) 2번 계좌에 입금(원복 되었으니 실행이 되면 안된다)
UPDATE mytable29Bank SET money = 25000 WHERE id = 2;

-- 트랜잭션은 반영하라는 명령어를 사용해야 한다.(COMMIT)
-- 3) 업무 완료 - table에 반영
COMMIT;
-- COMMIT한 이후에는 ROLLBACK을 해도 돌아가지 않는다.

-- auto commit 활성화
SET autocommit = 1;

UPDATE mytable29Bank SET money = 30000 WHERE id = 1;
ROLLBACK;



