create database if  not exists mycollege;

use mycollege;

create table  teachers(
id INT primary KEY,
Name varchar(50),
Subject varchar(50),
salary int

);

insert into  teachers(id , Name , Subject , salary) values
(23,"ajay", "math", 5000),
(47, "bharati" , "english", 60000) ,
(18, "chetan", "chemistry",45000) ,
(9 , "divya", "physics",75000) ;

select * from teachers;

select * from teachers where salary > 55000;

alter table teachers
change column salary ctc int;

SET SQL_SAFE_UPDATES = 0;
update teachers set ctc = ctc + ctc*0.25;

alter table teachers
add column city varchar(50) default "Gurgaon";

alter table teachers 
drop column ctc ;



