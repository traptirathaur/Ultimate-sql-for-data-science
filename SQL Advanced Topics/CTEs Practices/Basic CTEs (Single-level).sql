---# refer the content from "Subqueries Practice" folder

--- List all books with their author names
WITH book_authors AS (
    SELECT b.title, a.name as author_name
    FROM books b
    JOIN authors a ON b.author_id = a.author_id
  )
SELECT *
FROM book_authors;

---List all books published after 1950
WITH recent_books AS (
  SELECT title, publication_year
  FROM books
  WHERE publication_year > 1950
)
SELECT *
FROM recent_books;
