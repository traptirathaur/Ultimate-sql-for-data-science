---# refer the content from "Subqueries Practice" folder

---Query 1.1: Find total copies sold per book
SELECT b.title,
		SUM (s.copies_sold) OVER (PARTITION BY s.book_id) AS total_copies
FROM sales s
JOIN books b ON s.book_id = b.book_id;  

/*---above query will return book_id 4 (Harry Potter and the Sorcerer's Stone) twice  because when we use 
window fns like "SUM() Over(Partition BY column_name)", the rows are not groups. Hence, the aggregate value is repeated for every row in that partition. 
So we will be using below query to get exact output
*/
SELECT DISTINCT t.title , t.total_copies
FROM (
	SELECT b.title,
		SUM (s.copies_sold) OVER (PARTITION BY s.book_id) AS total_copies
	FROM sales s
	JOIN books b ON s.book_id = b.book_id
) t;
---Let's try a different approach
---Query 1.2: Find total copies sold per book along with sales_date, copies_sold
SELECT b.title, s.sales_date, s.copies_sold,
	SUM(s.copies_sold) OVER(PARTITION BY s.book_id) AS total_copies_sold
FROM sales s
JOIN books b ON s.book_id = b.book_id;

---Query 2: Find revenue for each sale and total revenue per book
SELECT b.title, s.sales_date, (s.copies_sold*s.price_per_copy) AS revenue,
	SUM(s.copies_sold*s.price_per_copy) OVER(PARTITION BY b.book_id) AS total_revenue
FROM sales s
JOIN books b ON s.book_id=b.book_id;


  
