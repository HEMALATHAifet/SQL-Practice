#  SQL Commands – Full Guide

---

## 1. CREATE

**Definition**: Used to create a new table or database object.

**Syntax**:

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

**Example**:

```sql
CREATE TABLE test_emp (
    empno NUMBER(4),
    ename VARCHAR2(20),
    sal NUMBER(8,2)
);
```

**Output**:
A new empty table `test_emp` is created.

---

## 2. DROP

**Definition**: Deletes a table (or database object) permanently.

**Syntax**:

```sql
DROP TABLE table_name;
```

**Example**:

```sql
DROP TABLE test_emp;
```

**Output**:
Table `test_emp` is deleted.

---

## 3. ALTER

**Definition**: Modifies an existing table structure.

**Syntax**:

```sql
ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE table_name MODIFY column_name datatype;
ALTER TABLE table_name DROP COLUMN column_name;
```

**Example**:

```sql
ALTER TABLE emp ADD email VARCHAR2(50);
```

**Output**:
Column `email` is added to `emp`.

---

## 4. INSERT

**Definition**: Adds new rows into a table.

**Syntax**:

```sql
INSERT INTO table_name (col1, col2, ...) VALUES (val1, val2, ...);
```

**Example**:

```sql
INSERT INTO emp (empno, ename, job, sal, deptno)
VALUES (9999, 'RAVI', 'CLERK', 1200, 20);
```

**Output**:
New row is added into `EMP`.

---

## 5. UPDATE

**Definition**: Modifies existing rows in a table.

**Syntax**:

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

**Example**:

```sql
UPDATE emp
SET sal = sal * 1.1
WHERE deptno = 30;
```

**Output**:
All employees in dept 30 get 10% salary hike.

---

## 6. DELETE

**Definition**: Removes rows from a table.

**Syntax**:

```sql
DELETE FROM table_name WHERE condition;
```

**Example**:

```sql
DELETE FROM emp WHERE ename = 'RAVI';
```

**Output**:
Row with employee name `RAVI` is deleted.

---

## 7. SELECT

**Definition**: Retrieves data from one or more tables.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name;
```

**Example**:

```sql
SELECT ename, sal FROM emp;
```

**Output**:

```
ENAME   SAL
------  ----
SMITH   800
ALLEN   1600
WARD    1250
...
```

---

## 8. WHERE

**Definition**: Filters rows based on conditions.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

**Example**:

```sql
SELECT ename, sal
FROM emp
WHERE sal > 2000;
```

**Output**:

```
ENAME   SAL
------  ----
JONES   2975
SCOTT   3000
FORD    3000
KING    5000
```

---

## 9. ORDER BY

**Definition**: Sorts the result set in ascending/descending order.

**Syntax**:

```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC|DESC];
```

**Example**:

```sql
SELECT ename, sal
FROM emp
ORDER BY sal DESC;
```

**Output**:

```
ENAME   SAL
------  ----
KING    5000
SCOTT   3000
FORD    3000
...
```

---

## 10. DISTINCT

**Definition**: Removes duplicate values from result set.

**Syntax**:

```sql
SELECT DISTINCT column_name
FROM table_name;
```

**Example**:

```sql
SELECT DISTINCT job FROM emp;
```

**Output**:

```
JOB
---------
CLERK
SALESMAN
MANAGER
ANALYST
PRESIDENT
```

---

## 11. LIMIT / OFFSET (Oracle uses FETCH/OFFSET)

**Definition**: Restricts number of rows returned (pagination).

**Syntax (Oracle 12c+):**

```sql
SELECT * FROM table_name
FETCH FIRST n ROWS ONLY;

SELECT * FROM table_name
OFFSET m ROWS FETCH NEXT n ROWS ONLY;
```

**Example 1 – First 5 rows**:

```sql
SELECT * FROM emp
FETCH FIRST 5 ROWS ONLY;
```

**Output**:
Shows first 5 employees.

**Example 2 – Skip first 5, show next 5**:

```sql
SELECT * FROM emp
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;
```

**Output**:
Shows rows 6 to 10.

---

