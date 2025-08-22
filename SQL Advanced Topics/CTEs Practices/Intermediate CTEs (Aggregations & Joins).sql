----Calculate total sales revenue per book

WITH revenue AS (
	SELECT book_id, SUM(copies_sold*price_per_copy) AS total_sales  ---group by won't work if we remove "sum()"
	FROM sales
	---join books on sales.book_id = books.book_id
	GROUP BY book_id
)
SELECT b.title, r.total_sales 
FROM revenue r
JOIN books b ON b.book_id = r.book_id;

---calculate total copies sold each author

