create database  instagram ;

use instagram ;

create table users (
id INT PRIMARY KEY ,
age int ,
name VARCHAR(30) not null ,
email VARCHAR (30) Unique,
follower INT default 0 ,
following INT,
constraint age_check check (age >=13)
);

INSERT INTO  USERS (id , age , name , email , follower , following )values
(1 , 14 ,"adam" , "adam@123" , 123 ,123 ),
(2 , 16 ,"eve" , "eve@1543" , 312 , 32);


create table post(
id INT  primary key ,
Content VARCHAR(100) ,
user_id  INT  ,
foreign key (user_id) references users(id)
);

INSERT INTO post (id , Content , user_id)values
(01 , "helloWorld" , 1),
(02, "TATA" , 2);

-- select * from post;
-- select * from users ;
select DISTINCT * from (post , users);
