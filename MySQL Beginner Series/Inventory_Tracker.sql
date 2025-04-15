
/*
Real-Life Mini Project Name: "Inventory Tracker"
Project By: Mule Samuel
Date: 15/April/2025

I want to build an Inventory Tracker System for a small electronics store.

It will have need 3 tables:

		1. products - [id, name, category, price and stock]

		2. suppliers - [id, name and contact]

		3. stock_entries (for recording incoming stock) - [product_id, supplier_id, quantity and date_recieved
  
I Inserted Sample Data
Filling the tables with 2–3 entries each.

And did the following 

Show all products with stock less than 20.

List all suppliers and what they supplied.

Calculate total stock per product.


*/
DROP DATABASE IF EXISTS Inventory_DB;
CREATE DATABASE Inventory_DB;
USE Inventory_DB;


CREATE TABLE product(
product_id INT PRIMARY KEY,
p_name VARCHAR(100),
category VARCHAR(50),
price INT,
stock INT);

CREATE TABLE supplier(
supplier_id INT PRIMARY KEY,
s_name VARCHAR(100),
contact VARCHAR(20)
);

CREATE TABLE stock_entries(
  id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  supplier_id INT,
  quantity INT,
  date_recieved DATE,
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);


INSERT INTO product (product_id, p_name, category, price, stock) VALUES
(1, 'Iphone 12', 'Phones', 350, 15),
(2, 'Laptop Pro', 'Computers', 800, 25),
(3, 'Pc Mouse', 'Accessories', 20, 10);

INSERT INTO supplier (supplier_id, s_name, contact) VALUES
(1, 'Ceasor Samsung', '+256701234567'),
(2, 'Nick Gadget', '+256709876543'),
(3, 'Norbstar Gadget', '+256707382747');

INSERT INTO stock_entries (product_id, supplier_id, quantity, date_recieved) VALUES
(1, 1, 20, '2025-04-10'),
(2, 1, 10, '2025-04-11'),
(3, 2, 30, '2025-04-12'),
(1, 2, 5, '2025-04-13');

SELECT *
FROM supplier;

-- Show all products with stock less than 20
SELECT * FROM product
WHERE stock < 20;

-- List all suppliers and what they supplied
SELECT s_name AS supplier_name, p_name AS product_name, se.quantity, se.date_recieved
FROM stock_entries se
JOIN supplier s ON se.supplier_id = s.supplier_id
JOIN product p ON se.product_id = p.product_id;

-- Calculate total stock per product (from entries)
SELECT p_name, SUM(se.quantity) AS total_supplied
FROM stock_entries se
JOIN product p ON se.product_id = p.product_id
GROUP BY p_name;








