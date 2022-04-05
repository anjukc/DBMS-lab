create database temp;
use temp;
create table student(name char(20),mark int);
insert into student(name,mark)values('anju',95);
insert into student(name,mark)values('dwany',97);
insert into student(name,mark)values('raichel',98);
insert into student(name,mark)values('anna',98);
insert into student(name,mark)values('mary',98);
select*from student;
COMMIT;
ROLLBACK;
update student
SET name='feba' WHERE name='anna';
