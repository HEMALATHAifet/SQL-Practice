--DDL
--Create a new table
CREATE TABLE test_emp (
    emp_id NUMBER(4),
    emp_name VARCHAR2(20),
    salary NUMBER(8,2)
);
--Alter table(Add column)
ALTER TABLE test_emp ADD department VARCHAR2(20);

--Alter table (Modify column)
ALTER TABLE test_emp MODIFY emp_name VARCHAR2(30);

--Drop table
DROP TABLE test_emp;

--DML
--Insert row
INSERT INTO test_emp (emp_id, emp_name, salary, department)
VALUES (1, 'John', 3000, 'HR');

--update row
UPDATE test_emp
SET salary = 3500
WHERE emp_id = 1;

--delete row
DELETE FROM test_emp
WHERE emp_id = 1;

--SELECT queries
--select all
SELECT * FROM emp;
--select specific columns
SELECT ename, sal, job FROM emp;

--WHERE(filtering)
SELECT ename, sal
FROM emp
WHERE sal > 2000;

--ORDERBY
SELECT ename, sal
FROM emp
ORDER BY sal DESC;

--DISTINCT
SELECT DISTINCT job FROM emp;

--LIMIT / OFFSET (Oracle uses ROWNUM or FETCH)
-- First 5 rows
SELECT * FROM emp FETCH FIRST 5 ROWS ONLY;

-- Skip first 5, then fetch next 5
SELECT * FROM emp OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;




