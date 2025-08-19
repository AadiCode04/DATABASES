create database  query2 ;

use query2 ;

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
(1 , 14 ,'adam' , 'adam@123' , 123 ,123 ),
(2 , 16 ,'eve', 'eve@1543' , 312 , 32),
(5, 19, 'alice', 'alice@555', 500, 50);


-- --------------------------------for asecending use ASC and for descending use DESC-----------

select name , age , follower from users
order by follower ASC;

select name , age , follower from users
order by follower desc;


 -- ------------------------------ for limit clause--------------------------------
-- SELECT name, age, email
-- FROM users 
-- WHERE age > 15
-- limit 2 ;
-- --------------------------------------------------------------------------------


create table post(
id INT  primary key ,
Content VARCHAR(100) ,
user_id  INT  ,
foreign key (user_id) references users(id)
);

INSERT INTO post (id , Content , user_id) VALUES
(1 , 'helloWorld' , 1),
(2 , 'TATA' , 2);
truncate table post;

drop table post;
truncate table USERS;


-- select * from post;
select * from users ;
select DISTINCT * from (post , users);