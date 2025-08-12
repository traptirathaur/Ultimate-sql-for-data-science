/* Dataset- Books, Authors, Sales */

---# CREATE DATABASE subqueries;
---#  USE subqueries;

CREATE TABLE authors(
	author_id INT PRIMARY KEY,
	name VARCHAR(100),
	nationality Varchar(50)
);
CREATE TABLE books(
	book_id INT PRIMARY KEY,
	title VARCHAR(100),
	author_id INT,
	genre VARCHAR(50),
	publication_year INT,
	FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
CREATE TABLE sales(
	sales_id INT PRIMARY KEY,
	book_id INT,
	sales_date DATE,
	copies_sold INT,
	price_per_copy DECIMAL(7,2),
	FOREIGN KEY (book_id) REFERENCES books(book_id)
);
