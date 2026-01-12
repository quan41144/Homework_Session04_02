-- Create database Homework_session04_02
create database Homework_session04_02;
-- Create table products
create table products(
	id serial primary key,
	name varchar(50),
	category varchar(50),
	price numeric(10,2),
	stock int
);
-- insert data into products
insert into products(name, category, price, stock) values
('Laptop Dell', 'Electronics', 1500.00, 5),
('Chuột Logitech', 'Electronics', 25.50, 50),
('Bàn phím Razer', 'Electronics', 120.00, 20),
('Tủ lạnh LG', 'Home Appliances', 800.00, 3),
('Máy giặt Samsung', 'Home Appliances', 600.00, 2);
-- Add new products
select * from products;
insert into products(name, category, price, stock) values
('Điều hòa Panasonic', 'Home Appliances', 400.00, 10);
-- update stock from 'Laptop Dell'
update products set stock = 7 where name = 'Laptop Dell';
-- delete products with 0 stock
delete from products where stock = 0;
-- show products in ascending order of price
select * from products order by price asc;
-- show distinct categories
select distinct category from products;
-- show products with price from 100 to 1000
select * from products where price between 100 and 1000;
-- show products whose names contain the words 'LG' or 'Samsung'
select * from products where name ilike any (array['%LG%', '%Samsung%']);
-- show the first two products in descending order of price
select * from products order by price desc limit 2 offset 0;
-- show the second and third products
select * from products order by price desc limit 2 offset 1;