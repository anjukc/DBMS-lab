CREATE DATABASE MOVIEE;
USE MOVIEE;
CREATE TABLE actor(act_id int,act_name char(20),act_gender char(15));
INSERT INTO actor(act_id,act_name,act_gender)VALUES(101,'LECAPRICO','M');
INSERT INTO actor(act_id,act_name,act_gender)VALUES(102,'STUART','M');
INSERT INTO actor(act_id,act_name,act_gender)VALUES(103,'SAM','M');
INSERT INTO ACTOR (act_id,act_name,act_gender)VALUES(104,'CHETHAN','M');
INSERT INTO ACTOR (act_id,act_name,act_gender)VALUES(105,'VIVAN','M');
CREATE TABLE director(dir_id int,dir_Name char(20),dir_Phone int);
INSERT INTO director(dir_id,dir_Name,dir_Phone)VALUES(201,'HITCHCOCK',8824516620);
INSERT INTO director(dir_id,dir_Name,dir_Phone)VALUES(202,'CHRISTOPHER',8824516642);
INSERT INTO director(dir_id,dir_Name,dir_Phone)VALUES(203,'SPILSBERG',8824512344);
INSERT INTO DIRECTOR(dir_id,dir_Name,dir_Phone) VALUES(204,'STEVEN ',918181814);
INSERT INTO DIRECTOR(dir_id,dir_Name,dir_Phone) VALUES(205,'ANAND',918181815);
CREATE TABLE MOVIES(Mov_id INT,Mov_Title CHAR(20), Mov_Year INT, Mov_Lang CHAR(20), Dir_id INT);
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id)VALUES(301,'INCEPTION',2010,'ENGLISH',202);
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id)VALUES(302,'VERTIGO',1958,'ENGLISH',201);
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id)VALUES(303,'AVATAR',2009,'ENGLISH',203);
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id) VALUES(304,'KALIYONA',2008,'KANNADA',204);
INSERT INTO MOVIES (Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id)VALUES(305,'WAR HORSE',2011,'ENGLISH',205);
INSERT INTO MOVIES(Mov_id,Mov_Title,Mov_Year,Mov_Lang,Dir_id) VALUES(306,'HOME',2012,'ENGLISH',206);

CREATE TABLE MOVIE_CAST(Act_id INT,Mov_id INT,Role CHAR(20) );
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(101,301,'COBB');
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(102,302,'JOHN');
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(103,303,'JAKE');
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(104,1001,'HERO');
INSERT INTO MOVIE_CAST(Act_id,Mov_id,Role) VALUES(103,1003,'HEROINE');
INSERT INTO MOVIE_CAST (Act_id,Mov_id,Role)VALUES(103,1002,'GUEST');
INSERT INTO MOVIE_CAST(Act_id,Mov_id,Role) VALUES(104,1004,'HERO');

CREATE TABLE RATING(Mov_id INT,Rev_Stars FLOAT(10)); 
INSERT INTO RATING(Mov_id,Rev_Stars)VALUES(301,4.5);
INSERT INTO RATING(Mov_id,Rev_Stars)VALUES(302,3.5);
INSERT INTO RATING(Mov_id,Rev_Stars)VALUES(303,4);
INSERT INTO RATING(Mov_id,Rev_Stars) VALUES(1004,4);
INSERT INTO RATING(Mov_id,Rev_Stars) VALUES(1005,3);
USE MOVIEE;
select*from movies;
SELECT MOV_TITLE FROM MOVIES WHERE Dir_id =203;
select mov_title from movies;
SELECT MOV_TITLE FROM MOVIES WHERE DIR_ID = (SELECT DIR_ID FROM DIRECTOR WHERE DIR_NAME='HITCHCOCK');
SELECT MOV_TITLE
FROM MOVIES M,MOVIE_CAST MC
WHERE M.MOV_ID=MC.MOV_ID AND ACT_ID IN (SELECT ACT_ID
FROM MOVIE_CAST GROUP BY ACT_ID
HAVING COUNT(ACT_ID)>1)
GROUP BY MOV_TITLE
HAVING COUNT(MOV_TITLE)>1;
SELECT MOV_TITLE
FROM MOVIES M,MOVIE_CAST MC
WHERE M.MOV_ID=MC.MOV_ID AND ACT_ID IN (SELECT ACT_ID FROM MOVIE_CAST GROUP BY ACT_ID HAVING COUNT(ACT_ID)>1) GROUP BY MOV_TITLE HAVING COUNT(*)>1;

