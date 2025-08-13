-- Create the database
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Books (COMMENT
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(130) NOT NULL,
author_id INT NOT NULL,
price DOUBLE NOT NULL,
publication_date DATE,
-- Define foreign key constraint
CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers (COMMENT
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
address TEXT)

CREATE TABLE Orders (COMMENT
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
order_date DATE NOT NULL,
-- Define foreign key constraint
CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

--create order details
CREATE TABLE Order_Details (COMMENT
order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
book_id INT NOT NULL,
quantity DOUBLE NOT NULL,
-- foreign key constraints
CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

