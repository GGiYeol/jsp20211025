use test;

DESC mytable21Student;

ALTER TABLE mytable21Student ADD COLUMN(
	height DOUBLE);
    
ALTER TABLE mytable21Student ADD COLUMN(
	weight DOUBLE,
    foot DOUBLE
);

ALTER TABLE mytable21Student CHANGE height height2 DOUBLE;

ALTER TABLE mytable21Student DROP COLUMN foot;

ALTER TABLE mytable21Student MODIFY height2 INT(50);

ALTER TABLE mytable21Student MODIFY birth DATE NULL;

UPDATE mytable21Student SET height2 = 'N/A' WHERE height2 IS NULL;