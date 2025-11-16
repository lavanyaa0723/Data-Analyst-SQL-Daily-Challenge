CREATE DATABASE onlinebookstore;
USE onlinebookstore;

CREATE TABLE books(
book_id int primary key,
title varchar(50),
author_name char(50),
price decimal(10,2)
);
select*from books;

CREATE TABLE orders(
order_id int,
order_date date,
quantity int,
book_id int,
foreign key(book_id) references books(book_id)
);
 ALTER TABLE books ADD ISBN varchar(15) unique;
 
 DELETE from orders where order_id <50;
 
 TRUNCATE TABLE orders;

