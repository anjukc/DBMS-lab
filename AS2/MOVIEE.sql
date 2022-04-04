CREATE DATABASE MOVIEE;
USE MOVIEE;
CREATE TABLE actor(act_id int,act_name char(20),act_gender char(15));
INSERT INTO actor(act_id,act_name,act_gender)VALUES(101,'LECAPRICO','MALE');
INSERT INTO actor(act_id,act_name,act_gender)VALUES(102,'STUART','MALE');
INSERT INTO actor(act_id,act_name,act_gender)VALUES(103,'SAM','MALE');
CREATE TABLE director(dir_id int,dir_Name char(20),dir_Phone int);
INSERT INTO director(dir_id,dir_Name,dir_Phone)VALUES(202,'HITCHCOCK',8824516620);
INSERT INTO director(dir_id,dir_Name,dir_Phone)VALUES(203,'CHRISTOPHER',8824516642);
INSERT INTO director(dir_id,dir_Name,dir_Phone)VALUES(204,'SPILSBERG',8824512344);
CREATE TABLE MOVIES(Mov_id INT,Mov_Title CHAR(20), Mov_Year INT, Mov_Lang CHAR(20), Dir_id INT);
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id)VALUES(301,'INCEPTION',2010,'ENGLISH','201');
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id)VALUES(302,'VERTIGO',1958,'ENGLISH','202');
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id)VALUES(301,'AVATAR',2009,'ENGLISH','203');
CREATE TABLE MOVIE_CAST(Act_id INT,Mov_id INT,Role CHAR(20) );
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(101,301,'COBB');
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(102,302,'JOHN');
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(103,303,'JAKE');
CREATE TABLE RATING(Mov_id INT,Rev_Stars FLOAT(10)); 
INSERT INTO RATING(Mov_id,Rev_Stars)VALUES(301,4.5);
INSERT INTO RATING(Mov_id,Rev_Stars)VALUES(302,3.5);
INSERT INTO RATING(Mov_id,Rev_Stars)VALUES(303,4);
SELECT MOVIES






