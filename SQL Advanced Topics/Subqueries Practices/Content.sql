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

---# insert data into tables

INSERT INTO authors VALUES
(1, 'George Orwell', 'British'),
(2, 'Harper Lee', 'American'),
(3, 'J.K. Rowling', 'British');

INSERT INTO books VALUES
(1, '1984', 1, 'Dystopian', 1949),
(2, 'Animal Farm', 1, 'Political Satire', 1945),
(3, 'To Kill a Mockingbird', 2, 'Fiction', 1960),
(4, 'Harry Potter and the Sorcerer''s Stone', 3, 'Fantasy', 1997),
(5, 'Harry Potter and the Chamber of Secrets', 3, 'Fantasy', 1998);

INSERT INTO sales VALUES
(1, 1, '2025-01-15', 500, 9.99),
(2, 2, '2025-02-10', 300, 8.99),
(3, 3, '2025-03-22', 200, 10.99),
(4, 4, '2025-04-05', 1500, 12.99),
(5, 4, '2025-05-10', 1800, 12.99),
(6, 5, '2025-06-15', 1200, 14.99);

----# display data
exec sp_help authors;
	---# each table separately
select * from authors;
select * from books;
select * from sales;
	---# all in one(such as we see through join)
select * from authors, books, sales;

