CREATE DATABASE college;
use college;
CREATE TABLE Dept(DEPTNO INT,DNAME varchar(20),LOC varchar(20));
INSERT INTO Dept(DEPTNO,DNAME,LOC)VALUES(101,'MCA','KOLLAM');
INSERT INTO Dept(DEPTNO,DNAME,LOC)VALUES(102,'M.TECH','TVM');
INSERT INTO Dept(DEPTNO,DNAME,LOC)VALUES(103,'MSC','ALAPUZHA');
INSERT INTO dEPT(DEPTNO,DNAME,LOC)VALUES(104,'MA','KANNUR');
SELECT*FROM Dept;
ALTER TABLE Dept RENAME TO department;
ALTER TABLE department ADD PINCODE VARCHAR(10);
ALTER TABLE department MODIFY PINCODE VARCHAR(10) NOT NULL;
SELECT*FROM department;
ALTER TABLE department DROP COLUMN PINCODE;
SELECT*FROM department;
ALTER TABLE department change DNAME DEPT_NAME VARCHAR(20);
SELECT*FROM department;
USE college;
ALTER TABLE department MODIFY LOC CHAR(10);
SELECT*FROM department;
DROP table department;
SELECT*FROM department;

