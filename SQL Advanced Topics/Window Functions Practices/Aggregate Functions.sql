---# refer the content from "Subqueries Practice" folder

---Find total copies sold per book
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


  
