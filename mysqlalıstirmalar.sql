CREATE TABLE customers (
    -> customer_id INT PRIMARY KEY,
    -> first_name VARCHAR(50) NOT NULL,
    -> last_name VARCHAR(50) NOT NULL,
    -> country VARCHAR(50) NOT NULL,
    -> score INT
    -> );
2.INSERT INTO customers (customer_id,first_name,last_name,country,score) VALUES
    -> (1,'Maria','Cramer','Germany',350),
    -> (2,'John','Steel','USA',900),
    -> (3,'Georg','Pipps','UK',750),
    -> (4,'Martin','Müller','Germany',500),
    -> (5,'Peter','Franken','USA',NULL),
    -> ;
3.CREATE TABLE orders (
    -> order_id INT PRIMARY KEY,
    -> customer_id INT,
    -> order_date DATE ,
    -> quantity INT
    -> );
4.INSERT INTO orders (order_id,customer_id,order_date,quantity)VALUES
    -> (1001,1,'2021-01-21',250),
    -> (1002,2,'2021-04-05',1150),
    -> (1003,3,'2021-06-18',500),
    -> (1004,6,'2021-08-31',750)
    -> ;
5.select
    -> customers.customer_id,
    -> customers.first_name,
    -> orders.order_id,
    -> orders.quantity
    -> from customers
    -> INNER JOIN orders
    -> ON customers.customer_id= orders.customer_id
    -> ;
6.select
    -> c.first_name,
    -> o.quantity
    -> from customers c
    -> INNER JOIN orders o
    -> ON c.customer_id=o.customer_id
    -> WHERE c.country='USA'
    -> ORDER BY o.quantity DESC ;
7.select
    -> c.first_name,
    -> c.country,
    -> o.order_date
    -> from customers as c
    -> INNER JOIN orders as o
    -> ON c.customer_id=o.customer_id
    -> WHERE o.order_date>'2021-06-01'
    -> ;
8.select
    -> c.first_name,
    -> c.country,
    -> o.quantity
    -> from customers c
    -> LEFT JOIN orders o
    -> ON c.customer_id=o.customer_id
    -> ;

9.select
    -> c.first_name,
    -> c.country
    -> from customers c
    -> LEFT JOIN orders o
    -> ON c.customer_id=o.customer_id
    -> WHERE o.order_id IS NULL
    -> ;

10.select
    -> c.first_name,
    -> SUM(o.quantity) as toplami_miktari
    -> from customers c
    -> INNER JOIN orders o
    -> ON c.customer_id=o.customer_id
    -> group by c.first_name;

11. select
    -> c.country,
    -> COUNT(o.order_id)
    -> from customers c
    -> INNER JOIN orders o
    -> ON c.customer_id=o.customer_id
    -> group by c.country ;

12.select
    -> c.country,
    -> AVG(o.quantity)
    -> from customers c
    -> INNER JOIN orders o
    -> ON c.customer_id=o.customer_id
    -> group by c.country ;

13.UPDATE customers
    -> SET score=1000
    -> WHERE customer_id=2 ;

14.DELETE FROM customers
    -> WHERE customer_id=4;



