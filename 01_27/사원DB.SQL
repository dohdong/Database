/*
Created: 2022-01-27
Modified: 2022-01-27
Model: Oracle 11g Release 2
Database: Oracle 11g Release 2
*/


-- Create tables section -------------------------------------------------

-- Table dept

CREATE TABLE dept(
  deptno Number NOT NULL,
  dname Varchar2(15 ) NOT NULL,
  loc Varchar2(13 )
)
;

-- Add keys for table dept

ALTER TABLE dept ADD CONSTRAINT PK_dept PRIMARY KEY (deptno)
;

-- Table emp

CREATE TABLE emp(
  EMPNO Number NOT NULL,
  ename Varchar2(12 ) NOT NULL,
  job Varchar2(9 ),
  mgr Number,
  hiredate Date,
  sal Number(7,2),
  comm Number(7,2),
  deptno Number
)
;

-- Create indexes for table emp

CREATE INDEX IX_Relationship1 ON emp (deptno)
;

-- Add keys for table emp

ALTER TABLE emp ADD CONSTRAINT PK_emp PRIMARY KEY (EMPNO)
;


-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE emp ADD CONSTRAINT dept_emp FOREIGN KEY (deptno) REFERENCES dept (deptno)
;





